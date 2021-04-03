import 'package:Creare_Flutter/models/chopper_service.dart';
import 'package:Creare_Flutter/screens/admin_dashboard_screen.dart';
import 'package:Creare_Flutter/screens/student_dashboard_screen.dart';
import 'package:Creare_Flutter/screens/super_admin_dashboard_screen.dart';
import 'package:Creare_Flutter/screens/teacher_dashboard_screen.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginRestCall extends StatelessWidget {
  final String emailId, password;

  const LoginRestCall(this.emailId, this.password);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ApiService.create(),
      dispose: (context, ApiService service) => service.client.dispose(),
      child: LoginRestCallMain(emailId, password),
    );
  }
}

class LoginRestCallMain extends StatelessWidget {
  final String emailId, password;

  const LoginRestCallMain(this.emailId, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context, emailId, password),
    );
  }
}

FutureBuilder<Response> buildBody(
    BuildContext context, String emailId, String password) {
  return FutureBuilder<Response>(
    future: Provider.of<ApiService>(context)
        .loginUser({'email': emailId, 'password': password}),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final String userType = snapshot.data.bodyString;
        switch (userType) {
          case 'admin':
            return AdminDashBoardScreen();
            break;
          case 'student':
            return StudentDashboardScreen();
            break;
          case 'teacher':
            return TeacherDashboardScreen();
            break;
          default:
            return SuperAdminDashboardScreen();
            break;
        }
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}
