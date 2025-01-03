import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: "Nomor Telepon"),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (phoneController.text.isEmpty) {
                  Get.snackbar("Error", "Nomor telepon tidak boleh kosong");
                } else {
                  Get.toNamed('/main');
                }
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}