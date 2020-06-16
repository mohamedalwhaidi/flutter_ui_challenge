import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration6 extends StatefulWidget {
  @override
  _Registration6State createState() => _Registration6State();
}

class _Registration6State extends State<Registration6> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  final Key _key = GlobalKey<FormState>();
  bool _obscureText = true;
   Color _blue;
   Color _red ;
  Color _orange ;
  static BorderRadius _borderRadius = BorderRadius.all(Radius.circular(50));
  final InputBorder _inputBorder = OutlineInputBorder(
      borderRadius: _borderRadius,
      borderSide: BorderSide(color: Colors.grey.shade900));

  final InputBorder _focusedBorder = OutlineInputBorder(borderRadius: _borderRadius,
      borderSide: BorderSide(color: Colors.white));

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _blue = Color(0XFF2273D7);
     _red = Color(0XFFEB4137);
     _orange = Color(0XFFFFA810);
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
          _form(context),
        ],
      ),
    );
  }
  Widget _backgroundImage(BuildContext context) {
    return Image.asset(
      'assets/registration/waves_bg_reg6.jpg',
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
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
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _title(context),
                  _emailForm(context),
                  _passwordForm(context),
                  _signInButton(context),
                  _rowOfCreateAnAccount(context),
                  // SizedBox(height: 50),
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
      padding: EdgeInsets.only(bottom: 20),
      child: Theme(
        data: ThemeData(primaryColor: Colors.white),
        child: Column(
          children: <Widget>[
            Text('Welcome back to', style: TextStyle(color: Colors.white,fontSize: 16)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Flutter',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: _red),
                ),
                Text(
                  'Marathon',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: _orange),
                ),
              ],
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
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.emailAddress,
        controller: _emailController,
        decoration: InputDecoration(
          fillColor: Colors.black45,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(Icons.email, color: Colors.white),
          ),
          hintText: 'email@address.com',
          hintStyle: TextStyle(
            color: Colors.white60,
            fontSize: 12,
          ),
          enabledBorder: _inputBorder,
          border: _inputBorder,
          focusedBorder:_focusedBorder,
          ),
      ),
    );
  }

  Widget _passwordForm(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: _passwordController,
      obscureText: _obscureText,
      decoration: InputDecoration(
        fillColor: Colors.black45,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Icon(Icons.vpn_key, color: Colors.white),
        ),
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
        hintText: '**********',
        hintStyle: TextStyle(
          color: Colors.white60,
          fontSize: 12,
          letterSpacing: 10,
        ),
        enabledBorder: _inputBorder,
        border: _inputBorder,
        focusedBorder:_focusedBorder,
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 20),
      child: Align(
        child: MaterialButton(
          color: _red,
          onPressed: () {},
          child: Text(
            'SIGN IN',
            style: TextStyle(color: Colors.white),
          ),
          minWidth: double.infinity,
          height: 50,
          shape: RoundedRectangleBorder(
              borderRadius:   BorderRadius.all(Radius.circular(30))),
        ),
      ),
    );
  }

  Widget _rowOfCreateAnAccount(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45),
      child: Row(
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
                  color: _blue),
            ),
          ),
        ],
      ),
    );
  }
}
