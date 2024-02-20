import 'package:authentication_app/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    void switchtoSignupPage() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
    }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/header.png',
            height: 234,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign in to Continue",
                style: GoogleFonts.openSans (
                  fontSize: 24,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/google.png',
                  width: 30,
                  height: 40,
                ),
                Image.asset(
                  'assets/facebook.png',
                  height: 25,
                  width: 25,
                ),
                Image.asset(
                  'assets/twitter.png',
                  height: 27,
                  width: 26,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("-------OR------"),
            ],
          ),
          Container(
            width: 356,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("EMAIL ID*"),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 40,
                width: 356,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'Email ID',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 356,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Password"),
                    Text("Forgot Password?"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 359,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 356,
                height: 44,
                child: ElevatedButton(
                  onPressed: switchtoSignupPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2F80ED), // Background color
                  ),
                  child: Text(
                      'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                    ),

                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Terms and Conditions | Privacy Policy"),
              ),
            ],
          ),
          Image.asset(
            'assets/footer.png',
            width: double.infinity,
            height: 190,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
