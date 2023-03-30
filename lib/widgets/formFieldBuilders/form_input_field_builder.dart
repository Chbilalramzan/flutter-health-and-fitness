import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// Edit text field designed according to app requirement
/// Use this class in a Form when you want a user to input something in it

class FormInputFiledBuilder extends StatelessWidget {
  const FormInputFiledBuilder({
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
  }) : super(key: key);

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
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.size48,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: FormBuilderTextField(
        cursorColor: AppColors.blackColor,
        focusNode: FocusNode(),
        controller: controller,
        minLines: minLines ?? 1,
        maxLength: maxLength,
        name: attribute,
        enabled: enabled,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        obscureText: obscureText,
        initialValue: initialValue,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        inputFormatters: inputFormatters,
        autocorrect: false,
        style: AppTextStyleRegular.textSmall.copyWith(
          color: enabled
              ? AppColors.blackColor
              : AppColors.grayColor2.withOpacity(0.9),
        ),
        decoration: InputDecoration(
          filled: true,
          isDense: false,
          counterText: '',
          isCollapsed: true,
          suffixText: suffixText,
          suffixStyle: AppTextStyleRegular.textSmall,
          focusColor: AppColors.blackColor,
          fillColor: AppColors.inputFieldBackgroundColor,
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
          // labelText: labelText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: labelText,
          hintStyle: AppTextStyleRegular.textSmall.copyWith(
            color: AppColors.grayColor2,
          ),
        ),
      ),
    );
  }
}
