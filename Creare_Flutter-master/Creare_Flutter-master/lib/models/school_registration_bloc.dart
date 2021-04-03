import 'package:Creare_Flutter/controllers/school_registration_validator.dart';
import 'package:rxdart/rxdart.dart';

class SchoolRegistrationBloc extends Object
    with SchoolRegistrationValidator
    implements BaseBloc {
  final _schoolNameController = BehaviorSubject<String>();
  final _addressOneController = BehaviorSubject<String>();
  final _addressTwoController = BehaviorSubject<String>();
  final _pinCodeController = BehaviorSubject<String>();

  Function(String) get schoolNameChanged => _schoolNameController.sink.add;
  Function(String) get addressOneChanged => _addressOneController.sink.add;
  Function(String) get addressTwoChanged => _addressTwoController.sink.add;
  Function(String) get pinCodeChanged => _pinCodeController.sink.add;

  Stream<String> get schoolName =>
      _schoolNameController.stream.transform(schoolNameValidator);
  Stream<String> get addressOne =>
      _addressOneController.stream.transform(addressOneValidator);
  Stream<String> get addressTwo =>
      _addressTwoController.stream.transform(addressTwoValidator);
  Stream<String> get pinCode =>
      _pinCodeController.stream.transform(pinCodeValidator);

  submit() {
    print("WELCOME");
  }

  @override
  void dispose() {
    _schoolNameController?.close();
    _addressOneController?.close();
    _addressTwoController?.close();
    _pinCodeController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}
