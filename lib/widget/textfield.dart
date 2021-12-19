import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfield extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obsecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String label;
  final Widget? suffix;
  final Widget? prefix;

  const Textfield(
      {Key? key,
      this.controller,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.obsecure = false,
      this.onTap,
      this.isMulti = false,
      this.readOnly = false,
      this.autofocus = false,
      this.errorText,
      required this.label,
      this.suffix,
      this.prefix,
      this.enabled = true,
      this.onEditingCompleted,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: onChanged,
        onEditingComplete: onEditingCompleted,
        autofocus: autofocus,
        minLines: isMulti ? 4 : 1,
        maxLines: isMulti ? null : 1,
        onTap: onTap,
        enabled: enabled,
        readOnly: readOnly,
        obscureText: obsecure,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          floatingLabelStyle: GoogleFonts.inter(
            fontSize: 12,
          ),
          errorText: errorText,
          prefixIcon: prefix,
          suffixIcon: suffix,
          labelStyle: GoogleFonts.inter(fontSize: 12, height: 4),
          labelText: label,
          //hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 15),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(18, 18, 18, 0.2))),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(18, 18, 18, 0.2))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(18, 18, 18, 0.2))),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
        ),
        validator: validator);
  }
}
