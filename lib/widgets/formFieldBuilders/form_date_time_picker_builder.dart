import 'dart:core';

import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class FormDateTimePickerBuilder extends StatelessWidget {
  const FormDateTimePickerBuilder({
    Key? key,
    this.minLines,
    this.controller,
    this.maxLines,
    this.textAlign,
    this.textColor,
    this.filled = false,
    this.fillColor,
    this.labelText,
    this.hintText,
    required this.attribute,
    this.margin,
    this.contentPadding,
    this.onChanged,
    this.allowClear = false,
    this.validators,
    this.itemsAreCheckable = false,
    this.suffixIcon,
    this.prefixIcon,
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
  final String attribute;
  final EdgeInsets? margin;
  final EdgeInsets? contentPadding;
  final bool allowClear;
  final validators;
  final bool itemsAreCheckable;
  final Function(String?)? onChanged;
  final Widget? suffixIcon, prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormBuilderDateTimePicker(
          focusNode: FocusNode(),
          name: attribute,
          onChanged: (obj) {},
          validator: validators,
          helpText: labelText ?? '',
          timePickerInitialEntryMode: TimePickerEntryMode.input,
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDatePickerMode: DatePickerMode.day,
          initialDate: DateTime.now(),
          initialValue: null,
          inputType: InputType.date,
          cursorColor: AppColors.blackColor,
          format: DateFormat('dd-MM-yyyy'),
          decoration: InputDecoration(
            filled: true,
            focusColor: AppColors.blackColor,
            fillColor: AppColors.inputFieldBackgroundColor,
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
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: labelText,
            labelStyle: AppTextStyleRegular.textSmall,
            hintStyle: AppTextStyleRegular.textSmall.copyWith(
              color: AppColors.grayColor2,
            ),
          ),
        ),
      ],
    );
  }
}
