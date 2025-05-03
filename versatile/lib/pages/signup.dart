import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:versatile/bottomNavController.dart';
import 'package:versatile/pages/login.dart';

import '../widget/support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

String? name, email, password;
TextEditingController namecontroller = new TextEditingController(); 
TextEditingController passwordcontroller = new TextEditingController(); 
TextEditingController emailcontroller = new TextEditingController(); 



final _formkey = GlobalKey<FormState>();

registration()async{
  if(password!=null && name!=null &&  email !=null){

    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);
      
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text("Registered Successfully", style: TextStyle(fontSize: 20.0),)));
        Navigator.push(context, MaterialPageRoute(builder:(context)=>Bottomnavcontroller()));
    } on FirebaseException catch (e) {
      if( e.code =='weak-password'){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text("Password is too weak", style: TextStyle(fontSize: 20.0),)));


      }
      else if(e.code == 'email-alrady-in-use'){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text("Account already exsists", style: TextStyle(fontSize: 20.0),)));


      }
    }




  }


   
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0, bottom: 40.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/login.png"),
                Center(
                    child: Text(
                  "Sign Up",
                  style: Appwidget.semiBold(),
                )),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                    child: Text(
                  "Enter the details below to continue.",
                  style: Appwidget.lightText(),
                )),
                 SizedBox(height: 40.0),
                Text(
                  "Name",
                  style: Appwidget.semiBold(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      validator: (value){
                        if(value==null|| value.isEmpty){
                          return 'please enter your name';
                        }
                        else
                        return null;

                      },




                      controller: namecontroller,
            
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "name"),
                    )),
                SizedBox(height: 20.0),
                Text(
                  "Email",
                  style: Appwidget.semiBold(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(

                       validator: (value){
                        if(value==null|| value.isEmpty){
                          return 'please enter your email';
                        }
                        else
                        return null;

                      },
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "email"),
                    )),
                SizedBox(height: 20.0),
                Text(
                  "Password",
                  style: Appwidget.semiBold(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      obscureText: true,

                       validator: (value){
                        if(value==null|| value.isEmpty){
                          return 'please enter your password';
                        }
                        else
                        return null;

                      },

                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "password"),
                    )),
                SizedBox(height: 20.0),
               
                SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    if(_formkey.currentState!.validate()){
                      setState(() {
                        name = namecontroller.text;
                        email=emailcontroller.text;
                        password= passwordcontroller.text;


                        
                      });
                    }
                    registration();
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "have an account?  ",
                      style: Appwidget.lightText(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Login()));
                      },
                      child: Text(
                        "log in",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
