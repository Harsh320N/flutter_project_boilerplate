import 'package:flutter_project_boilerplate/res/colors/app_color.dart';
import 'package:flutter_project_boilerplate/res/widgets/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldAndLabel extends StatefulWidget {
  final String? Function(String?)? validator;
  final bool autofocus;
  final Color fillColor;
  final String? labelValue;
  final int maxLine;
  final int? minLine;
  final int? maxLength;
  final bool isRequire;
  final Widget? rightIcon;
  final Widget? leftIcon;
  final bool isPassword;
  final bool readOnly;
  final String hint;
  final String? initialValue;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Function()? onTap;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final TextInputType? inputType;
  final String? validationMessage;
  final TextEditingController controller;
  final BoxConstraints? constraints;
  final double? topLeftBorderRadius;
  final double? topRightBorderRadius;
  final double? bottomLeftBorderRadius;
  final double? bottomRightBorderRadius;
  final double? circularRadius;
  final double? borderSideWidth;
  final Color? borderColor;
  final Color? focusBorderColor;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign textAlign;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? labelStyle;
  final Color cursorColor;
  final InputBorder? border;
  final InputBorder? enableBorder;
  final InputBorder? focusBorder;

  const FieldAndLabel({
    super.key,
    this.validator,
    this.autofocus = false,
    this.isRequire = false,
    this.readOnly = false,
    this.fillColor = AppColor.transparent,
    this.maxLine = 1,
    this.minLine,
    this.maxLength,
    this.labelValue,
    this.onTap,
    required this.onChanged,
    this.inputType,
    this.isPassword = false,
    required this.hint,
    this.hintStyle,
    this.initialValue,
    this.textStyle,
    this.rightIcon,
    this.leftIcon,
    this.validationMessage = '',
    required this.controller,
    this.constraints,
    this.bottomLeftBorderRadius,
    this.bottomRightBorderRadius,
    this.topLeftBorderRadius,
    this.topRightBorderRadius,
    this.circularRadius = 7.0,
    this.borderSideWidth,
    this.borderColor = AppColor.fieldBorderColor,
    this.focusBorderColor,
    this.focusNode,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.labelStyle,
    this.cursorColor = AppColor.primaryColor,
    this.border,
    this.enableBorder,
    this.focusBorder,
  });

  @override
  State<FieldAndLabel> createState() => _FieldAndLabelState();
}

class _FieldAndLabelState extends State<FieldAndLabel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.labelValue != null ? buildLabel(context) : Container(),
        buildTextField(context),
        buildValidationMessage(context),
      ],
    );
  }

  Widget buildLabel(BuildContext context) {
    return (widget.labelValue != null && widget.labelValue!.isNotEmpty)
        ? Padding(
            padding: paddingOnly(bottom: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  widget.labelValue ?? '',
                  textAlign: TextAlign.start,
                  style: widget.labelStyle ??
                      defaultTextStyle(
                        color: Theme.of(context).iconTheme.color!,
                        size: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                if (widget.isRequire)
                  Text(
                    "*",
                    style: defaultTextStyle(
                        color: AppColor.primaryColor, size: 14),
                    textAlign: TextAlign.start,
                  ),
              ],
            ),
          )
        : Container();
  }

  bool visible = true;

  Widget buildTextField(BuildContext context) {
    return TextFormField(
      textInputAction: widget.textInputAction,
      textAlign: widget.textAlign,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      focusNode: widget.focusNode,
      initialValue: widget.initialValue,
      keyboardType: widget.inputType,
      autofocus: widget.autofocus,
      onFieldSubmitted: widget.onFieldSubmitted,
      obscureText: widget.isPassword ? visible : widget.isPassword,
      style: widget.textStyle ??
          defaultTextStyle(
            color: Theme.of(context).iconTheme.color!,
            size: 12.0,
          ),
      controller: widget.controller,
      onChanged: widget.onChanged!,
      readOnly: widget.readOnly,
      onTap: widget.onTap ?? () {},
      maxLength: widget.maxLength,
      cursorColor: widget.cursorColor,
      maxLines: widget.maxLine,
      minLines: widget.minLine,
      textCapitalization: widget.textCapitalization,
      decoration: InputDecoration(
        constraints: widget.constraints,
        hintText: widget.hint,
        suffixIcon: widget.rightIcon,
        prefixIcon: widget.leftIcon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 13.0,
          horizontal: 10.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
                widget.bottomRightBorderRadius ?? widget.circularRadius ?? 0),
            topRight: Radius.circular(
                widget.topRightBorderRadius ?? widget.circularRadius ?? 0),
            bottomLeft: Radius.circular(
                widget.bottomLeftBorderRadius ?? widget.circularRadius ?? 0),
            topLeft: Radius.circular(
                widget.topLeftBorderRadius ?? widget.circularRadius ?? 0),
          ),
          borderSide: BorderSide(
            width: widget.borderSideWidth ?? 0,
            color: widget.borderColor ?? AppColor.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
                widget.bottomRightBorderRadius ?? widget.circularRadius ?? 0),
            topRight: Radius.circular(
                widget.topRightBorderRadius ?? widget.circularRadius ?? 0),
            bottomLeft: Radius.circular(
                widget.bottomLeftBorderRadius ?? widget.circularRadius ?? 0),
            topLeft: Radius.circular(
                widget.topLeftBorderRadius ?? widget.circularRadius ?? 0),
          ),
          borderSide: BorderSide(
            width: widget.borderSideWidth ?? 0,
            color: widget.borderColor ?? AppColor.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
                widget.bottomRightBorderRadius ?? widget.circularRadius ?? 0),
            topRight: Radius.circular(
                widget.topRightBorderRadius ?? widget.circularRadius ?? 0),
            bottomLeft: Radius.circular(
                widget.bottomLeftBorderRadius ?? widget.circularRadius ?? 0),
            topLeft: Radius.circular(
                widget.topLeftBorderRadius ?? widget.circularRadius ?? 0),
          ),
          borderSide: BorderSide(
            width: widget.borderSideWidth ?? 0,
            color: widget.focusBorderColor ??
                widget.borderColor ??
                AppColor.transparent,
          ),
        ),
        alignLabelWithHint: true,
        counterText: "",
        hintStyle: widget.hintStyle ??
            defaultTextStyle(
              fontWeight: FontWeight.w400,
              size: 14.0,
            ),
        filled: true,
        isDense: true,
        fillColor: widget.fillColor,
      ),
    );
  }

  Widget buildValidationMessage(BuildContext context) {
    return buildValidationErrorMessage(context,
        validationMessage: widget.validationMessage!);
  }

  bool isBlank(String value) => value == '';

  Widget buildValidationErrorMessage(BuildContext context,
      {String validationMessage = ''}) {
    return (!isBlank(validationMessage))
        ? Padding(
            padding: paddingOnly(left: 10.0, top: 5.0),
            child: Row(
              children: [
                Text(
                  validationMessage,
                  style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: widget.validationMessage == "Valid"
                        ? Colors.green
                        : AppColor.red,
                  ),
                ),
              ],
            ),
          )
        : Container();
  }
}
