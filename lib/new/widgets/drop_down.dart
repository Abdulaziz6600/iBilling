import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class NewDropDown extends StatefulWidget {
  const NewDropDown({Key? key}) : super(key: key);

  @override
  State<NewDropDown> createState() => _NewDropDownState();
}

class _NewDropDownState extends State<NewDropDown> {
  bool showDropDown = false;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        PortalTarget(
          visible: true,
          portalFollower: AnimatedCrossFade(
           crossFadeState: CrossFadeState.showFirst,
           duration: const Duration(milliseconds: 12),
           secondChild: Container(),
           firstChild: Container(),
          ),
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.grey, width: 1),
              ),
            ),
          ),
        )
      ],
    );
  }
}
