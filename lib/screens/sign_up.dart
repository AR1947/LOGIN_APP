import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const Screen2());
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Screen2Stateful(),
    );
  }
}
class _Screen2Stateful extends StatefulWidget {
  const _Screen2Stateful({Key? key});

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<_Screen2Stateful> {
  late TextEditingController _passwordController;
  late String _generatedPassword;
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _generatedPassword = '';
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  String generateRandomPassword(int length) {
    const chars = "abcdefghijklmnopqrstuvwxyz0123456789";
    final random = Random();
    return String.fromCharCodes(
      Iterable.generate(length, (_) => chars.codeUnitAt(random.nextInt(chars.length))),
    );
  }
  void updateGeneratedPassword() {
    setState(() {
      _generatedPassword = generateRandomPassword(10); // Imput length of Password
      _passwordController.text = _generatedPassword;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
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
                "New User? Get Started Now",
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
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isObscure,
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
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  ),
                  ),


              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2F80ED), // Background color
                      ),
                      child: Text(
                          'SIGN UP',
                        style: TextStyle(
                            color: Colors.white, // Text color
                            fontSize: 18, // Text size
                            fontFamily: 'Cambo', // Font family

                          ),
                        ),
                      ),
                    ElevatedButton(
                      onPressed: updateGeneratedPassword,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2F80ED),
                      ),
                      child: Text('Generate',
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontSize: 18, // Text size
                            fontFamily: 'Cambo', // Font family

                          ),
                      ),
                    ),
                  ],
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
            height: 145,
            fit: BoxFit.cover,
          ),
        ],
      ),
      ),
    );
  }
}
