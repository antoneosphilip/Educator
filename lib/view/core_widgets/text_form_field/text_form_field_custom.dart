import 'package:educator/core/color_manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class TextFormFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validate;
  final Function(String?)? onSaved;
  final Function()? onEditingComplete;
  final bool obSecure;
  final Widget? prefixIcon;
  final bool prefix;
  final Widget? suffixIcon;
  final bool suffix;
  final Function? suffixOnPressed;
  final TextInputType? keyboardType;
  final int maxDigit;
  final Function? onChanged;
  final TextInputAction? textInputAction;
  final Function? onTab;
  final FocusNode? focus;
  final TextAlign align;
  final String? initial;
  final bool? enable;
  final double? padding;
  final int? maxLines;
  final Color? fillColor;
  final Color? boarderColor;
  final Color ? inputTextColor;

  const TextFormFieldCustom(
      {Key? key,
        this.controller,
        this.label,
        this.hint,
        this.inputTextColor,
        this.obSecure = false,
        this.prefixIcon,
        this.prefix = false,
        this.suffixIcon,
        this.suffix = false,
        this.suffixOnPressed,
        required this.validate,
        this.keyboardType,
        this.maxDigit = 100,
        this.onChanged,
        this.textInputAction,
        this.onTab,
        this.onSaved,
        this.onEditingComplete,
        this.focus,
        this.align = TextAlign.start,
        this.initial,
        this.enable,
        this.fillColor = ColorManager.colorPrimary,
        this.boarderColor =ColorManager.colorPrimary,
        this.padding = 20.0,
        this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      textAlignVertical: TextAlignVertical.center,
      textAlign: align,
      focusNode: focus,
      // autofocus: true,
      enabled: enable,
      initialValue: initial,

      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      onChanged:  onChanged != null?
          (value)
      {
        onChanged!(value);
      } : null,
      onEditingComplete: onEditingComplete,
      obscureText: obSecure,
      validator: (value) {
        return validate!(value);
      },
      onSaved: onSaved,
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      onTap: () {
        onTab != null ? onTab!() : null;
      },
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxDigit),
      ],
      style: TextStyle(
        color: inputTextColor ?? Colors.black,
        fontSize: 16,
      ),
      //maxLength: maxDigit,
      decoration: InputDecoration(

        filled: true,
        fillColor: fillColor,
        isDense: true,
        //floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:  BorderSide(
            color: boarderColor!,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:  BorderSide(
            color: ColorManager.colorPrimary,
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: padding!,
          horizontal: 16,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:  BorderSide(
            color: boarderColor!,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        // suffixIconColor: ColorManager.textFormIconColor,
        // focusColor: ColorManager.textFormColor,

        prefixIcon: prefix
            ? Padding(
          padding: EdgeInsets.all(14.0),
          child: prefixIcon,
        )
            : null,
        suffixIcon: suffix
            ? Padding(
          padding: EdgeInsets.all(14.0),
          child: InkWell(
            onTap: suffixOnPressed != null
                ? () {
              suffixOnPressed!();
              // suffixOnPressed!();
            }
                : null,
            child: suffixIcon,
          ),
        )
            : null,
        labelText: label,
        hintText: hint,
        hintStyle: TextStyle(
          color: ColorManager.colorPrimary,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        labelStyle: TextStyle(
          color:Colors.black,
          fontSize: 15,
        ),
        floatingLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),

    );
  }
}
