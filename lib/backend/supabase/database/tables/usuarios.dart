import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  double? get valortotal => getField<double>('valortotal');
  set valortotal(double? value) => setField<double>('valortotal', value);

  double? get confianca => getField<double>('confianca');
  set confianca(double? value) => setField<double>('confianca', value);

  double? get lucro => getField<double>('lucro');
  set lucro(double? value) => setField<double>('lucro', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);
}
