// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> getOCR(FFUploadedFile imageParam) async {
  try {
    if (imageParam.bytes == null || imageParam.bytes!.isEmpty) {
      return '';
    }

    // Use your Google Cloud Vision API key here.
    final apiKey = 'AIzaSyAeLTt7lVSx0OZoJ8FfYeAG0A5wfr3_AzI';

    final uri = Uri.parse(
      'https://vision.googleapis.com/v1/images:annotate?key=$apiKey',
    );

    final base64Image = base64Encode(imageParam.bytes!);

    final body = jsonEncode({
      'requests': [
        {
          'image': {
            'content': base64Image,
          },
          'features': [
            {
              'type': 'TEXT_DETECTION',
            }
          ],
        }
      ],
    });

    final response = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
      },
      body: body,
    );

    if (response.statusCode != 200) {
      print('OCR HTTP ERROR: ${response.statusCode}');
      print(response.body);
      return '';
    }

    final json = jsonDecode(response.body);

    final fullText =
        json['responses']?[0]?['fullTextAnnotation']?['text'] ?? '';

    print('========== RAW OCR TEXT ==========');
    print(fullText);
    print('===================================');

    // Same logic as your old ML Kit code.
    final regexKwh = RegExp(
      r'\bkWh\b',
      caseSensitive: false,
    );

    final regexElster = RegExp(
      r'elster',
      caseSensitive: false,
    );

    final regexNumber = RegExp(
      r'\d{4,}',
    );

    String? resultLine;

    // Google Vision gives us text as lines.
    final lines = fullText
        .toString()
        .split(RegExp(r'\r?\n'))
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    for (final text in lines) {
      print('OCR LINE: $text');

      if (regexKwh.hasMatch(text) || regexElster.hasMatch(text)) {
        resultLine = text;
        break;
      }
    }

    // If kWh/elster was not found,
    // search for a number with 4 or more digits.
    if (resultLine == null) {
      final match = regexNumber.firstMatch(fullText.toString());

      if (match != null) {
        resultLine = match.group(0);
      }
    }

    if (resultLine == null) {
      print('OCR RESULT: No matching value found');
      return '';
    }

    // Keep only numbers.
    final onlyDigits = resultLine.replaceAll(RegExp(r'[^0-9]'), '');

    print('OCR RESULT: $onlyDigits');

    return onlyDigits;
  } catch (e) {
    print('OCR ERROR: $e');
    return 'Error OCR: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
