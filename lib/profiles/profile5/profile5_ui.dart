import 'package:flutter/material.dart';
import 'package:flutterui001/profiles/profile5/profile.dart';

class Profile5 extends StatefulWidget {
  @override
  _Profile5State createState() => _Profile5State();
}

class _Profile5State extends State<Profile5>
    with SingleTickerProviderStateMixin {
  Profile _profile = ProfileProvider.getProfile();
  Color _textColorOfTabBar = Colors.grey.shade700;
  Color _textLabelColorOfTabBar = Colors.grey.shade700;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.black)),
      child: Scaffold(
        appBar: _appBar(context),
        body: _bodyContent(context),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          _imageOfProfile(context),
          _nameAndJob(context),
          _followButton(context),
          SizedBox(
            height: 35,
          ),
          _contentTabBarContent(context),
        ],
      ),
    );
  }

  Widget _imageOfProfile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: CircleAvatar(
        backgroundImage: ExactAssetImage('assets/shared/mohamed.jpg'),
        maxRadius: 60,
      ),
    );
  }

  Widget _nameAndJob(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        children: <Widget>[
          Text(
            _profile.user.name,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 22,
                color: Colors.grey.shade800),
          ),
          SizedBox(height: 5),
          Text(_profile.user.profession,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade500)),
        ],
      ),
    );
  }

  Widget _followButton(BuildContext context) {
    return MaterialButton(
      color: Colors.red.shade800,
      onPressed: () {},
      child: Text(
        'FOLLOW',
        style: TextStyle(color: Colors.white),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }

  Widget _contentTabBarContent(BuildContext context) {
    return Flexible(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.shade200),
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: TabBar(
              labelColor: _textColorOfTabBar,
              indicatorColor: _textLabelColorOfTabBar,
              indicatorWeight: 2,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 32),
              controller: _tabController,
              tabs: <Widget>[
                Tab(text: 'PHOTOS'),
                Tab(text: 'VIDEOS'),
                Tab(text: 'POSTS'),
                Tab(text: 'FRIENDS'),
              ],
            ),
          ),
          Flexible(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                _photos(context),
                _videos(context),
                _posts(context),
                _friends(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _photos(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 18, left: 18, bottom: 16),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.photos().map((photos) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage(photos)),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _videos(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 18, left: 18, bottom: 16),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.videos().map((photos) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage(photos)),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _posts(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 18, left: 18, bottom: 16),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.photos().map((photos) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage(photos)),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _friends(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 18, left: 18, bottom: 16),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.friends().map((photos) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage(photos)),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
