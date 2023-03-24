import 'package:coding_hack_weather_assignment/user.dart';
import 'package:coding_hack_weather_assignment/user_helper.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://cdn-icons-png.flaticon.com/512/5599/5599504.png",
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(hintText: "Username"),
                  controller: usernameController,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(hintText: "Password"),
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(hintText: "Full name"),
                  controller: fullnameController,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(hintText: "E-mail"),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    UserTable user = UserTable();
                    user.email = emailController.text;
                    user.username = usernameController.text;
                    user.password = passwordController.text;
                    user.fullname = fullnameController.text;

                    UserHelper().insertUserToDatabase(user);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: Size(MediaQuery.of(context).size.width * 4 / 5, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
