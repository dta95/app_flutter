import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void hideKeyboard(){
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}
void hideKeyboardAndUnfocus(BuildContext context) {
  FocusScope.of(context).unfocus();
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}