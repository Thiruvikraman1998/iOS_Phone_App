import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
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
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: CupertinoListSection(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: CupertinoListTile(
                      leading: const Icon(
                        CupertinoIcons.person_3,
                        size: 40,
                      ),
                      leadingSize: 40,
                      backgroundColor: CupertinoColors.white,
                      trailing: Row(
                        children: const [
                          Text(
                            "123",
                            style:
                                TextStyle(color: CupertinoColors.inactiveGray),
                          ),
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.inactiveGray,
                          )
                        ],
                      ),
                      title: const Text(
                        "iCloud Contacts",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
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
