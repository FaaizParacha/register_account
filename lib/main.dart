import 'package:flutter/material.dart';

void main() => runApp(SecondApp());


class SecondApp extends StatefulWidget {
  @override
  _SecondAppState createState() => _SecondAppState();
}

class _SecondAppState extends State<SecondApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Material(
        child : Stack(
            children: <Widget>[
              Image(
                image: AssetImage("image/background.png"),
                color: Colors.teal.shade400,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 45.0),
                //width: double.infinity,
                //height: double.infinity,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.white,
                        child: Image(
                            image: AssetImage("image/login.png")),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text("Hello",
                        style: TextStyle(
                          fontSize: 40.0,
                        color: Colors.white
                      ),
                      ),
                       Text("you need to sign in or create an account",
                          style: TextStyle(
                            color: Colors.white
                        ),
                        ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 270.0,
                  ),
                  Material(
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 45.0,
                        ),
                        Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.black87,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 112.0,
                        ),
                        Text(
                          "Reset",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  third()
                ],
              ),
            ]
        ),
    )
    );
  }
}

class third extends StatefulWidget {
  @override
  _thirdState createState() => _thirdState();
}

class _thirdState extends State<third> {
  bool _isChecked = false;

  void onChanged(bool value){
    setState(() {
      _isChecked = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(right: 35.0,left: 35.0),
        child: Stack(
          children: <Widget>[
            Form(
                child: Theme(
                  data: ThemeData(
                    //primarySwatch: Colors.black87,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                          )
                      )
                  ),
                  child: Center(
                    //padding:  const EdgeInsets.only(left: 10.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          autofocus: true,
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(

                            prefixIcon: Icon(Icons.email,color: Colors.teal.shade400,),
                            hintText: "Enter your email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock,color: Colors.teal.shade400,),
                            hintText : "Enter your password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        TextFormField(
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock,color: Colors.teal.shade400,),
                            hintText : "Repeat password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          width: 395.0,
                          height: 45.0,
                          child: FlatButton(
                              onPressed: (){},
                              child: Text("Sign in",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.teal.shade400,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                                value: _isChecked,
                                onChanged: (bool value){onChanged(value);}
                            ),
                            Text(
                                "Stay Connected"
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Row(
                            children: <Widget>[
                              Expanded(
                                  child: Divider(
                                    color: Colors.black87,
                                    //height: 5.0,
                                  )
                              ),

                              Text("  OR  "),

                              Expanded(
                                  child: Divider(
                                    color: Colors.black87,
                                    // height: 5.0,
                                  )
                              ),
                            ]
                        ),

                        SizedBox(
                          height: 6.0,
                        ),
                        SizedBox(
                          width: 395.0,
                          height: 45.0,
                          child: FlatButton(
                              onPressed: (){},
                              child: Text("Facebook",style: TextStyle(color: Colors.white),),
                              color: Colors.indigo,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        SizedBox(
                          width: 395.0,
                          height: 45.0,
                          child: FlatButton(
                              onPressed: (){},
                              child: Text("Google",style: TextStyle(color: Colors.white),),
                              color: Colors.red,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            )
          ],
        )
    );
  }
}