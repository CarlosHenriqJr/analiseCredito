// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// retornar o valor do lucro
Future<double> valorLucro(
  double? valorEmprestimo,
  double? juros,
) async {
  if (valorEmprestimo == null || juros == null) {
    return 0.0;
  }

  final double lucro = valorEmprestimo * (juros / 100);
  return lucro;
}
