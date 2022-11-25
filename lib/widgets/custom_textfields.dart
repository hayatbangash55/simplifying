import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField20 extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autoValidateMode;
  final bool obscureText;
  final GestureTapCallback? onTap;
  final bool? showCursor;
  final bool readOnly;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final int? maxLength;
  final String? hintText;
  final String? title;
  final Color fillColor;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final double prefixIconSize;
  final double suffixIconSize;
  final int? maxLines;
  final int? minLines;

  CustomTextField20(
      {this.maxLength,
      this.maxLines = 1,
      this.minLines,
      this.hintText,
      this.focusNode,
      this.prefixIcon,
      this.validator,
      this.obscureText = false,
      this.autoValidateMode,
      this.title,
      this.controller,
      this.keyboardType,
      this.onTap,
      this.showCursor,
      this.readOnly = false,
      this.errorText,
      this.onChanged,
      this.suffixIcon,
      this.prefixIconSize = 18,
      this.suffixIconSize = 18,
      this.fillColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == null
            ? Container()
            : Container(
                margin: EdgeInsets.only(left: 2),
                child: Text(
                  title!,
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff070337),
                  ),
                ),
              ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
            focusNode: focusNode,
            onChanged: onChanged,
            maxLines: maxLines,
            minLines: minLines,
            showCursor: showCursor,
            maxLength: maxLength,
            readOnly: readOnly,
            onTap: onTap,
            autovalidateMode: autoValidateMode,
            obscureText: obscureText,
            validator: validator,
            style: TextStyle(
              color: Color(0xff495057),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              contentPadding: (suffixIcon == null)
                  ? EdgeInsets.only(top: 15, left: 7)
                  : EdgeInsets.only(top: 15),
              suffixIcon: (suffixIcon == null)
                  ? null
                  : Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        suffixIcon,
                        color: Color(0xff292930),
                        size: suffixIconSize,
                      ),
                    ),
              errorText: errorText,
              //isDense: true,
              fillColor: fillColor,
              filled: true,
              prefixIcon: (prefixIcon == null)
                  ? null
                  : Icon(
                      prefixIcon,
                      color: Color(0xff292930),
                      size: prefixIconSize,
                    ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 0.8, color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color(0xffD1D4D7),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 0.8,
                  color: Color(0xff5956E9),
                ),
              ),
            ),
            controller: controller,
            keyboardType: keyboardType,
          ),
        ),
      ],
    );
  }
}
