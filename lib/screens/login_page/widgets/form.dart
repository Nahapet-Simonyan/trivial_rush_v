import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'text_field_style.dart';
import '../provider/login_page_provider.dart';

Widget loginPageForm(BuildContext context, bool isChecked) {
  return Form(
    child: Column(
      children: [
        // Email TextField
        TextField(
          decoration: InputDecoration(
            hintText: 'Email*',
            enabledBorder: loginPageTextFieldStyle(),
          ),
        ),

        // Password TextField
        TextField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Password',
            enabledBorder: loginPageTextFieldStyle(),
          ),
        ),

        // Remember Password CheckBox
        SizedBox(
          child: Consumer(
            builder: (BuildContext context, value, Widget? child) {
            return CheckboxListTile(
                title: const Text(
                  "Remember Password",
                  style: TextStyle(
                    fontFamily: 'Sans Serif',
                    fontSize: 12,
                  ),
                ),
                controlAffinity:
                ListTileControlAffinity.leading,
                activeColor: const Color.fromRGBO(204, 0, 1, 1),
                value: isChecked,
                onChanged: (value) => context
                    .read<LoginPageCheckBoxProvider>()
                    .changeCheck());
            },),
        ),
      ],
    ),
  );
}