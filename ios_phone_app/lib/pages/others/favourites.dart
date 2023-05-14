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
            stretch: true,
            backgroundColor: CupertinoColors.systemBackground,
            padding: const EdgeInsetsDirectional.all(5),
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Icon(CupertinoIcons.add),
              onPressed: () {
                debugPrint("Add pressed");
              },
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text(
                "Edit",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                debugPrint("Edit pressed");
              },
            ),
            largeTitle: const Text("Favourites"),
          ),
        ],
      ),
    );
  }
}
