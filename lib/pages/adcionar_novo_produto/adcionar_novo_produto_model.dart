import '/components/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adcionar_novo_produto_widget.dart' show AdcionarNovoProdutoWidget;
import 'package:flutter/material.dart';

class AdcionarNovoProdutoModel
    extends FlutterFlowModel<AdcionarNovoProdutoWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for nome_produto widget.
  FocusNode? nomeProdutoFocusNode;
  TextEditingController? nomeProdutoTextController;
  String? Function(BuildContext, String?)? nomeProdutoTextControllerValidator;
  // State field(s) for sabor_produto widget.
  FocusNode? saborProdutoFocusNode;
  TextEditingController? saborProdutoTextController;
  String? Function(BuildContext, String?)? saborProdutoTextControllerValidator;
  // State field(s) for valor_produto widget.
  FocusNode? valorProdutoFocusNode;
  TextEditingController? valorProdutoTextController;
  String? Function(BuildContext, String?)? valorProdutoTextControllerValidator;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    nomeProdutoFocusNode?.dispose();
    nomeProdutoTextController?.dispose();

    saborProdutoFocusNode?.dispose();
    saborProdutoTextController?.dispose();

    valorProdutoFocusNode?.dispose();
    valorProdutoTextController?.dispose();

    menuLateralModel.dispose();
  }
}
