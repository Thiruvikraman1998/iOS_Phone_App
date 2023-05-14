import 'package:flutter/cupertino.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            padding: const EdgeInsetsDirectional.all(10),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Text("Edit"),
                onPressed: () {}),
            trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Text("Add List"),
                onPressed: () {}),
            largeTitle: const Text("Lists"),
          )
        ],
      ),
    );
  }
}
