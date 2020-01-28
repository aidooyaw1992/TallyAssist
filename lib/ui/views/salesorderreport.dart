import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tassist/theme/dimensions.dart';
import 'package:tassist/ui/shared/bottomnav.dart';
import 'package:tassist/ui/shared/headernav.dart';
import 'package:tassist/ui/widgets/coloredIcon.dart';
import 'package:tassist/ui/widgets/detailcard.dart';
import 'package:tassist/ui/widgets/filterbar.dart';
import 'package:tassist/ui/widgets/gotobar.dart';
import 'package:tassist/ui/widgets/sectionHeader.dart';
import 'package:tassist/core/services/database.dart';
import 'package:provider/provider.dart';




class SalesOrderReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value (
          value: DatabaseService().sales,
          child: Scaffold(
        appBar: headerNav(context),
        bottomNavigationBar: bottomNav(),
        body: ListView(
          children: <Widget>[
            SectionHeader('Sales Order Report'),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: spacer.x.xs,
                      margin: spacer.all.xxs,
                      color: Color(0xffEDF4FC),
                      child: Row(
                        children: <Widget>[
                          Text('Product'),
                          Icon(Icons.arrow_drop_down, color: Colors.purple[800]),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: spacer.x.xs,
                      margin: spacer.all.xxs,
                      color: Color(0xffEDF4FC),
                      child: Row(
                        children: <Widget>[
                          Text('Customer'),
                          Icon(Icons.arrow_drop_down, color: Colors.purple[800]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ColoredIconNumberRow('20.3L', 'Amount Sold'),
                    ColoredIconNumberRow('23', 'Open Orders'),
                    ColoredIconNumberRow('1.05L', 'Sales Return'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ColoredIconNumberRow('200 tns', 'Ordered Qty'),
                    ColoredIconNumberRow('73 tns', 'Quantity Due'),
                    ColoredIconNumberRow('20k', 'Discount'),
                  ],
                )
              ],
            ),
              FilterBar('Pending Sales Order By', 'Due Date'),
               Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              DetailCard('XYZ Pvt. Ltd.', '#12483', '23 days', 'Rs. 1,23,890', '450 Nos.'),
              DetailCard('XYZ Pvt. Ltd.', '#12483', '23 days', 'Rs. 1,23,890', '450 Nos.'),
              DetailCard('XYZ Pvt. Ltd.', '#12483', '23 days', 'Rs. 1,23,890', '450 Nos.'),
              DetailCard('XYZ Pvt. Ltd.', '#12483', '23 days', 'Rs. 1,23,890', '450 Nos.'),
              DetailCard('XYZ Pvt. Ltd.', '#12483', '23 days', 'Rs. 1,23,890', '450 Nos.'),
              DetailCard('XYZ Pvt. Ltd.', '#12483', '23 days', 'Rs. 1,23,890', '450 Nos.'),

              ],
            ),
             GoToBar('Inactive Customer List')
          
          
          ],
        ),
      ),
    );
  }
}

