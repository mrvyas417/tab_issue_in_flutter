// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWidgets {
  static Widget inputField(
      {required BuildContext context,
      String? suffixIcon,
      String? label,
      String? hint,
      FormFieldValidator<String>? validator,
      double? iconPadding,
      TextEditingController? textEditingController,
      TextInputType keyboardType = TextInputType.text,
      bool obscureText = false,
      bool isRequired = false,
      List<TextInputFormatter>? inputFormatters,
      GestureTapCallback? onTap,
      bool enableInteractiveSelection = true,
      int? maxLines = 1}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          // 1. show hint label
          if (hint != null)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Text(hint,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontFamily: "Quicksand",
                            fontSize: 14,
                            // color: AppColors.summeryBg
                          )),
                  if (isRequired)
                    Text(
                      "*",
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            // color: AppColors.tabSelectionColor
                          ),
                    )
                ],
              ),
            ),

          // 2. Field
          TextFormField(
            enableSuggestions: false,
            readOnly: !enableInteractiveSelection,
            maxLines: maxLines,
            enableInteractiveSelection: enableInteractiveSelection,
            inputFormatters: inputFormatters,
            //style: TextStyle(color: AppColors.subTitleColor),
            obscureText: obscureText,
            textInputAction: TextInputAction.next,
            keyboardType: keyboardType,
            controller: textEditingController,
            decoration: InputDecoration(
              hintStyle: const TextStyle(
                  // color: AppColors.subTitleColor.withOpacity(0.3),
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
              hintText: label,
              isDense: true,
              contentPadding: const EdgeInsets.all(8),
              filled: true,
              fillColor: Colors.white,
              // ignore: prefer_const_constructors
              disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 0.3)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      //color: AppColors.subTitleColor.withOpacity(0.9),
                      width: 0.3)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      //color: AppColors.subTitleColor.withOpacity(0.9),
                      width: 0.5)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      // color: AppColors.tabSelectionColor,
                      width: 0.8)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      //  color: AppColors.tabSelectionColor,
                      width: 0.8)),
            ),
            validator: validator,
            onTap: onTap,
          )
        ],
      ),
    );
  }

  static Widget buildButton(
      {required BuildContext context,
      required double buttonHeight,
      required Color buttonTextColour,
      required Color buttonBackgroundColour,
      required String buttonText,
      required double buttonTextSize,
      required double buttonShapeRoundSize,
      VoidCallback? onPressed,
      double? width,
      FontWeight? fontWeight}) {
    return SizedBox(
      height: buttonHeight,
      width: width,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonShapeRoundSize)),
        color: buttonBackgroundColour,
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.only(bottom: 3),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: buttonTextColour,
                fontSize: buttonTextSize,
                fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
