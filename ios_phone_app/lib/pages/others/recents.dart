import 'package:flutter/cupertino.dart';

class RecentsView extends StatefulWidget {
  const RecentsView({super.key});

  @override
  State<RecentsView> createState() => _RecentsViewState();
}

class _RecentsViewState extends State<RecentsView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Recents Screen"),
    );
  }
}
