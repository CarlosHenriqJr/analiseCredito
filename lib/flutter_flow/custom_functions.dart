import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? primeiraLetra(String? pegarTexto) {
  // pegar apenas a primeira letra do nome
  if (pegarTexto != null && pegarTexto.isNotEmpty) {
    return pegarTexto.substring(0, 1);
  }
  return null;
}

DateTime? converterUnixDataTime(int? pegarInteger) {
  // converter dataunix em datatime
  if (pegarInteger != null) {
    return DateTime.fromMillisecondsSinceEpoch(pegarInteger * 1000);
  }
  return null;
}

double? somarListaDouble(List<double>? pegarDouble) {
  // fazer somatoria da lista "pegarDouble"
  // fazer somatoria da lista "pegarDouble"
  if (pegarDouble != null && pegarDouble.isNotEmpty) {
    return pegarDouble.reduce((value, element) => value + element);
  }
  return null;
}

int? numeroWhatsApp(String? pegarStrinf) {
  // preciso retirar todos os caracteres especiais e deixar somente numero
  // retirar caracteres especiais e deixar somente números
  if (pegarStrinf != null) {
    String numbersOnly = pegarStrinf.replaceAll(RegExp(r'[^0-9]'), '');
    return int.tryParse(numbersOnly);
  }
  return null;
}
