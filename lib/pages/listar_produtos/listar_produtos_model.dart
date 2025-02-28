import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listar_produtos_widget.dart' show ListarProdutosWidget;
import 'package:flutter/material.dart';

class ListarProdutosModel extends FlutterFlowModel<ListarProdutosWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<CupcakesRow>>? gridViewSupabaseStream;
  // State field(s) for Checkbox widget.
  Map<CupcakesRow, bool> checkboxValueMap = {};
  List<CupcakesRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
  }
}
