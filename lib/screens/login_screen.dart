import 'package:flutter/material.dart';
import 'package:focus/screens/forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width * .95,
                height: height * .4,
                child: Image.asset("assets/focuslogo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: 
                  SizedBox(
                    width: width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
              ),
              Divider(thickness: 2, height: 2, color: Colors.deepPurple, indent: width - (width * .95), endIndent: width - (width * .95),),
              SizedBox(height: 10, width: width,),
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
              SizedBox(height: 20.0,),
              SizedBox(
                width: width * .9,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: width * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Text('Forgot password?'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const ForgotPasswordScreen()
                            ),
                          );
                        },
                      ),
                      ElevatedButton(
                        child: Text('Login'),
                        style: ButtonStyle(),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
              ),  
              SizedBox(
                width: width * .75,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.app_registration_rounded),
                  label: Text('No account? Register now!'),
                  onPressed: () {},
                  style: ButtonStyle(),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}

