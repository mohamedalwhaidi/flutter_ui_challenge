import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui001/registrations/registration3/backgound1.dart';
import 'package:flutterui001/registrations/registration3/background2.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration3 extends StatefulWidget {
  @override
  _Registration3State createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  Key _key = GlobalKey<FormState>();
  Color _colorOfForgetAndSingUp = Color(0xFFD4F960);
  Color _colorOfButton = Color(0xFFF9EA60);

  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primaryColor: Colors.white,
      ),
      child: Stack(
        children: <Widget>[
          _backgroundImage(context),
          _background1(),
          _background2(),
          _form(context),
        ],
      ),
    );
  }

  Widget _backgroundImage(BuildContext context) {
    return Image.asset(
      'assets/registration/reg3.jpg',
      fit: BoxFit.cover,
    );
  }

  Widget _background1() {
    return Opacity(
      opacity: 0.5,
      child: CustomPaint(
        painter: Background1(
          leftPoint: 0.3,
          midWidthPoint1: 0.75,
          midHighPoint2: 0.55,
          rightPoint: 0.35,
        ),
        size: Size(double.infinity, double.infinity),
      ),
    );
  }

  Widget _background2() {
    return CustomPaint(
      painter: Background2(
        leftPoint: 0.4,
        midWidthPoint1: 0.75,
        midHighPoint2: 0.55,
        rightPoint: 0.45,
      ),
      size: Size(double.infinity, double.infinity),
    );
  }

  Widget _form(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Padding(
              padding: EdgeInsets.only(left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // To make Column widgets start from below
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _loginText(context),
                  SizedBox(height: 20),
                  _emailForm(context),
                  SizedBox(height: 16),
                  _passwordForm(context),
                  SizedBox(height: 20),
                  _rowOfForgetAndSignUp(context),
                  _buttonGo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginText(BuildContext context) {
    return Text(
      'Login to start!',
      style: TextStyle(
          fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: _emailController,
        decoration: InputDecoration(
          hintText: 'email@address.com',
          labelText: 'You email',
          hintStyle: TextStyle(
            color: Colors.white38,
            fontSize: 12,
          ),
          labelStyle: TextStyle(color: Colors.white, fontSize: 16),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusColor: Colors.white,
        ),
      ),
    );
  }

  Widget _passwordForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          hintText: '***************',
          hintStyle: TextStyle(
            color: Colors.white38,
            fontSize: 12,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }

  Widget _rowOfForgetAndSignUp(BuildContext context) {
    return Transform.translate(
      offset: Offset(-16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              'Forget Password?',
              style: TextStyle(color: _colorOfForgetAndSingUp),
            ),
          ),
          Transform.translate(
            offset: Offset(-15, 0),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Sing up',
                style: TextStyle(color: _colorOfForgetAndSingUp),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonGo(BuildContext context) {
    return Transform.translate(
      offset: Offset(240, -140),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration:
              BoxDecoration(color: _colorOfButton, shape: BoxShape.circle),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Go',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
