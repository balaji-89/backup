import 'package:Creare_Flutter/controllers/register_validator.dart';
import 'package:rxdart/rxdart.dart';

class RegisterBloc extends Object with RegisterValidator implements BaseBloc {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _confirmPasswordController = BehaviorSubject<String>();

  Function(String) get emailChanged => _emailController.sink.add;
  Function(String) get passwordChanged => _passwordController.sink.add;
  Function(String) get confirmPasswordChanged =>
      _confirmPasswordController.sink.add;

  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password =>
      _passwordController.stream.transform(passwordValidator);
  Stream<String> get confirmpassword =>
      _confirmPasswordController.stream.transform(confirmPasswordValidator);

  submit() {
    print("WELCOME");
  }

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
    _confirmPasswordController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}
