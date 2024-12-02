import '../database.dart';

class CupcakesTable extends SupabaseTable<CupcakesRow> {
  @override
  String get tableName => 'Cupcakes';

  @override
  CupcakesRow createRow(Map<String, dynamic> data) => CupcakesRow(data);
}

class CupcakesRow extends SupabaseDataRow {
  CupcakesRow(super.data);

  @override
  SupabaseTable get table => CupcakesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get removedAt => getField<DateTime>('removed_at');
  set removedAt(DateTime? value) => setField<DateTime>('removed_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sabor => getField<String>('sabor');
  set sabor(String? value) => setField<String>('sabor', value);

  int? get valor => getField<int>('valor');
  set valor(int? value) => setField<int>('valor', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
