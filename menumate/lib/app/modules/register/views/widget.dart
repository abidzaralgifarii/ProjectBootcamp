import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInput extends StatefulWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;

  const CustomInput({
    Key? key,
    required this.label,
    this.obscureText = false,
    required this.controller
  }) : super(key: key);

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
      ),
      // height: 254,
      // width: 61,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
