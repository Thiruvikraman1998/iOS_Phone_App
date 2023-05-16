import 'package:flutter/cupertino.dart';
import 'package:ios_phone_app/pages/others/all_contacts.dart';
//import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  final bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xffF2F2F6),
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: const Color(0xffF2F2F6),
            border: const Border(bottom: BorderSide.none),
            stretch: true,
            padding: const EdgeInsetsDirectional.all(10),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Text(
                  "Edit",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {}),
            trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Text(
                  "Add List",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {}),
            largeTitle: const Text("Lists"),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  child: cupertinoListSection("All Contacts", 125, ""),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  child: cupertinoListSection("iCloud Contacts", 55, "iCloud"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  CupertinoListSection cupertinoListSection(String title, int count,
      [String? header]) {
    return CupertinoListSection(
      header: Text(
        header!,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      children: [
        CupertinoListTile(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const AllContactsView(
                  leadingTitle: 'Lists',
                ),
              ),
            );
          },
          leading: const Icon(
            CupertinoIcons.person_3,
            size: 40,
          ),
          leadingSize: 40,
          backgroundColor: CupertinoColors.white,
          trailing: Row(
            children: [
              Text(
                count.toString(),
                style: const TextStyle(color: CupertinoColors.inactiveGray),
              ),
              const Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.inactiveGray,
              )
            ],
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}

// class CurvedClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path()
//       ..lineTo(0, size.height * 0.7)
//       ..quadraticBezierTo(
//           size.width * 0.5, size.height * 1.2, size.width, size.height * 0.7)
//       ..lineTo(size.width, 0)
//       ..close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
