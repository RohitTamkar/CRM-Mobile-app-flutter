import '/components/no_internet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'no_internet_connection_widget.dart' show NoInternetConnectionWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NoInternetConnectionModel
    extends FlutterFlowModel<NoInternetConnectionWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for noInternet component.
  late NoInternetModel noInternetModel;

  @override
  void initState(BuildContext context) {
    noInternetModel = createModel(context, () => NoInternetModel());
  }

  @override
  void dispose() {
    noInternetModel.dispose();
  }
}
