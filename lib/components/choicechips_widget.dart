import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choicechips_model.dart';
export 'choicechips_model.dart';

class ChoicechipsWidget extends StatefulWidget {
  const ChoicechipsWidget({
    super.key,
    this.parameter1,
  });

  final List<String>? parameter1;

  @override
  State<ChoicechipsWidget> createState() => _ChoicechipsWidgetState();
}

class _ChoicechipsWidgetState extends State<ChoicechipsWidget> {
  late ChoicechipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChoicechipsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowChoiceChips(
      options: widget!.parameter1!.map((label) => ChipData(label)).toList(),
      onChanged: (val) =>
          safeSetState(() => _model.choiceChipsValue = val?.firstOrNull),
      selectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.lexend(
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).info,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
        iconColor: FlutterFlowTheme.of(context).secondaryBackground,
        iconSize: 16.0,
        elevation: 0.0,
        borderRadius: BorderRadius.circular(8.0),
      ),
      unselectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.lexend(
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).secondaryText,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
        iconColor: FlutterFlowTheme.of(context).primaryText,
        iconSize: 16.0,
        elevation: 0.0,
        borderRadius: BorderRadius.circular(8.0),
      ),
      chipSpacing: 8.0,
      rowSpacing: 8.0,
      multiselect: false,
      alignment: WrapAlignment.start,
      controller: _model.choiceChipsValueController ??=
          FormFieldController<List<String>>(
        [],
      ),
      wrapped: true,
    );
  }
}
