import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValue = {
      'first_name': 'Lizie',
      'last_name': 'Pérez',
      'email': 'lizie@google.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                    labelText: 'Name',
                    hintText: 'User name',
                    formProperty: 'first_name',
                    formValues: formValue),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Lastname',
                    hintText: 'User lastname',
                    formProperty: 'last_name',
                    formValues: formValue),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Email',
                    hintText: 'User email',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValue),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Password',
                    hintText: 'User password',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValue),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                      DropdownMenuItem(
                          child: Text('Superuser'), value: 'Superuser'),
                      DropdownMenuItem(
                          child: Text('Developer'), value: 'Developer'),
                      DropdownMenuItem(
                          child: Text('Jr. Developer'), value: 'Jr. Developer'),
                    ],
                    onChanged: (value) {
                      formValue['role'] = value ?? 'Admin';
                    }),
                const SizedBox(height: 30),
                ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Save'),
                      ),
                    ),
                    onPressed: () {
                      if (!myFormKey.currentState!.validate()) {
                        print('Invalid form');
                        return;
                      }

                      print('formValue $formValue');
                    })
              ],
            ),
          ),
        ));
  }
}
