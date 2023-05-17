import 'package:flutter/cupertino.dart';

class AllContactsView extends StatefulWidget {
  const AllContactsView({super.key, required this.leadingTitle});
  final String leadingTitle;

  @override
  State<AllContactsView> createState() => _AllContactsViewState();
}

class _AllContactsViewState extends State<AllContactsView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: const Text("Contacts"),
            stretch: true,
            previousPageTitle: widget.leadingTitle,
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CupertinoSearchTextField(),
            ),
          )
        ],
      ),
    );
  }
}

// <Widget>[
//           CupertinoSliverNavigationBar(
//             //automaticallyImplyLeading: true,
//             largeTitle: const Text("Contacts"),
//             stretch: true,
//             previousPageTitle: widget.leadingTitle,
//           ),
//           const SliverToBoxAdapter(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: CupertinoSearchTextField(),
//             ),
//           )
//         ],