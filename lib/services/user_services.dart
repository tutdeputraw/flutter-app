part of '_services.dart';

class UserServices {
  static Future<User?> GetUser(int page) async {
    final url = Uri.parse('https://reqres.in/api/users?page=$page&per_page=10');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return userFromJson(response.body);
    }
    return null;
  }
}
