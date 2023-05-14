import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';

class VoicemailView extends StatefulWidget {
  const VoicemailView({super.key});

  @override
  State<VoicemailView> createState() => _VoicemailViewState();
}

class _VoicemailViewState extends State<VoicemailView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          debugPrint("Voicemail tapped");
        },
        child: Container(
          padding: const EdgeInsets.all(7),
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            //color: Colors.red,
            border: Border.all(color: CupertinoColors.systemGrey3, width: 2),
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: const Text(
            "Call Voicemail",
            style: TextStyle(color: CupertinoColors.systemGrey2),
          ),
        ),
      ),
    );
  }
}
