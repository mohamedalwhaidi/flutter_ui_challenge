import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui001/registrations/registration5/backgroundCircles.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration5 extends StatefulWidget {
  @override
  _Registration5State createState() => _Registration5State();
}

class _Registration5State extends State<Registration5> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  Key _key = GlobalKey<FormState>();
  bool _obscureText = true;
  Size _sizeOfCustomPaints = Size(double.infinity, double.infinity);

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
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primaryColor: Colors.white,
      ),
      child: Stack(
        children: <Widget>[
          Container(color: Colors.grey.shade900),
          CustomPaint(
            painter: BackgroundCircle1(),
            size: _sizeOfCustomPaints,
          ),
          CustomPaint(
            painter: BackgroundCircle2(),
            size: _sizeOfCustomPaints,
          ),
          CustomPaint(
            painter: BackgroundCircle3(),
            size: _sizeOfCustomPaints,
          ),
          CustomPaint(
            painter: BackgroundCircle4(),
            size: _sizeOfCustomPaints,
          ),
          CustomPaint(
            painter: BackgroundCircle5(),
            size: _sizeOfCustomPaints,
          ),
          _form(context),
        ],
      ),
    );
  }

  Widget _form(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _title(context),
                  _emailForm(context),
                  _passwordForm(context),
                  _signInButton(context),
                  _rowOfCreateAnAccount(context),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Theme(
        data: ThemeData(primaryColor: Colors.white),
        child: Column(
          children: <Widget>[
            Text('Welcome back to', style: TextStyle(color: Colors.white)),
            Text(
              'BooStock',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        keyboardType: TextInputType.emailAddress,
        controller: _emailController,
        decoration: InputDecoration(
          fillColor: Colors.white24,
          filled: true,
          prefixIcon: Icon(Icons.email, color: Colors.white),
          hintText: 'email@address.com',
          hintStyle: TextStyle(
            color: Colors.white60,
            fontSize: 12,
          ),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue.shade700)),
        ),
      ),
    );
  }

  Widget _passwordForm(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      controller: _passwordController,
      obscureText: _obscureText,
      decoration: InputDecoration(
        fillColor: Colors.white24,
        filled: true,
        prefixIcon: Icon(Icons.vpn_key, color: Colors.white),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.remove_red_eye,
            color: Colors.white60,
          ),
        ),
        alignLabelWithHint: true,
        hintText: '*************',
        hintStyle: TextStyle(
          color: Colors.white60,
          fontSize: 12,
          letterSpacing: 5,
        ),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade700)),
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 50),
      child: Align(
        child: MaterialButton(
          color: Color(0xffD4A915),
          onPressed: () {},
          child: Text(
            'SIGN IN',
            style: TextStyle(color: Colors.white),
          ),
          minWidth: double.infinity,
          height: 40,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
        ),
      ),
    );
  }

  Widget _rowOfCreateAnAccount(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Don\'t have an account?',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        FlatButton(
          padding: EdgeInsets.only(right: 16),
          onPressed: () {},
          child: Text(
            'Create One',
            style: TextStyle(
                fontSize: 12,
                decoration: TextDecoration.underline,
                color: Color(0xffD4A915)),
          ),
        ),
      ],
    );
  }
}
