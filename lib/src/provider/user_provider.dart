import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/maxi_common.dart';
import 'package:maxi_common/src/data/model/user/user.dart';
import 'package:maxi_common/src/enums/gender.dart';
import 'package:maxi_common/src/http/http.dart';




class UserNotifier extends StateNotifier<User> {
  UserNotifier(this._read) : super(User.empty()) {
    _init();
  }

  _init() async {
    state = _read(userRepository).getUser();
  }

  final Reader _read;

  void setFirstName(String firstName) {
    state = state.copyWith(firstName: firstName);
  }

  void setLastName(String lastName) {
    state = state.copyWith(lastName: lastName);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPhone(int phone) {
    state = state.copyWith(phone: phone);
  }

  void setGender(Gender? val) {
    if (val != null) {
      state = state.copyWith(gender: val);
    }
  }

  Future<void> updateUser() async {
    var response = await _read(userRepository).updateUser(state);
    print(response);
    response.fold(
      (l) => l.show,
      (r) {
        AppFlushBar.showSuccess('Profile edited Successfully');
        state = r;
      },
    );
  }
}
