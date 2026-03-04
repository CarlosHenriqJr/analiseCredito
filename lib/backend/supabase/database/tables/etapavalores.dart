import '../database.dart';

class EtapavaloresTable extends SupabaseTable<EtapavaloresRow> {
  @override
  String get tableName => 'etapavalores';

  @override
  EtapavaloresRow createRow(Map<String, dynamic> data) => EtapavaloresRow(data);
}

class EtapavaloresRow extends SupabaseDataRow {
  EtapavaloresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EtapavaloresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get valorlimite => getField<double>('valorlimite');
  set valorlimite(double? value) => setField<double>('valorlimite', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
