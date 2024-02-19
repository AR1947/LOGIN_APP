import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Screen1());
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key});

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
                style: GoogleFonts.akayaTelivigala(
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
                  keyboardType: TextInputType.emailAddress,
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
                        borderRadius: BorderRadius.circular(10)
                    ),
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
                  onPressed: () {},
                  child: Text(
                      'Sign IN',
                    style: GoogleFonts.cambo(
                      fontSize: 22,
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
            height: 192,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}