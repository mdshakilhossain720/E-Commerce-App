
import 'package:ecommercefirbase/screen/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp=new RegExp(p);
final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  void validation() {
    // Make sure to properly check the form state
    final FormState? form = _formKey.currentState;

    // Use null-aware checking to ensure form is not null
    if (form != null && form.validate()) {
      print("yes");
    } else {
      print("No");
    }
  }
  bool obserText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 300,
                width: double.infinity,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Login",style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,

                    ),),
                    TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Please Fill The Email";
                        }
                        else if(!regExp.hasMatch(value!)){
                          return "Email Is InVaild";
                        }
                        return "";
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      obscureText: obserText,
                      validator: (value){
                        if(value==""){
                          return "Please Fill Password";
                        }else if(value!.length <8){
                          return "Password Is To Short";

                        }
                        return "";
                      },
                      decoration: InputDecoration(

                          suffixIcon: GestureDetector(
                            onTap: () {
                             setState(() {
                               obserText=obserText;
                             });
                            },
                            child: Icon(
                              obserText==true ?
                              Icons.visibility:Icons.visibility_off, color: Colors.black,),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(

                          )
                      ),
                    ),
                    Container(
                        height: 60,
                        width: double.infinity,

                        child: ElevatedButton(onPressed: () {
                          validation();

                        }, child: Text(
                            "Regeister"))),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I Have Not An Account"),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
                          },
                          child: Text("Sign Up", style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),
                        ),
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
