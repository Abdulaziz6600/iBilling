import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class ContractCard extends StatelessWidget {
  const ContractCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff2A2A2D),
              borderRadius: BorderRadius.circular(6)
        ),
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/icons/greenlist.svg', color: Color(0xff00A795),),
                SizedBox(width:8),
                Expanded(child: Text('№ 154', style: TextStyle(color: CupertinoColors.white, fontFamily: 'Ubuntu', fontSize: 15, fontWeight: FontWeight.w700),)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                      color: Color(0xff49B7A5).withOpacity(.15),
                  ),
                  child: Text('Paid',style: TextStyle(color: Color(0xff49B7A5),fontFamily: 'Ubuntu', fontSize: 12, fontWeight: FontWeight.w500),),
                  padding: EdgeInsets.only(top: 2, bottom: 2, left: 12, right: 12),
                ),
              ],
            ),
            SizedBox(height: 14,),
            const inCardName(name: 'Fish:', pName: 'Seulki Lee',),
            const inCardName(name: 'Amount:', pName: '1,250,000 UZS',),
            const inCardName(name: 'Last invoice:', pName: '№ 156',),
            Row(
              children: [
                Expanded(
                    child: const inCardName(name: 'Number of invoices:', pName: '6',)),
                Text('31.01.2021', style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xff999999,), fontSize: 14,fontFamily: 'Ubuntu'),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class inCardName extends StatelessWidget {
  final String name;
  final String pName;
  const inCardName({
    Key? key, required this.name, required this.pName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0,bottom: 4),
          child: 
          Text(name, style: TextStyle(color: CupertinoColors.white, fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Ubuntu'),),
        ),
        Text(pName,style: TextStyle(color: Color(0xff999999), fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Ubuntu')),
        
      ],
    );
  }
}
