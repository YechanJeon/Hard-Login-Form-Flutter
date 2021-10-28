import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Study App",
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(padding: EdgeInsets.fromLTRB(0, 208, 0, 0)),
        Text(
          'SURF LOG',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
        ),
        Container(padding: EdgeInsets.fromLTRB(0, 106, 0, 0)),
        Container(
          width: 324,
          height: 25,
          child: TextField(
            cursorColor: Colors.black,
            style: TextStyle(
                //마진 왼쪽으로 6정도
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            decoration: InputDecoration(
                // contentPadding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                contentPadding: EdgeInsets.only(left: 6, bottom: 16),
                hintText: '아이디를 입력해주세요',
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),
        ),
        Container(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
        Container(
            width: 324,
            height: 25,
            child: TextField(
              cursorColor: Colors.black,
              obscureText: true,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 6, bottom: 16),
                  hintText: '비밀번호를 입력해주세요.',
                  hintStyle: TextStyle(color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            )),
        Container(
          padding: EdgeInsets.fromLTRB(0, 75, 0, 0),
        ),
        Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'GO SURF',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 2.24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            width: 324,
            height: 47,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff7384DD),
                      Color(0xff84B6FF),
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(21)))),
        Container(
          padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
        ),
        Text(
          '아이디 찾기  회원가입',
          style: TextStyle(fontSize: 14),
        )
      ],
    )));
  }
}
