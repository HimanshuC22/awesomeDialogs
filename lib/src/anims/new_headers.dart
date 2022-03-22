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
        return FlareActor(
          "packages/awesome_dialog/assets/flare/info2.flr",
          alignment: Alignment.center,
          fit: BoxFit.cover,
          animation: loop ? 'appear_loop' : 'appear',
          callback: (call) {},
        );
      case DialogType.INFO_REVERSED:
        return FlareActor(
          loop
              ? "packages/awesome_dialog/assets/flare/info.flr"
              : "packages/awesome_dialog/assets/flare/info_without_loop.flr",
          alignment: Alignment.center,
          fit: BoxFit.cover,
          animation: 'appear',
        );
      case DialogType.QUESTION:
        return FlareActor(
          "packages/awesome_dialog/assets/flare/question.flr",
          alignment: Alignment.center,
          fit: BoxFit.cover,
          animation: loop ? 'anim_loop' : 'anim',
          callback: (call) {},
        );
      case DialogType.WARNING:
        return FlareActor(
          loop
              ? "packages/awesome_dialog/assets/flare/warning.flr"
              : "packages/awesome_dialog/assets/flare/warning_without_loop.flr",
          alignment: Alignment.center,
          fit: BoxFit.cover,
          animation: 'appear',
        );
      case DialogType.ERROR:
        return FlareActor(
          "packages/awesome_dialog/assets/flare/error.flr",
          alignment: Alignment.center,
          fit: BoxFit.fill,
          animation: loop ? 'Error' : 'Error_no_loop',
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
