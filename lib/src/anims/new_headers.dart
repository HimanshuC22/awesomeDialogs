import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class NewHeader extends StatelessWidget {
  const NewHeader({Key? key, required this.dialogType, required this.loop})
      : super(key: key);
  final DialogType dialogType;
  final bool loop;

  @override
  Widget build(BuildContext context) {
    switch (dialogType) {
      case DialogType.INFO:
        return ClipOval(
          child: Container(
            color: Color.fromRGBO(253, 185, 19, 1),
            child: Center(
              child: Text(
                String.fromCharCode(Icons.priority_high_rounded.codePoint),
                style: TextStyle(
                  inherit: false,
                  color: Colors.white,
                  fontSize: 60.0,
                  fontFamily: Icons.priority_high_rounded.fontFamily,
                  package: Icons.priority_high_rounded.fontPackage,
                ),
              ),
            ),
            height: 72,
            width: 72,
          ),
        );
        ;
      case DialogType.INFO_REVERSED:
        return ClipOval(
          child: Container(
            color: Color.fromRGBO(253, 185, 19, 1),
            child: Center(
              child: Text(
                String.fromCharCode(Icons.priority_high_rounded.codePoint),
                style: TextStyle(
                  inherit: false,
                  color: Colors.white,
                  fontSize: 60.0,
                  fontFamily: Icons.priority_high_rounded.fontFamily,
                  package: Icons.priority_high_rounded.fontPackage,
                ),
              ),
            ),
            height: 72,
            width: 72,
          ),
        );
        ;
      case DialogType.QUESTION:
        return ClipOval(
          child: Container(
            color: Color.fromRGBO(253, 185, 19, 1),
            child: Center(
              child: Text(
                "?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  inherit: false,
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: Icons.close_rounded.fontFamily,
                  package: Icons.close_rounded.fontPackage,
                ),
              ),
            ),
            height: 72,
            width: 72,
          ),
        );
      case DialogType.WARNING:
        return ClipOval(
          child: Container(
            color: Color.fromRGBO(253, 185, 19, 1),
            child: Center(
              child: Text(
                String.fromCharCode(Icons.priority_high_rounded.codePoint),
                style: TextStyle(
                  inherit: false,
                  color: Colors.white,
                  fontSize: 60.0,
                  fontFamily: Icons.priority_high_rounded.fontFamily,
                  package: Icons.priority_high_rounded.fontPackage,
                ),
              ),
            ),
            height: 72,
            width: 72,
          ),
        );
      case DialogType.ERROR:
        return ClipOval(
          child: Container(
            color: Color.fromRGBO(253, 185, 19, 1),
            child: Center(
              child: Text(
                String.fromCharCode(Icons.close_rounded.codePoint),
                style: TextStyle(
                  inherit: false,
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: Icons.close_rounded.fontFamily,
                  package: Icons.close_rounded.fontPackage,
                ),
              ),
            ),
            height: 72,
            width: 72,
          ),
        );
      case DialogType.SUCCES:
        return ClipOval(
          child: Container(
            color: Color.fromRGBO(253, 185, 19, 1),
            child: Center(
              child: Text(
                String.fromCharCode(Icons.check_rounded.codePoint),
                style: TextStyle(
                  inherit: false,
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w800,
                  fontFamily: Icons.check_rounded.fontFamily,
                  package: Icons.check_rounded.fontPackage,
                ),
              ),
            ),
            height: 72,
            width: 72,
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
