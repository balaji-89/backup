import 'dart:async';

mixin SchoolRegistrationValidator {
  var schoolNameValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (schoolName, sink) {
      if ((schoolName.length < 5)) {
        sink.addError("School Name should be atleast 5 characters");
      } else {
        sink.add(schoolName);
      }
    },
  );

  var addressOneValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (addressOne, sink) {
      if ((addressOne.length < 10)) {
        sink.addError("Address should be atleast 10 characters");
      } else {
        sink.add(addressOne);
      }
    },
  );

  var addressTwoValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (addressTwo, sink) {
      if ((addressTwo.length < 5)) {
        sink.addError("Address should be atleast 5 characters");
      } else {
        sink.add(addressTwo);
      }
    },
  );

  var pinCodeValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (pinCode, sink) {
      if ((pinCode.length < 6)) {
        sink.addError("Pin Code should be atleast 6 characters");
      } else {
        sink.add(pinCode);
      }
    },
  );
}
