import 'dart:convert';
/////브랜치
import '../../auth/signup_response_model.dart';
import 'package:http/http.dart' as http;

Future<SignupResponse?> signInUser(String username, String password) async {
  final url = Uri.parse('https://your-api-url/signup');
  try {
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      SignupResponse signupResponse = SignupResponse.fromJson(jsonResponse);

      if (signupResponse.result.resultCode == 0) {
        print('Signup successful! UserId: ${signupResponse.body.userId}');
        return signupResponse;
      } else {
        print('Signup failed: ${signupResponse.result.resultMessage}');
      }
    } else {
      print('Failed to connect to the server. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error occurred during signup: $error');
  }

  return null;
}
