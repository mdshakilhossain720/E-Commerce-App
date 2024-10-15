import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});


  @override
  State<SignUp> createState() => _SignUpState();
}
String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp=new RegExp(p);

class _SignUpState extends State<SignUp> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
            
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Regeister", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
            
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 400,
                    width: double.infinity,
            
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.length < 6) {
                              return "UserName is To Short";
                            } else if (value == "") {
                              return "please Fill UserNuber";
                            }
                            return "";
                          },
                          decoration: InputDecoration(
            
                              hintText: "UserName",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
            
                              )
                          ),
                        ),
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
            
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
            
                              )
                          ),
                        ),
                        TextFormField(
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
                                  FocusScope.of(context).unfocus();
                                },
                                child: Icon(
                                  Icons.visibility, color: Colors.black,),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
            
                              )
                          ),
                        ),
                        TextFormField(
                          validator: (value){
                            if(value == ""){
                              return "Please Fill Phone Number";
            
                            }
                            else if(value!.length<11){
                              return "Please Must Be Phone number 11";
            
                            }
                            return "";
                          },
                          decoration: InputDecoration(
            
                              hintText: "Phone",
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
                            Text("I Have Already An Account"),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: () {},
                              child: Text("Login", style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),),
                            )
                          ],
                        )
            
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
