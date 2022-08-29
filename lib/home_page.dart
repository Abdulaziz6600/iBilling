import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/Contract/contracts_screen.dart';
import 'package:ibilling/new/invoice_screen.dart';
import 'package:ibilling/profile/profile_screen.dart';
import 'package:ibilling/saved/saved_screen.dart';
import 'History/history_screen.dart';
import 'new/contract_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  late PageController pageController;
  int selectedIndex = 0;
  void onTap(int page) {
    if (page == 2) {
      showDialog(
          context: context,
          builder: (_) => Dialog(
              insetPadding: EdgeInsets.zero,
              backgroundColor: const Color(0xff2A2A2D),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 0,
                  left: 22,
                  right: 22,
                  bottom: 24, 
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xff2A2A2D),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'contract_or_invoice'.tr(),
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 28),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          selectedIndex = page;
                        });
                        pageController.animateToPage(selectedIndex,
                            duration: const Duration(milliseconds: 100), curve: Curves.linear);
                      },
                      child: Container(
                        height: 46,
                        width: 287,
                        decoration: BoxDecoration(
                          color: const Color(0xff4E4E4E).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: SvgPicture.asset(
                                  'assets/icons/greenlist2.svg'),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text(
                                'contract_singular'.tr(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          selectedIndex = page;
                        });
                        pageController.animateToPage(5,
                            duration: const Duration(milliseconds: 100), curve: Curves.linear);
                      },
                      child: Container(
                        height: 46,
                        width: 287,
                        decoration: BoxDecoration(
                          color: const Color(0xff4E4E4E).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child:
                                  SvgPicture.asset('assets/icons/invoice.svg'),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text(
                                'invoice'.tr(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )));
    } else {
      setState(() {
        selectedIndex = page;
      });
      pageController.animateToPage(selectedIndex,
          duration: const Duration(milliseconds: 100), curve: Curves.linear);
    }
  }

  @override
  void initState() {
    pageController = PageController();
    super.initState;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bottom1.svg',
                  color: selectedIndex == 0 ? Colors.white :  Colors.grey,
                ),
                label: "contracts".tr()),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bottom2.svg',
                  color: selectedIndex == 1 ? Colors.white :  Colors.grey,
                ),
                label: 'history'.tr()),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bottom3.svg',
                  color: selectedIndex == 2 ? Colors.white :  Colors.grey,
                ),
                label: 'new'.tr()),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bottom4.svg',
                  color: selectedIndex == 3 ? Colors.white :  Colors.grey,
                ),
                label: 'saved'.tr()),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bottom5.svg',
                  color: selectedIndex == 4 ? Colors.white : Colors.grey,
                ),
                label: 'profile'.tr()),
          ],),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            ContractsScreen(),
            HistoryScreen(),
            ContractScreen(),
            SavedScreen(),
            ProfileScreen(),
            InvoiceScreen(),
          ],
        )
    );
  }
}


// AnimatedCrossFade();
