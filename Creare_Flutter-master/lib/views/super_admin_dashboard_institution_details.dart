import 'package:Creare_Flutter/widgets/super_admin_dashboard_admin_details_card.dart';
import 'package:Creare_Flutter/widgets/super_admin_dashboard_institution_details_card.dart';
import 'package:flutter/material.dart';

class SuperAdminDashboardInstitutionDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SuperAdminDashboardInstitutionDetailsCard(
            emailId: 'aakash@gmail.com',
            institutionAddress: 'Chennai, Chennai, 600093',
            institutionName: 'Aakash University',
            phoneNumber: '+91 80804 56788',
            registrationId: '7347 8582 8489 9809',
          ),
          SuperAdminDashboardAdminDetailsCard(
            adminName: 'Mr. Pravinram',
            designation: 'Vice Principal',
            phoneNumber: '+91 80763 78766',
          ),
        ],
      ),
    );
  }
}
