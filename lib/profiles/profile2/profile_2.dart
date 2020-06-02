import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterui001/profiles/profile2/provider.dart';
import 'package:flutterui001/profiles/profile2/user.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  Profile profile = ProfileProvider.getProfile();

  TextStyle _textStyleName =
      TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: Colors.white);
  TextStyle _textStyleAddress = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white70);
  TextStyle _follow = TextStyle(color: Colors.grey.shade400, fontSize: 14);

  TextStyle _styleOfNumFollowing = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey.shade800);
  bool _visible1 = false;
  bool _visible2 = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 700), () {
      setState(() {
        _visible1 = true;
      });
    }).then((_) {
      _visible2 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Stack(
        children: <Widget>[
          _imageOfAppBar(context),
          _scaffold(context),
        ],
      ),
    );
  }

  Widget _imageOfAppBar(BuildContext context) {
    return Image.asset(
      'assets/profiles/profile2.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
    );
  }

  Widget _scaffold(BuildContext context) {
    return Scaffold(
      //To make the color transparent
      backgroundColor: Colors.transparent,
      appBar: _appBar(context),
      body: Stack(
        children: <Widget>[
          _titleProfile(context),
          _body(context),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.dehaze,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _titleProfile(BuildContext context) {
    return Column(
      children: <Widget>[
        _stackOfTitle(context),
        _nameAndAddress(context),
      ],
    );
  }

  Widget _stackOfTitle(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _visible1 ? 1 : 0,
            child: CircleAvatar(
              backgroundImage: ExactAssetImage('assets/shared/mohamed.jpg'),
              maxRadius: 40,
            ),
          ),
        ),
      ],
    );
  }

  Widget _nameAndAddress(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            profile.user.name,
            style: _textStyleName,
          ),
        ),
        Text(
          profile.user.address,
          style: _textStyleAddress,
        )
      ],
    );
  }

  Widget _body(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.28,
      bottom: 0,
      right: 0,
      left: 0,
      child: Stack(
        children: <Widget>[
          Container(color: Colors.white),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                _rowOfFollowing(context),
                Divider(height: 30, thickness: 1),
                _aboutMeContent(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowOfFollowing(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      opacity: _visible2 ? 1 : 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Followers'.toUpperCase(), style: _follow),
              SizedBox(height: 4),
              Text(profile.followers.toString(), style: _styleOfNumFollowing),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Following'.toUpperCase(), style: _follow),
              SizedBox(height: 4),
              Text(
                profile.following.toString(),
                style: _styleOfNumFollowing,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Friends'.toUpperCase(), style: _follow),
              SizedBox(height: 4),
              Text(
                profile.friends.toString(),
                style: _styleOfNumFollowing,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _aboutMeContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("ABOUT ME",
            style: GoogleFonts.workSans(fontWeight: FontWeight.w600)),
        SizedBox(height: 15),
        Container(
          height: 160,
          child: ListView(
            children: <Widget>[
              Text(profile.user.about,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600)),
            ],
          ),
        ),
        SizedBox(height: 15),
        _friends(context),
      ],
    );
  }

  Widget _friends(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('FRIENDS (${profile.friends})',
            style: GoogleFonts.workSans(fontWeight: FontWeight.w600)),
        SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(25, (index) {
              return Container(
                margin: EdgeInsets.only(right: 15),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: ExactAssetImage('assets/shared/mohamed.jpg'),
                      fit: BoxFit.cover),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
