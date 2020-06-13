import 'package:flutter/material.dart';
import 'package:flutterui001/registrations/registration4/background1.dart';
import 'package:flutterui001/registrations/registration4/background2.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration4 extends StatefulWidget {
  @override
  _Registration4State createState() => _Registration4State();
}

class _Registration4State extends State<Registration4> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  Key _key = GlobalKey<FormState>();
  bool _visible = false;

  bool _obscureText = true;
  Icon _showPassword;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visible = true;
      });
    });
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
          Container(color: Color(0xFF04192A)),
          CustomPaint(
            painter: Background2(),
            size: Size(double.infinity, double.infinity),
          ),
          CustomPaint(
            painter: Background1(),
            size: Size(double.infinity, double.infinity),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Stack(
                children: <Widget>[
                  _imageProfile(context),
                  _title(context),
                  _form(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageProfile(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: _visible
          ? MediaQuery.of(context).size.height * 0.20
          : MediaQuery.of(context).size.height * 0.18,
      left: MediaQuery.of(context).size.height * 0.2 - 25,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: _visible ? 1 : 0.5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
            image: DecorationImage(
                image: ExactAssetImage('assets/shared/mohamed.jpg')),
          ),
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      // So as not to exceed the image
      bottom: MediaQuery.of(context).size.height * 0.25,
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

  Widget _form(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // To make Column widgets start from below
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _pleaseLogin(context),
                _emailForm(context),
                _passwordForm(context),
                _followButton(context),
                _rowOfCreateAnAccount(context),
                SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pleaseLogin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 28),
      child: Text(
        'Please login to continue',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _emailForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        keyboardType: TextInputType.emailAddress,
        controller: _emailController,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.email, color: Colors.grey.shade500),
          hintText: 'email@address.com',
//          labelText: 'You email',
//          labelStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
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
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.vpn_key, color: Colors.grey.shade500),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.remove_red_eye,
            color: Colors.grey.shade500,
          ),
        ),
//        labelText: 'Password',
        alignLabelWithHint: true,
//        labelStyle: TextStyle(
//          color: Colors.grey.shade500,
//          fontSize: 16,
//        ),
        hintText: '*************',
        hintStyle: TextStyle(
          color: Colors.grey.shade500,
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

  Widget _followButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Align(
        child: MaterialButton(
          color: Colors.deepOrange,
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
                color: Colors.deepOrange),
          ),
        ),
      ],
    );
  }
}
