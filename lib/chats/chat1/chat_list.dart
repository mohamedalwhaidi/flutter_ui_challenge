import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tabs/inbox.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList>
    with SingleTickerProviderStateMixin {
  TabController _tabBarController;
  TextStyle _tabBarTextStyle = TextStyle(fontSize: 11);

  @override
  void initState() {
    super.initState();
    _tabBarController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabBarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          CustomPaint(
            painter: ChatBackground(),
            size: Size(double.infinity, double.infinity),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                'MESSAGES',
                style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    size: 40,
                  ),
                  onPressed: () {}),
              bottom: TabBar(
                unselectedLabelColor: Color(0xFFf76aa4),
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(),
                controller: _tabBarController,
                tabs: [
                  Text('Inbox', style: _tabBarTextStyle),
                  Text('Groups', style: _tabBarTextStyle),
                  Text('Online(25)', style: _tabBarTextStyle),
                  Text('History', style: _tabBarTextStyle),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabBarController,
              children: [
                ConversionList(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height * 0.65);
    Gradient gradient = LinearGradient(
      colors: [
        Color(0xFFef1385),
        Color(0xFFf12280),
        Color(0xFFf63d76),
        Color(0xFFf84f70),
      ],
    );
    Paint paint = Paint();
    Path path = Path();
    paint.shader = gradient.createShader(rect);
    paint.color = Colors.pink;
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width / 2 + 90, size.height * 0.45);
    path.quadraticBezierTo(
      size.width / 2,
      size.height * 0.6,
      size.width / 2 - 90,
      size.height * 0.45,
    );
    path.lineTo(0, size.height * 0.3);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
