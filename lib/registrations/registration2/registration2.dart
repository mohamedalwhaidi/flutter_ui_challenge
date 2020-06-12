import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration2 extends StatefulWidget {
  @override
  _Registration1State createState() => _Registration1State();
}

class _Registration1State extends State<Registration2> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  Key _key = GlobalKey<FormState>();
  Color _colorOfButton = Color(0xFFD4F960);

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
      'assets/registration/reg2.jpg',
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget _scaffold(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // To make Column widgets start from below
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _signInText(context),
                SizedBox(height: 20),
                _form(context),
                SizedBox(height: 5),
                _loginButton(context),
                SizedBox(height: 30),
                _columnOfForgetAndCreateAnAccount(context),
                SizedBox(
                  height: 55,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _signInText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        'Sign in',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _form(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Theme(
        data: ThemeData(primaryColor: Colors.white),
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              _emailForm(context),
              SizedBox(height: 16),
              _passwordForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailForm(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
      decoration: InputDecoration(
        hintText: 'email@address.com',
        labelText: 'Email',
        hintStyle: TextStyle(
          color: Colors.white38,
          fontSize: 12,
        ),
        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
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
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 14,
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
    );
  }

  Widget _loginButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 170,
            height: 50,
            decoration: BoxDecoration(
              color: _colorOfButton,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
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
        Icon(Icons.arrow_forward, color: Colors.green.shade900),
      ],
    );
  }

  Widget _columnOfForgetAndCreateAnAccount(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Transform.translate(
          offset: Offset(0, 10),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              'Forget Password?',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Don\'t have an account?',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}
