import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'Homepage.dart';
class LoginWithValidation extends StatefulWidget {
  @override
  _LoginWithValidationState createState() => _LoginWithValidationState();
}

class _LoginWithValidationState extends State<LoginWithValidation> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  "Login Page",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 70, right: 70),
                child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains("@") ||
                          !username.contains('.')) {
                        return "Enter valid Email";
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Enter valid password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 70),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[200],
                  ),
                  onPressed: () {
                    var valid=formkey.currentState!.validate();
                    if(valid){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Homepage()));
                    }
                    // Handle submit action
                  },
                  child: Text("Submit"),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle account creation action
                },
                child: Text("Not a user? Create an account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
