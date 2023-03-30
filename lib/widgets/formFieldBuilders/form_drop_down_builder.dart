import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormDropDownBuilder extends StatelessWidget {
  const FormDropDownBuilder({
    Key? key,
    this.minLines,
    this.controller,
    this.maxLines,
    this.textAlign,
    this.textColor,
    this.filled = false,
    this.fillColor,
    required this.labelText,
    this.hintText,
    this.obscureText = false,
    required this.attribute,
    this.margin,
    this.contentPadding,
    this.prefixIcon,
    this.suffixIcon,
    this.initialValue = '',
    this.onChanged,
    this.keyboardType,
    this.validator,
    this.onSubmitted,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.words,
    this.textInputAction = TextInputAction.next,
    this.enabled = true,
    this.maxLength = 30,
    this.suffixText = '',
    this.width = double.maxFinite,
    this.height,
    required this.genderOptions,
    this.style,
  }) : super(key: key);

  final double? width, height;
  final int? minLines;
  final TextEditingController? controller;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  final bool? filled;
  final Color? fillColor;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final String attribute;
  final EdgeInsets? margin;
  final EdgeInsets? contentPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final bool enabled;
  final Function(String?)? onChanged;
  final Function(String?)? onSubmitted;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final int maxLength;
  final String suffixText;
  final dynamic validator;
  final List<TextInputFormatter>? inputFormatters;
  final List<String> genderOptions;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? Dimensions.size48,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: FormBuilderDropdown(
        focusNode: FocusNode(),
        name: attribute,
        enabled: enabled,
        icon: suffixIcon,
        style: AppTextStyleRegular.textSmall.copyWith(
          color: enabled
              ? AppColors.blackColor
              : AppColors.grayColor2.withOpacity(0.9),
        ),
        borderRadius: BorderRadius.all(Radius.circular(Dimensions.size20)),
        decoration: InputDecoration(
          filled: true,
          isDense: false,
          counterText: '',
          focusColor: AppColors.blackColor,
          fillColor: fillColor ?? AppColors.inputFieldBackgroundColor,
          hoverColor: AppColors.blackColor,
          contentPadding: EdgeInsets.all(Dimensions.size15),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 0, color: AppColors.inputFieldBackgroundColor),
            borderRadius: BorderRadius.circular(Dimensions.size14),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.inputFieldBackgroundColor,
            ),
            borderRadius: BorderRadius.circular(Dimensions.size14),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(Dimensions.size14),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(Dimensions.size14),
          ),
          // suffix: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: labelText,
          hintStyle: style ??
              AppTextStyleRegular.textSmall.copyWith(
                color: AppColors.grayColor2,
              ),
        ),
        items: genderOptions
            .map((gender) => DropdownMenuItem(
                  alignment: AlignmentDirectional.topStart,
                  value: gender,
                  child: Text(
                    textAlign: TextAlign.start,
                    gender,
                    style: style ??
                        AppTextStyleRegular.textSmall.copyWith(
                          color: enabled
                              ? AppColors.blackColor
                              : AppColors.grayColor2.withOpacity(0.9),
                        ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
