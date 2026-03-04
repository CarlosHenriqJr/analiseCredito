import '../database.dart';

class ParcelasTable extends SupabaseTable<ParcelasRow> {
  @override
  String get tableName => 'parcelas';

  @override
  ParcelasRow createRow(Map<String, dynamic> data) => ParcelasRow(data);
}

class ParcelasRow extends SupabaseDataRow {
  ParcelasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ParcelasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get idemprestimo => getField<int>('idemprestimo');
  set idemprestimo(int? value) => setField<int>('idemprestimo', value);

  int? get parcela => getField<int>('parcela');
  set parcela(int? value) => setField<int>('parcela', value);

  double? get varlorparcela => getField<double>('varlorparcela');
  set varlorparcela(double? value) => setField<double>('varlorparcela', value);

  bool? get statuspgto => getField<bool>('statuspgto');
  set statuspgto(bool? value) => setField<bool>('statuspgto', value);

  DateTime? get datavencimento => getField<DateTime>('datavencimento');
  set datavencimento(DateTime? value) =>
      setField<DateTime>('datavencimento', value);
}
