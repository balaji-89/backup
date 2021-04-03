import 'dart:async';

mixin LoginValidator {
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
      }
    },
  );
}
