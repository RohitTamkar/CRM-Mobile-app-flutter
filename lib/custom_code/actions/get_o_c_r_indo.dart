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

Future<IdcardResponseStruct?> getOCRIndo(
  FFUploadedFile imageParam,
) async {
  try {
    if (imageParam.bytes == null || imageParam.bytes!.isEmpty) {
      return null;
    }

    final apiKey = 'AIzaSyAeLTt7lVSx0OZoJ8FfYeAG0A5wfr3_AzI';

    final uri = Uri.parse(
      'https://vision.googleapis.com/v1/images:annotate?key=$apiKey',
    );

    final base64Image = base64Encode(imageParam.bytes!);

    final body = jsonEncode({
      "requests": [
        {
          "image": {
            "content": base64Image,
          },
          "features": [
            {
              "type": "TEXT_DETECTION",
            }
          ]
        }
      ]
    });

    final response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
      },
      body: body,
    );

    if (response.statusCode != 200) {
      print('OCR ERROR: ${response.body}');
      return null;
    }

    final json = jsonDecode(response.body);

    final rawText = json['responses']?[0]?['fullTextAnnotation']?['text'] ?? '';

    print('========== RAW OCR TEXT ==========');
    print(rawText);
    print('===================================');

    final lines = _normalizeLines(rawText);

    final companyName = _extractCompanyName(lines);
    final name = _extractName(lines);
    final mobile = _extractMobile(lines);
    final email = _extractEmail(lines);
    final address = _extractAddress(lines);

    print('Company Name: $companyName');
    print('Name: $name');
    print('Mobile: $mobile');
    print('Email: $email');
    print('Address: $address');
    print("result" + lines[0].toString());

    return IdcardResponseStruct(
        companyName: companyName,
        name: name,
        mobile: mobile,
        email: email,
        address: address,
        list: lines);
  } catch (e) {
    print('OCR EXCEPTION: $e');
    return null;
  }
}

// =====================================================
// NORMALIZE LINES
// =====================================================

List<String> _normalizeLines(String rawText) {
  return rawText
      .split(RegExp(r'\r?\n'))
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty)
      .toList();
}

// =====================================================
// COMPANY NAME
// =====================================================

String? _extractCompanyName(List<String> lines) {
  final labels = [
    'company name',
    'company',
    'organization',
    'organisation',
  ];

  for (int i = 0; i < lines.length; i++) {
    final current = lines[i].toLowerCase().trim();

    for (final label in labels) {
      if (current == label) {
        final value = _nextValue(lines, i);

        if (value != null) {
          return value;
        }
      }

      if (current.startsWith('$label:')) {
        return lines[i].substring(label.length + 1).trim();
      }
    }
  }

  return null;
}

// =====================================================
// NAME
// =====================================================

String? _extractName(List<String> lines) {
  final labels = [
    'name',
    'full name',
    'nama',
  ];

  for (int i = 0; i < lines.length; i++) {
    final current = lines[i].toLowerCase().trim();

    for (final label in labels) {
      if (current == label) {
        return _nextValue(lines, i);
      }

      if (current.startsWith('$label:')) {
        return lines[i].substring(label.length + 1).trim();
      }
    }
  }

  return null;
}

// =====================================================
// MOBILE
// =====================================================

String? _extractMobile(List<String> lines) {
  final mobileRegex = RegExp(
    r'(?:(?:\+?62|0)[\s\-]?)?(?:8\d{2,4})[\s\-]?\d{3,4}[\s\-]?\d{3,5}',
  );

  for (final line in lines) {
    final lower = line.toLowerCase();

    if (lower.contains('mobile') ||
        lower.contains('phone') ||
        lower.contains('tel') ||
        lower.contains('telephone') ||
        lower.contains('hp')) {
      final match = mobileRegex.firstMatch(line);

      if (match != null) {
        return match.group(0);
      }

      final digits = line.replaceAll(RegExp(r'[^0-9+]'), '');

      if (digits.length >= 9) {
        return digits;
      }
    }
  }

  // Fallback: search all lines
  for (final line in lines) {
    final match = mobileRegex.firstMatch(line);

    if (match != null) {
      return match.group(0);
    }
  }

  return null;
}

// =====================================================
// EMAIL
// =====================================================

String? _extractEmail(List<String> lines) {
  final emailRegex = RegExp(
    r'[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}',
    caseSensitive: false,
  );

  for (final line in lines) {
    final match = emailRegex.firstMatch(line);

    if (match != null) {
      return match.group(0);
    }
  }

  return null;
}

// =====================================================
// ADDRESS
// =====================================================

String? _extractAddress(List<String> lines) {
  final labels = [
    'address',
    'alamat',
  ];

  for (int i = 0; i < lines.length; i++) {
    final current = lines[i].toLowerCase().trim();

    for (final label in labels) {
      if (current == label) {
        return _nextValue(lines, i);
      }

      if (current.startsWith('$label:')) {
        return lines[i].substring(label.length + 1).trim();
      }
    }
  }

  return null;
}

// =====================================================
// GET NEXT VALUE AFTER LABEL
// =====================================================

String? _nextValue(
  List<String> lines,
  int index,
) {
  if (index + 1 >= lines.length) {
    return null;
  }

  final value = lines[index + 1].replaceFirst(RegExp(r'^[:\-]\s*'), '').trim();

  if (value.isEmpty) {
    return null;
  }

  return value;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
