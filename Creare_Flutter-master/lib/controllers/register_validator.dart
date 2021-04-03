import 'dart:async';

String userPassword;

mixin RegisterValidator {
  var emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains("@")) {
        sink.add(email);
      } else {
        sink.addError("Email is invalid");
      }
    },
  );

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if ((password.length < 8)) {
        sink.addError("Password should be atleast 8 characters");
      } else {
        sink.add(password);
        userPassword = password;
      }
    },
  );

  var confirmPasswordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if ((password != userPassword)) {
        sink.addError("Password do not match");
      } else {
        sink.add(password);
      }
    },
  );
}
