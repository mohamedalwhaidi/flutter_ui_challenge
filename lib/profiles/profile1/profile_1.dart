import 'package:flutter/material.dart';
import 'package:flutterui001/profiles/profile1/provider.dart';
import 'package:flutterui001/profiles/profile1/user.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  // To obtain user related information
  Profile profile = ProfileProvider.getProfile();

  Color _colorOfAddress = Colors.grey.shade800;

  var _aboutMe = TextStyle(color: Colors.grey.shade400);

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
      'assets/profiles/profile1.jpg',
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
          _customPaint(context),
          _imageProfile(context),
          _content(context),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        'Sing up'.toUpperCase(),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.dehaze,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _customPaint(BuildContext context) {
    return CustomPaint(
      painter: ProfilePainter(),
      child: Container(),
    );
  }

  Widget _imageProfile(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.22,
        left: MediaQuery.of(context).size.height * 0.05,
        child: CircleAvatar(
          backgroundImage: ExactAssetImage('assets/shared/mohamed.jpg'),
          minRadius: 45,
        ));
  }

  Widget _content(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.37,
      bottom: 10,
      right: 24,
      left: 24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _columnOfInfo(),
          _following(context),
        ],
      ),
    );
  }

  Widget _columnOfInfo() {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          profile.user.name,
          style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Icon(Icons.location_on,color: _colorOfAddress,),
            Text(profile.user.address,style: TextStyle(color: _colorOfAddress),),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("ABOUT ME",style: _aboutMe),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .90,
          child: Text(
            profile.user.about,
            softWrap: true,
              style: TextStyle(fontSize: 18)
          ),
        ),
      ],
    );
  }

  Widget _following(BuildContext context) {
    return Positioned(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Followers',style: _aboutMe,),
              SizedBox(
                height: 2,
              ),
              Text(profile.followers.toString()),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Following',style: _aboutMe,),
              SizedBox(
                height: 2,
              ),
              Text(profile.following.toString()),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Friends',style: _aboutMe,),
              SizedBox(
                height: 2,
              ),
              Text(profile.friends.toString()),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    paint.color = Colors.white;
    path.addPolygon([
      Offset(0, size.height * 0.3),
      Offset(size.width, size.height * 0.375),
      Offset(size.width, size.height),
      Offset(0, size.height),
      Offset(0, size.width * 0.35),
    ], true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
