import 'package:flutter/cupertino.dart';
import 'package:ios_phone_app/pages/others/contacts.dart';
import 'package:ios_phone_app/pages/others/dialpad.dart';
import 'package:ios_phone_app/pages/others/favourites.dart';
import 'package:ios_phone_app/pages/others/recents.dart';
import 'package:ios_phone_app/pages/others/voicemail.dart';

class TabBars extends StatefulWidget {
  const TabBars({super.key});

  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const FavouritesView(),
    const RecentsView(),
    const ContactsView(),
    const DialpadView(),
    const VoicemailView()
  ];

  void onTapitem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            height: 60,
            border: const Border(top: BorderSide.none),
            backgroundColor: Color(0xff00FFFFFF),
            currentIndex: _selectedIndex,
            onTap: onTapitem,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.star_fill), label: "Favourites"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.time_solid), label: "Recents"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person_alt_circle_fill),
                  label: "Contacts"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.circle_grid_3x3_fill),
                  label: "Keypad"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.mic_fill), label: "Voicemail"),
            ],
          ),
          tabBuilder: (context, index) {
            return _pages[index];
          },
        ),
      ),
    );
  }
}
