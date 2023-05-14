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
                header: const Text("Phone"),
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      decoration: const BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.person_3,
                            size: 40,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "All Contacts",
                            style: TextStyle(fontSize: 21),
                          ),
                          const Spacer(),
                          Row(
                            children: const [
                              Text(
                                "123",
                                style: TextStyle(
                                    color: CupertinoColors.inactiveGray),
                              ),
                              Icon(CupertinoIcons.forward,
                                  color: CupertinoColors.inactiveGray)
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// CupertinoListTile(
//                       leading: const Icon(
//                         CupertinoIcons.person_3,
//                         size: 40,
//                       ),
//                       leadingSize: 40,
//                       backgroundColor: CupertinoColors.white,
//                       trailing: Row(
//                         children: const [
//                           Text(
//                             "123",
//                             style:
//                                 TextStyle(color: CupertinoColors.inactiveGray),
//                           ),
//                           Icon(
//                             CupertinoIcons.forward,
//                             color: CupertinoColors.inactiveGray,
//                           )
//                         ],
//                       ),
//                       title: const Text(
//                         "iCloud Contacts",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),