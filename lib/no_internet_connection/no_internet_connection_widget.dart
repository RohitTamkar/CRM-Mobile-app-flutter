import '/components/no_internet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_internet_connection_model.dart';
export 'no_internet_connection_model.dart';

class NoInternetConnectionWidget extends StatefulWidget {
  const NoInternetConnectionWidget({super.key});

  static String routeName = 'NoInternetConnection';
  static String routePath = 'noInternetConnection';

  @override
  State<NoInternetConnectionWidget> createState() =>
      _NoInternetConnectionWidgetState();
}

class _NoInternetConnectionWidgetState
    extends State<NoInternetConnectionWidget> {
  late NoInternetConnectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoInternetConnectionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x00F4F3F8),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Stack(
                    children: [],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.noInternetModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NoInternetWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
