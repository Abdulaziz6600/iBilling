import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/Contract/widgets/calendar.dart';

class ContractsScreen extends StatefulWidget {
  const ContractsScreen({Key? key}) : super(key: key);

  @override
  State<ContractsScreen> createState() => _ContractsScreenState();
}

class _ContractsScreenState extends State<ContractsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.black,
      title: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff00FFC2),
                      Color(0xff0500FF),
                      Color(0xffFFC700),
                      Color(0xffAD00FF),
                      Color(0xff00FF94),
                    ]
                )
            ),
          ),
          SizedBox(
            width: 12,
          ),
           Text(
            'contracts'.tr(),
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () {
            print('bosldi');
          },
          child: SvgPicture.asset('assets/icons/filter.svg'),
        ),
        const SizedBox(
          width: 21,
        ),
        GestureDetector(
          child: SvgPicture.asset('assets/icons/filter1.svg'),
        ),
        const SizedBox(
          width: 21,
        ),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset('assets/icons/filter2.svg'),
        ),
        const SizedBox(
          width: 21,
        ),
      ],
    ),
      body: Column (
          children:[
            Center(child: DayPage()),
          ]
      ),
    );
  }
}
