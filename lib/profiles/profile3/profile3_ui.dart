import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui001/profiles/profile3/profile.dart';
import 'package:flutterui001/profiles/profile3/profile_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile3 extends StatefulWidget {
  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  Profile _profile = ProfileProvider.getProfile();
  TextStyle _textStyleName = TextStyle(
      fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black87);
  TextStyle _textStyleAddress = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black45);
  TextStyle _follow = TextStyle(color: Colors.grey.shade400, fontSize: 14);
  TextStyle _styleOfNumFollowing = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey.shade800);

  bool _visible = false;
  bool _visible2 = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visible = true;
      });
    });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _visible2 = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _imageOfAppBar(context),
        _scaffold(context),
      ],
    );
  }

  Widget _imageOfAppBar(BuildContext context) {
    return Image.asset(
      'assets/profiles/profile3.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
    );
  }

  Widget _scaffold(BuildContext context) {
    return Scaffold(
      //To make the color transparent
      backgroundColor: Colors.transparent,
      appBar: _appBar(context),
      body: Stack(
        children: <Widget>[
          _boxContent(context),
          _profileImage(context),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_backspace,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        Icon(Icons.more_vert),
      ],
    );
  }

  Widget _boxContent(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      top: MediaQuery.of(context).size.height * .07,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.only(top: 50),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10),
              topRight: const Radius.circular(10)),
        ),
        child: ListView(
          children: <Widget>[
            _nameAndAddress(context),
            _followButton(context),
            Divider(height: 30, thickness: 1),
            _rowOfFollowing(context),
            Divider(height: 30, thickness: 1),
            AnimatedOpacity(
                duration: Duration(seconds: 1),opacity: _visible2 ? 1:0, child: _photos(context)),
            AnimatedOpacity( duration: Duration(seconds: 1),opacity: _visible2 ? 1:0,child: _aboutMeContent(context)),
            SizedBox(height: 15),
            AnimatedOpacity( duration: Duration(seconds: 1),opacity: _visible2 ? 1:0,child: _friends(context)),
          ],
        ),
      ),
    );
  }

  Widget _profileImage(BuildContext context) {
    double finalPosition = MediaQuery.of(context).size.height * 0.07 - 50;
    double startPosition = MediaQuery.of(context).size.height * 0.07 - 75;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 400),
      top: _visible ? finalPosition : startPosition,
      left: MediaQuery.of(context).size.width / 2 - 50,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: _visible ? 1 : 0,
        child: CircleAvatar(
          backgroundImage: ExactAssetImage('assets/shared/mohamed.jpg'),
          maxRadius: 40,
        ),
      ),
    );
  }

  Widget _nameAndAddress(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(_profile.user.name, style: _textStyleName),
        ),
        SizedBox(height: 3),
        Text(_profile.user.address, style: _textStyleAddress),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _followButton(BuildContext context) {
    return Align(
      child: MaterialButton(
        color: Colors.red.shade800,
        onPressed: () {},
        child: AnimatedPadding(
          duration: Duration(milliseconds: 500),
          padding: EdgeInsets.symmetric(
              horizontal: _visible ? 16 : 2, vertical: 10),
          child: Text(
            'FOLLOW',
            style: TextStyle(color: Colors.white),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );
  }

  Widget _rowOfFollowing(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
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
      ),
    );
  }

  Widget _photos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('PHOTOS (${_profile.photos})',
              style: GoogleFonts.workSans(fontWeight: FontWeight.w600)),
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(25, (index) {
                return Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: ExactAssetImage('assets/shared/mohamed.jpg'),
                        fit: BoxFit.cover),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _aboutMeContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10),
      child: Column(
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
                Text(_profile.user.about,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _friends(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10,bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('FRIENDS (${_profile.friends})',
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
      ),
    );
  }
}
