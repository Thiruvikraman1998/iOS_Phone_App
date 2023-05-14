import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

class FavouritesView extends StatefulWidget {
  const FavouritesView({super.key});

  @override
  State<FavouritesView> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            padding: EdgeInsetsDirectional.all(5),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Icon(CupertinoIcons.add),
                onPressed: () {
                  debugPrint("Add pressed");
                }),
            trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Text(
                  "Edit",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: () {
                  debugPrint("Edit pressed");
                }),
            largeTitle: Text("Favourites"),
          ),
        ],
      ),
    );
  }
}
