import 'package:flutter/material.dart';
import 'package:login_view/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginView"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/flutter.png",
              height: 50,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white30,
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white30,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HomeView()));
              },
              child: Container(
                height: 45,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text("LOGIN")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
