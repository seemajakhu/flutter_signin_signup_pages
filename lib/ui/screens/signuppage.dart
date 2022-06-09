import 'package:flutter/material.dart';
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text(
          'Create Account', style: TextStyle(color: Colors.black),)),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(bottom: size.height * 0.15),
          child: Column(


            children: [
              Align(alignment: Alignment.topLeft,),
              Container(
                margin: EdgeInsets.only(top: 30, right: 100),
                child: Text('Create Account', style: TextStyle(fontSize: 37),
                  textAlign: TextAlign.start,
                ),

              ),

              Container(
                width: size.width * 8,
                padding: EdgeInsets.only(left: 35, top: 7, right: 45),
                child:
                Column(

                  children: [
                    Text('Enter your Name,Email and Password for sign up ',
                      style: TextStyle(
                          fontSize: 16, color: Colors.grey.shade500),),

                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.only(
                  // top: size.height*0.09,
                  right: 35,
                  top: 30,
                  left: 35,
                ),
                child: Column(
                  children: [

                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Full Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Email Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),

                    ),
                    SizedBox(

                      height: 15,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),

                    )


                  ],
                ),
              ),
              SizedBox(

                height: 19,
              ),

              Container(
                width: size.width,
                padding: EdgeInsets.only(left: 25, right: 25),
                child: ElevatedButton.icon(onPressed: () {

                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,


                  ),
                  icon: Icon(Icons.heart_broken, size: 0,),
                  label: Text('sign up'),
                ),
              ),


              Container(
                padding: EdgeInsets.only(top: 10, left: 85, right: 50),
                child: Text(
                  "By Signing up you agree to our Terms Condition & Privacy Policy",
                  style: TextStyle(fontSize: 15, color: Colors.grey),),

              ),

              Container(
                padding: EdgeInsets.only(top: 14, bottom: 14),
                child: Text("Or"),
              ),


              Column(

                children: [
                  Container(
                    width: size.width,
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: ElevatedButton.icon(onPressed: () {

                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade900,

                      ),
                      icon: Icon(Icons.facebook),
                      label: Text('Connect with Facebook'),
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: ElevatedButton.icon(onPressed: () {

                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade500,

                      ),
                      icon: Image.network(
                        'https://img.icons8.com/fluency/344/google-logo.png',
                        width: 27, height: 27,),

                      label: Text('Connect with Google'),
                    ),
                  ),


                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}

