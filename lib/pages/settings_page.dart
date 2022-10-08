import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titlesStyle = GoogleFonts.notoSansDisplay(
        textStyle: TextStyle(color: Colors.black, fontSize: 14));

    return Container(
      padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xFFAEFFFA), Color(0xFF00C2FD)],
      )),
      // color: Colors.transparent,

      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
            child: Text(
              "Settings",
              style: GoogleFonts.notoSansDisplay(
                  textStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ),
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey,
                width: 7,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(7, 7, 7, 0),
                  color: Colors.transparent,
                  child: ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.security,
                        color: Colors.green,
                      ),
                      title: Text('Security & Status'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                  color: Colors.transparent,
                  child: ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.security,
                        color: Colors.green,
                      ),
                      title: Text('Security & Status'),
                      trailing: Icon(Icons.arrow_forward_ios)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 0, 7, 7),
                  color: Colors.transparent,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.security,
                      color: Colors.green,
                    ),
                    title: Text('Security & Status'),
                    subtitle: Text('200ml'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey,
                width: 7,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(7, 7, 7, 0),
                  color: Colors.transparent,
                  child: ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.security,
                        color: Colors.green,
                      ),
                      title: Text('Security & Status'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                  color: Colors.transparent,
                  child: ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.security,
                        color: Colors.green,
                      ),
                      title: Text('Security & Status'),
                      trailing: Icon(Icons.arrow_forward_ios)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 0, 7, 7),
                  color: Colors.transparent,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.security,
                      color: Colors.green,
                    ),
                    title: Text('Security & Status'),
                    subtitle: Text('200ml'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey,
                width: 7,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(7, 7, 7, 0),
                  color: Colors.transparent,
                  child: ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.security,
                        color: Colors.green,
                      ),
                      title: Text('Security & Status'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                  color: Colors.transparent,
                  child: ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.security,
                        color: Colors.green,
                      ),
                      title: Text('Security & Status'),
                      trailing: Icon(Icons.arrow_forward_ios)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 0, 7, 7),
                  color: Colors.transparent,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.security,
                      color: Colors.green,
                    ),
                    title: Text('Security & Status'),
                    subtitle: Text('200ml'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: MediaQuery.of(context).size.width * 0.8, // 80%
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(12),
              ),
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  indicatorColor: Colors.white,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  // onTap: press,
                  tabs: [Tab(text: "Morning Login"), Tab(text: "Night Login")],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
