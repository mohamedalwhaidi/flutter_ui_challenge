import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration1 extends StatefulWidget {
  @override
  _Registration1State createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  Key _key = GlobalKey<FormState>();
  Color _colorOfButton = Color(0xFFF7C41C);

  @override
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
      data: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      child: Stack(
        children: <Widget>[
          _backgroundImage(context),
          _scaffold(context),
        ],
      ),
    );
  }

  Widget _backgroundImage(BuildContext context) {
    return Image.asset(
      'assets/registration/screenShotRegistration1.jpg',
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.height,
    );
  }

  Widget _scaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // To make Column widgets start from below
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _welcomeBack(context),
                SizedBox(height: 5),
                _signInYourAccount(context),
                SizedBox(height: 50),
                _form(context),
                SizedBox(height: 20),
                _rowOfCreateAnAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _form(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Theme(
          data: ThemeData(primaryColor: Colors.white),
          child: Stack(
            children: <Widget>[
              Form(
                key: _key,
                child: Column(
                  children: <Widget>[
                    _emailForm(context),
                    SizedBox(height: 16),
                    _passwordForm(context),
                  ],
                ),
              ),
              _forgetPassword(context),
              _loginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailForm(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
      decoration: InputDecoration(
        hintText: 'email@address.com',
        labelText: 'Your email',
        hintStyle: TextStyle(
          color: Color(0xFF6B6B6B),
          fontSize: 12,
        ),
        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6B6B6B))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6B6B6B))),
        focusColor: Colors.white,
      ),
    );
  }

  Widget _passwordForm(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'password',
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        hintText: '***************',
        hintStyle: TextStyle(
          color: Color(0xFF6B6B6B),
          fontSize: 12,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6B6B6B)),
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6B6B6B))),
      ),
    );
  }

  Widget _forgetPassword(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: InkWell(
        onTap: () {},
        child: Text(
          'Forget Password?',
          style: TextStyle(color: _colorOfButton),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
        onTap: () {},
        child: Transform.translate(
          offset: Offset(32, 24),
          child: Container(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
              color: _colorOfButton,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: _rowOFLogin(context),
          ),
        ),
      ),
    );
  }

  Widget _rowOFLogin(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('LOGIN',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
        SizedBox(width: 8),
        Icon(Icons.arrow_forward, color: Colors.white),
      ],
    );
  }

  Widget _rowOfCreateAnAccount(BuildContext context) {
    var _colorOfCreateOne = Colors.white60;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Don\'t have an account?',
          style: TextStyle(color: _colorOfCreateOne),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Create One',
            style: TextStyle(
                decoration: TextDecoration.underline, color: _colorOfCreateOne),
          ),
        ),
      ],
    );
  }

  Widget _welcomeBack(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        'Welcome back!',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }

  Widget _signInYourAccount(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        'Sign in your account',
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
