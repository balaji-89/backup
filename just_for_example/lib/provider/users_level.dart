import 'package:flutter/material.dart';
import 'package:just_for_example/model/user_status.dart';

import 'exercise_stages.dart';
class Users with ChangeNotifier {
  UserDetailsAndLevel _user = UserDetailsAndLevel(
    userId: 01,
    userName: 'Balaji J',
    userExerciseId: 1,
  );

  UserDetailsAndLevel get userData {
    return _user;
  }

  void changeUserStage(Stages stage) {
    _user.currentSection = stage;
    var index = stage.index;
    var updatedList = [];
    for (var i = index + 1; i < Stages.values.length; i++) {
      updatedList.add(
        Stages.values[i],
      );
    }
    _user.upcomingSection = updatedList;
    notifyListeners();
  }


}
