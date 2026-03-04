import '../database.dart';

class EmprestimosTable extends SupabaseTable<EmprestimosRow> {
  @override
  String get tableName => 'emprestimos';

  @override
  EmprestimosRow createRow(Map<String, dynamic> data) => EmprestimosRow(data);
}

class EmprestimosRow extends SupabaseDataRow {
  EmprestimosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmprestimosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get qtdeparcelas => getField<int>('qtdeparcelas');
  set qtdeparcelas(int? value) => setField<int>('qtdeparcelas', value);

  double? get valortotal => getField<double>('valortotal');
  set valortotal(double? value) => setField<double>('valortotal', value);

  double? get lucro => getField<double>('lucro');
  set lucro(double? value) => setField<double>('lucro', value);

  int? get idusuario => getField<int>('idusuario');
  set idusuario(int? value) => setField<int>('idusuario', value);

  DateTime? get datavencimento => getField<DateTime>('datavencimento');
  set datavencimento(DateTime? value) =>
      setField<DateTime>('datavencimento', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  double? get juros => getField<double>('juros');
  set juros(double? value) => setField<double>('juros', value);

  int? get qtdeparcelapgo => getField<int>('qtdeparcelapgo');
  set qtdeparcelapgo(int? value) => setField<int>('qtdeparcelapgo', value);
}
