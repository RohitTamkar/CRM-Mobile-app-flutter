import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'navbar_widget.dart' show NavbarWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavbarModel extends FlutterFlowModel<NavbarWidget> {
  ///  Local state fields for this component.

  List<FeatureAccessConfig> enabledFeatureKeys = [];
  void addToEnabledFeatureKeys(FeatureAccessConfig item) =>
      enabledFeatureKeys.add(item);
  void removeFromEnabledFeatureKeys(FeatureAccessConfig item) =>
      enabledFeatureKeys.remove(item);
  void removeAtIndexFromEnabledFeatureKeys(int index) =>
      enabledFeatureKeys.removeAt(index);
  void insertAtIndexInEnabledFeatureKeys(int index, FeatureAccessConfig item) =>
      enabledFeatureKeys.insert(index, item);
  void updateEnabledFeatureKeysAtIndex(
          int index, Function(FeatureAccessConfig) updateFn) =>
      enabledFeatureKeys[index] = updateFn(enabledFeatureKeys[index]);

  List<FeatureAccessConfig> requiredFeature = [];
  void addToRequiredFeature(FeatureAccessConfig item) =>
      requiredFeature.add(item);
  void removeFromRequiredFeature(FeatureAccessConfig item) =>
      requiredFeature.remove(item);
  void removeAtIndexFromRequiredFeature(int index) =>
      requiredFeature.removeAt(index);
  void insertAtIndexInRequiredFeature(int index, FeatureAccessConfig item) =>
      requiredFeature.insert(index, item);
  void updateRequiredFeatureAtIndex(
          int index, Function(FeatureAccessConfig) updateFn) =>
      requiredFeature[index] = updateFn(requiredFeature[index]);

  bool showContacts = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in navbar widget.
  ModuleSubscriptionRecord? subscriptionResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
