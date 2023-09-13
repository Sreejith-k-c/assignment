import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required GlobalKey<State<StatefulWidget>> formKey,
    required this.hintText,
    required this.validatorText,
    required this.contoller,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<State<StatefulWidget>> _formKey;
  final String hintText;
  final String validatorText;
  final TextEditingController contoller;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SizedBox(
          height: 60,
          child: TextFormField(
            controller: contoller,
            cursorColor: Colors.blue,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return validatorText;
              }
              return null;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black, width: 1.5)),
              hintText: hintText,
              isDense: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black, width: 2)),
            ),
          ),
        ));
  }
}