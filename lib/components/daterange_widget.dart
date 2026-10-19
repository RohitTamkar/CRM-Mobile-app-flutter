import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'daterange_model.dart';
export 'daterange_model.dart';

class DaterangeWidget extends StatefulWidget {
  const DaterangeWidget({super.key});

  @override
  State<DaterangeWidget> createState() => _DaterangeWidgetState();
}

class _DaterangeWidgetState extends State<DaterangeWidget> {
  late DaterangeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DaterangeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Container(
        width: 400.0,
        height: 400.0,
        child: custom_widgets.CustomDateRangeWidget(
          width: 400.0,
          height: 400.0,
        ),
      ),
    );
  }
}
