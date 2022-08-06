abstract class AuthRepository {
  Future<dynamic> loginUser(String username, String password);
  Future<dynamic> registerUser(Map<String, dynamic> map);
  Future<int> logoutUser();
}

class AuthRepoImpl extends AuthRepository {
  @override
  Future loginUser(String username, String password) async {
    return {
      'name': "Deku Mawuli",
      'token': '232453646etfsdfsgf3w4trgawe',
    };
  }

  @override
  Future<int> logoutUser() async {
    return 1;
  }

  @override
  Future registerUser(Map<String, dynamic> map) async {
    return {
      'name': "Deku Mawuli",
      'phone': '0244123778',
      'token': '232453646etfsdfsgf3w4trgawe',
    };
  }
}
