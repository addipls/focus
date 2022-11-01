import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width * .95,
                height: height * .4,
                child: Image.asset("assets/focuslogo.png"),
              ),
              SizedBox(
                width: width * .9,
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: Text('Reset Password',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              ),
              Divider(
                thickness: 2,
                height: 2,
                color: Colors.deepPurple,
                indent: width - (width * .95),
                endIndent: width - (width * .95),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width * .9,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: ElevatedButton(
                  style: ButtonStyle(),
                  child: Text('Send Code to Email'),
                  onPressed: () {
                    // Send email
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}