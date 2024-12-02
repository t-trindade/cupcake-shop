import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'Pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(super.data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get avaliacao => getField<int>('avaliação');
  set avaliacao(int? value) => setField<int>('avaliação', value);

  dynamic get itens => getField<dynamic>('itens');
  set itens(dynamic value) => setField<dynamic>('itens', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get totalAmount => getField<int>('total amount');
  set totalAmount(int? value) => setField<int>('total amount', value);
}
