import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui001/profiles/profile4/profile.dart';
import 'package:flutterui001/profiles/profile4/profile_provider.dart';
import 'package:flutterui001/profiles/profile5/profile5_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile4 extends StatefulWidget {
  @override
  _Profile4State createState() => _Profile4State();
}

class _Profile4State extends State<Profile4> {
  Profile _profile = ProfileProvide.getProfile();
  TextStyle _follow = TextStyle(color: Colors.grey.shade400, fontSize: 14);
  TextStyle _styleOfNumFollowing = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey.shade800);
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _imageOfBackground(context),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _appBar(context),
          body: AnimatedOpacity(
            opacity: _visible ? 1 : 0,
            duration: Duration(seconds: 1),
            child: Stack(
              children: <Widget>[
                _content(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _imageOfBackground(BuildContext context) {
    return Image.asset(
      'assets/profiles/profile4.jpg',
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 14),
          child: IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile5()),
                );
              }),
        ),
      ],
    );
  }

  Widget _content(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .35,
      bottom: 20,
      left: 15,
      right: 15,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        decoration: new BoxDecoration(
          color: Color(0xffebebeb),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(10),
            topRight: const Radius.circular(10),
            bottomLeft: const Radius.circular(10),
            bottomRight: const Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _rowOfImageProfileAndFollow(context),
            _name(context),
            _professionAndAbout(context),
            Spacer(
              flex: 2,
            ),
            Divider(height: 30, thickness: 1),
            _rowOfFollowing(context)
          ],
        ),
      ),
    );
  }

  Widget _rowOfImageProfileAndFollow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _imageOfProfile(context),
        Spacer(
          flex: 2,
        ),
        MaterialButton(
          minWidth: 90,
          padding: EdgeInsets.only(left: 15, right: 15),
          color: Color(0xffebebeb),
          onPressed: () {},
          child: Text(
            'ADD FRIEND',
            style: GoogleFonts.openSans(
                color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        SizedBox(width: 5),
        MaterialButton(
          minWidth: 50,
          padding: EdgeInsets.only(left: 15, right: 15),
          color: Color(0xff343a40),
          onPressed: () {},
          child: Text(
            'FOLLOW',
            style: GoogleFonts.openSans(color: Colors.white, fontSize: 11),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ],
    );
  }

  Widget _imageOfProfile(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 10,
          blurRadius: 10,
          offset: Offset(0, 0), // changes position of shadow
        )
      ]),
      child: CircleAvatar(
        backgroundImage: ExactAssetImage('assets/shared/mohamed.jpg'),
        maxRadius: 40,
      ),
    );
  }

  Widget _name(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, bottom: 5),
      child: Text(
        _profile.user.name,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 22,
            color: Colors.grey.shade800),
      ),
    );
  }

  Widget _professionAndAbout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          _profile.user.profession,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
        ),
        SizedBox(height: 10),
        Text(
          _profile.user.about,
          style: TextStyle(fontSize: 14.5, color: Colors.black),
        )
      ],
    );
  }

  Widget _rowOfFollowing(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('Followers'.toUpperCase(), style: _follow),
            SizedBox(height: 4),
            Text(_profile.followers.toString(), style: _styleOfNumFollowing),
          ],
        ),
        Column(
          children: <Widget>[
            Text('Following'.toUpperCase(), style: _follow),
            SizedBox(height: 4),
            Text(
              _profile.following.toString(),
              style: _styleOfNumFollowing,
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text('Friends'.toUpperCase(), style: _follow),
            SizedBox(height: 4),
            Text(
              _profile.friends.toString(),
              style: _styleOfNumFollowing,
            ),
          ],
        ),
      ],
    );
  }
}
