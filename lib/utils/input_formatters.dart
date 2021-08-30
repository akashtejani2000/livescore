import 'package:flutter/services.dart';

class NumberInputFormatter extends TextInputFormatter {
  final int length;
  final bool allowFloating;

  NumberInputFormatter({this.length = 255, this.allowFloating = false});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > length) return oldValue;
    if (newValue.text.length > oldValue.text.length) if (allowFloating)
      return double.tryParse(newValue.text) != null ? newValue : oldValue;
    else
      return int.tryParse(newValue.text) != null ? newValue : oldValue;
    else
      return newValue;
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text.replaceAll("/", '');
    if (newText.isNotEmpty && int.tryParse(newText) == null) {
      return oldValue;
    } else if (newValue.text.length > 5)
      return oldValue;
    else if (newValue.text.length < oldValue.text.length)
      return newValue;
    else if (newValue.text.length < 2)
      return newValue;
    else if (newValue.text.length == 2) {
      return int.parse(newValue.text) > 12 ? oldValue : newValue;
    }

    var buffer = new StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      if (i == 1) buffer.write('/');
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text.replaceAll(" ", '').trim();
    if (newText.isNotEmpty && int.tryParse(newText) == null) {
      return oldValue;
    } else if (newText.length > 20) {
      return oldValue;
    } else if (newValue.text.length < 4) {
      return newValue;
    } else if (newValue.text.length < oldValue.text.length) {
      var text = newValue.text.trim();
      return newValue.copyWith(
          text: text, selection: TextSelection.collapsed(offset: text.length));
    }

    var buffer = new StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      if ((i + 1) % 4 == 0) buffer.write("  ");
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }
}
