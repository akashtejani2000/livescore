part of '../widgets.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final TextInputType keyboardType;
  final bool obscure;
  final String obscureCharacter;
  final TextInputAction inputAction;
  final FormFieldValidator<String>? validator;
  final GlobalKey<FormFieldState>? _fieldKey;
  final ValueChanged<String>? fieldSubmitted;
  final FocusNode? focus;
  final ValueChanged<String>? onChanged;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int maxLines;
  final int minLines;
  final List<TextInputFormatter> inputFormatters;
  final List<String> autofillHints;
  final bool isReadOnly;
  final bool hasLabel;
  final TextAlign textAlign;
  final Widget? icon;
  final Color labelColor;
  final VoidCallback? onTap;
  final Color? fillColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;

  const CommonTextField({
    required this.controller,
    this.labelText = "",
    GlobalKey<FormFieldState>? key,
    this.keyboardType = TextInputType.text,
    this.obscure = false,
    this.obscureCharacter = "•",
    this.inputAction = TextInputAction.next,
    this.validator,
    this.fieldSubmitted,
    this.focus,
    this.onChanged,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters = const [],
    this.autofillHints = const [],
    this.maxLines = 1,
    this.minLines = 1,
    this.isReadOnly = false,
    this.hasLabel = true,
    this.hintText = "",
    this.textAlign = TextAlign.start,
    this.icon,
    this.labelColor = AppColor.textPrimary,
    this.onTap,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
  }) : _fieldKey = key;

  @override
  Widget build(BuildContext context) {
    var borderRadius = this.borderRadius ?? BorderRadius.circular(8);
    var fillColor = AppColor.greenLight;
    var borderColor = AppColor.transparent;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hasLabel) ...[
          CommonText.medium(labelText, size: 15, color: labelColor),
          SizeBoxH(8),
        ],
        TextFormField(
          onTap: onTap,
          key: _fieldKey,
          validator: validator,
          obscuringCharacter: obscureCharacter,
          textInputAction: inputAction,
          onFieldSubmitted: fieldSubmitted,
          controller: controller,
          focusNode: focus,
          autofillHints: isReadOnly ? null : autofillHints,
          obscureText: obscure,
          onChanged: onChanged,
          keyboardType: keyboardType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: GoogleFonts.ptSans(
              color: AppColor.textPrimary,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5),
          textAlign: textAlign,
          maxLines: maxLines,
          minLines: minLines,
          readOnly: isReadOnly,
          cursorColor: context.theme.primaryColor,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(color: borderColor, width: 1.5),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(color: borderColor, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(color: borderColor, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(color: AppColor.transparent, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(color: AppColor.red, width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(color: AppColor.red, width: 1.5),
            ),
            errorStyle: GoogleFonts.ptSans(
                color: AppColor.red,
                fontWeight: FontWeight.w500,
                fontSize: 12,
                height: 1.5),
            hintText: hintText,
            hintStyle: GoogleFonts.ptSans(
                color: AppColor.textPrimaryLight,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.5),
            prefix: prefix,
            suffix: suffix,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            icon: icon,
            prefixIconConstraints: BoxConstraints(maxWidth: 120),
            fillColor: fillColor,
            filled: true,
          ),
        ),
      ],
    );
  }
}
