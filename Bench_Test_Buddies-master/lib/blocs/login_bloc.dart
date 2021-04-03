import 'package:rxdart/rxdart.dart';
import 'package:btb/model/login_model.dart';
import 'package:btb/resource/repository.dart';


class LoginBloc {
  final _repository = Repository();
  var _doLogin = PublishSubject<LoginModel>();

  Observable<LoginModel> get loginDetails => _doLogin.stream;

  validateLogin(String userName,String password) async {
    _repository.doLogin(userName,password).then((value) {
      _doLogin.sink.add(value);
    }).catchError((error){
      _doLogin.sink.addError('Error: $error');
    });
  }


  dispose() {
    _doLogin.close();
  }
}

final loginBloc = LoginBloc();