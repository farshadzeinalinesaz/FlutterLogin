import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'HomePage.dart';

void main() => runApp(MaterialApp(
      home: LoginHome(),
    ));

final userNameController = TextEditingController();
final passwordController = TextEditingController();


final appBar = AppBar(
  title: Text('Login Page'),
  centerTitle: true,
  backgroundColor: Colors.blue,
);

final loginHeader = Center(
  child: CircleAvatar(
    child: Image.asset('assets/avatar.png'),
    radius: 50,
  ),
);

final divider = Divider(
  color: Colors.grey,
  height: 30.0,
);

final sizedBox = SizedBox(width: 8.0);

final txtUserName = TextField(
  controller: userNameController,
    decoration: InputDecoration(
        hintText: 'Please Enter Your User Name',
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))));

final txtPassword = TextField(
  controller: passwordController,
  obscureText: true,
  decoration: InputDecoration(
      hintText: 'Please Enter Your Password',
      contentPadding: EdgeInsets.all(8.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
);

class LoginHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            loginHeader,
            divider,
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      'User Name',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  sizedBox,
                  Expanded(flex: 3, child: txtUserName)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Text('Password',
                          style: TextStyle(color: Colors.black, fontSize: 16))),
                  sizedBox,
                  Expanded(flex: 3, child: txtPassword)
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(child: FlatButton.icon(icon: Icon(Icons.border_color), label: Text('SIGN-UP'),onPressed: (){

                  })),
                  sizedBox,
                  Expanded(child: FlatButton.icon(color: Colors.blue, icon: Icon(Icons.beenhere), label: Text('LOGIN'),onPressed: (){
                    if(userNameController!=null && userNameController.text == 'myusername' && passwordController!=null && passwordController.text=='mypassword')
                      {
                        //Scaffold.of(context).showSnackBar(SnackBar(content: Text('Welcome')));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      }
                  })),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
