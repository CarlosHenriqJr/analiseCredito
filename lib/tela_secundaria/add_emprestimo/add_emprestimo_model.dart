import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'add_emprestimo_widget.dart' show AddEmprestimoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AddEmprestimoModel extends FlutterFlowModel<AddEmprestimoWidget> {
  ///  Local state fields for this page.

  double? valorEmprestimo;

  double? juros;

  double? lucro;

  ///  State fields for stateful widgets in this page.

  // State field(s) for qtdParcelas widget.
  int? qtdParcelasValue;
  FormFieldController<int>? qtdParcelasValueController;
  // State field(s) for vlrTotal widget.
  FocusNode? vlrTotalFocusNode;
  TextEditingController? vlrTotalTextController;
  String? Function(BuildContext, String?)? vlrTotalTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Custom Action - valorLucro] action in TextField widget.
  double? vlrLucro;
  // State field(s) for lucro widget.
  FocusNode? lucroFocusNode;
  TextEditingController? lucroTextController;
  String? Function(BuildContext, String?)? lucroTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  EmprestimosRow? pegarIDEmprestimo;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? totalCliente;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vlrTotalFocusNode?.dispose();
    vlrTotalTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    lucroFocusNode?.dispose();
    lucroTextController?.dispose();
  }
}
