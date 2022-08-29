import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff141416),
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
                      ])),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              'profile'.tr(),
              style: const TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xff2A2A2D),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/bigface.svg',
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          width: 16,
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Otabek Abdusamatov',
                                style: TextStyle(
                                    color: Color(0xff00A795),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Ubuntu')),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Graphic designer • IQ Education',
                              style: TextStyle(
                                  color: Color(0xffE7E7E7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children:  [
                        Text(
                          'date_of_birth'.tr(),
                          style: const TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          '16.09.2001',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children:  [
                        Text(
                          'phone_number'.tr(),
                          style: const TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          '+998 97 721 06 88',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children:  [
                        Text(
                          'email'.tr(),
                          style: const TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'predatorhunter041@gmail.com',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height:
                  12, // showDialog(context: context,builder: (_) => LanguageDialog());
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context, builder: (_) => const LanguageDialog());
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 12, bottom: 12, right: 18),
                decoration: BoxDecoration(
                  color: const Color(0xff2A2A2D),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children:[
                    Text(
                      'lang'.tr(),
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LanguageDialog extends StatefulWidget {
  const LanguageDialog({Key? key}) : super(key: key);

  @override
  State<LanguageDialog> createState() => _LanguageDialogState();
}

int localiztionInt = 1;

class _LanguageDialogState extends State<LanguageDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: const Color(0xff2A2A2D),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        margin: const EdgeInsets.only(
          left: 22,
          right: 22,
          bottom: 24,
          top: 0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xff2A2A2D),
        ),
        height: 279,
        width: 327,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'choose_lang'.tr(),
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
            InkWell(
              onTap: () {
                setState(() {
                  localiztionInt = 1;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/uzb.svg'),
                        const Text('O‘zbek (Lotin)',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SvgPicture.asset(
                      'assets/icons/radio.svg',
                      color: localiztionInt == 1? const Color(0xff008F7F) : Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  localiztionInt = 2;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/russian.svg'),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('Русский',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SvgPicture.asset(
                      'assets/icons/radio.svg',
                      color: localiztionInt == 2? const Color(0xff008F7F) : Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  localiztionInt =3;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/english.svg'),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('English (USA)',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SvgPicture.asset(
                      'assets/icons/radio.svg',
                      color: localiztionInt == 3? const Color(0xff008F7F) : Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: const Color(0xff008F7F).withOpacity(0.3),
                    ),
                    width: 125,
                    height: 37,
                    child:  Center(
                      child: Text(
                        'Cancel'.tr(),
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    if (localiztionInt == 1) {
                      context.setLocale(const Locale('uz', 'UZ'));
                    } else if (localiztionInt == 2) {
                      context.setLocale(const Locale('ru', 'RU'));
                    } else {
                      context.setLocale(const Locale('en', 'EN'));
                    }
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: const Color(0xff008F7F),
                    ),
                    width: 125,
                    height: 37,
                    child:  Center(
                      child: Text(
                        'Done'.tr(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
