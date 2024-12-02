import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_payment_widget.dart' show CheckoutPaymentWidget;
import 'package:flutter/material.dart';

class CheckoutPaymentModel extends FlutterFlowModel<CheckoutPaymentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CreditCardForm widget.
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
