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

Future<void> updateManagerUid() async {
  try {
    final outletRef = FFAppState().outletDetails.outletIdRef;
    final userId = FFAppState().userDoc.id;

    // 1️⃣ Get current user's team tree
    final userTeamTree = await queryTeamTreeRecordOnce(
      parent: outletRef,
      queryBuilder: (q) => q.where('userProfileId', isEqualTo: userId),
      singleRecord: true,
    ).then((s) => s.firstOrNull);

    if (userTeamTree == null || userTeamTree.teamHeadProfileId == null) {
      debugPrint('❌ TeamTree not found or teamHeadProfileId missing for user');
      return;
    }

    // 2️⃣ Get manager profile
    final managerProfile = await queryUserProfileRecordOnce(
      queryBuilder: (q) => q.where(
        'id',
        isEqualTo: userTeamTree.teamHeadProfileId,
      ),
      singleRecord: true,
    ).then((s) => s.firstOrNull);

    if (managerProfile == null) {
      debugPrint('❌ Manager profile not found');
      return;
    }

    // 3️⃣ Get manager team tree under outlet
    final managerTeamTree = await queryTeamTreeRecordOnce(
      parent: outletRef,
      queryBuilder: (q) =>
          q.where('userProfileId', isEqualTo: managerProfile.id),
      singleRecord: true,
    ).then((s) => s.firstOrNull);

    if (managerTeamTree == null) {
      // 🔥 TeamTree not created for manager under this outlet
      debugPrint('⚠️ Manager TeamTree not created under this outlet');
      return;
    }

    // 4️⃣ Update App State
    FFAppState().userManagerRef = managerProfile.reference;
    FFAppState().managerUid = managerTeamTree.uid;
  } catch (e, st) {
    debugPrint('❌ updateManagerUid error: $e');
    debugPrintStack(stackTrace: st);
  }
}
