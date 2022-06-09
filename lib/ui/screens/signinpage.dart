import 'package:flutter/material.dart';
import 'package:loginsscreens/ui/screens/signuppage.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  bool isPassword = true;
  Widget build(BuildContext context) {
    Size size=MediaQuery    .of(context).size;
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(bottom: size.height*0.15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Align(alignment: Alignment.topLeft,),
              Container(

                margin: EdgeInsets.only(top:115,left: 30) ,
                child: Text('Welcome',textAlign: TextAlign.left,style: TextStyle(fontSize:40),
                  // textAlign: TextAlign.left,
                ),

              ),
              Container(
                width: size.width*8,
                padding: EdgeInsets.only(top: 5),
                child:
                Column(
                  children: [

                    Container(
                      margin:EdgeInsets.only(right: 87,top: 8,left: 28),
                      child:  Text('Enter your Email address to sign in.',style: TextStyle(color: Colors.grey,fontSize: 17),),
                    ),
                  ],
                ),
              ),

              Container(
                margin:EdgeInsets.only(left: 33,top: 8),
                child: Text("Enjoy your food:)",style: TextStyle(color: Colors.grey,fontSize: 17),
                ),
              ),
              SizedBox(

                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: size.height*0.001,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [

                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Enter Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(

                      children: [
                        Expanded( flex: 8,
                          child: TextField(

                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Enter Password",

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),

                          ),

                        ),


                      ],
                    ),




                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(left: 200),
                child: Text('Forget password?',textAlign: TextAlign.center,),
              ),
              SizedBox(

                height: 30,
              ),
              Container(
                width: size.width*0.89,
                padding: EdgeInsets.only(left: 25),
                child: ElevatedButton.icon(onPressed: (){

                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,


                  ),
                  icon: Icon(Icons.heart_broken,size: 0,),
                  label: Text('Sign in'),
                ),
              ),
              SizedBox(

                height: 18,
              ),
              Row(
                children: [
                  Text("Don't have Account?"),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => App(),
                        ),
                      );
                    },

                    child:Text("Create new account", style: TextStyle(color: Colors.green),
                    ),

                  )


                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Container(
                padding: EdgeInsets.only(top: 14,bottom: 14,left: 185),
                child: Text("Or"),
              ),


              Column(

                children: [
                  Container(
                    width: size.width*0.89,
                    padding: EdgeInsets.only(left: 25),
                    child: ElevatedButton.icon(onPressed: (){

                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade900,

                      ),
                      icon: Icon(Icons.facebook),
                      label: Text('Connect with Facebook'),
                    ),
                  ),
                  Container(
                    width: size.width*0.89,
                    padding: EdgeInsets.only(left: 25),
                    child: ElevatedButton.icon(onPressed: (){

                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade500,

                      ),
                      icon: Image.network('https://img.icons8.com/fluency/344/google-logo.png',width: 27,height: 27,),
                      label: Text('Coonect with Google'),
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
