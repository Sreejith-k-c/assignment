import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:assignment/signup.dart';

void main() {
  runApp(MaterialApp(home: Login2(),));
}

class Login2 extends StatefulWidget {
  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {

  var formkey=GlobalKey<FormState>();
  bool passvisibility=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text(
              "",
              style: TextStyle(fontSize: 50,color: Colors.grey),
            ),
            const Text(
              "Login",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            const Text(
              "Welcome back! Login with your credentials",
              style: TextStyle(fontSize: 15,color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.perm_contact_cal_sharp),
                    hintText: "Email ID",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (email) {
                  if (email!.isEmpty && !email.contains('@')){
                    return "Fields are empty or invalid";
                  } else {
                    return null;
                  }

                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                  bottom: 15),
              child: TextFormField(
                obscureText: passvisibility,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    icon: Icon(Icons.visibility_off_sharp),
                    suffixIcon:IconButton(onPressed: (){
                      setState(() {
                        if(passvisibility==true){
                          passvisibility=false;
                        }else{
                          passvisibility=true;
                        }
                      });
                    },icon: Icon(passvisibility==true?Icons.visibility_off_sharp:Icons.visibility)),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (pass) {
                  if (pass!.isEmpty || pass.length < 6) {
                    return "Fields are empty or password length must be >=6";
                  }else{
                    return null;
                  }

                },
              ),
            ),
            ElevatedButton(onPressed: () {
              final valid=formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
              }else{
                Fluttertoast.showToast(
                    msg: "Invalid Username or Password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    //timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
            }, child: Text("Login")),
            TextButton(
                onPressed: () {}, child: Text("Do you have an account? Sign Up"))
          ],
        ),
      ),
    );
  }
}