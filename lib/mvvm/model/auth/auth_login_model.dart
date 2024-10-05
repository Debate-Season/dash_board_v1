class AuthLoginModel {
  String email;
  String password;

  AuthLoginModel({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory AuthLoginModel.fromJson(Map<String, dynamic> json) {
    return AuthLoginModel(
      email: json['email'],
      password: json['password'],
    );
  }
}

class AuthLoginResponseModel {
  final Result result;
  final Body? body; // body를 nullable로 변경

  AuthLoginResponseModel({
    required this.result,
    this.body, // nullable 처리
  });

  factory AuthLoginResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthLoginResponseModel(
      result: Result.fromJson(json['result']),
      body: json['body'] != null ? Body.fromJson(json['body']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result.toJson(),
      'body': body?.toJson(),
    };
  }
}

class Result {
  final int resultCode;
  final String resultMessage;
  final String resultDescription;

  Result({
    required this.resultCode,
    required this.resultMessage,
    required this.resultDescription,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      resultCode: json['resultCode'],
      resultMessage: json['resultMessage'],
      resultDescription: json['resultDescription'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'resultCode': resultCode,
      'resultMessage': resultMessage,
      'resultDescription': resultDescription,
    };
  }
}

class Body {
  final String token;
  final String refreshToken;

  Body({
    required this.token,
    required this.refreshToken,
  });

  factory Body.fromJson(Map<String, dynamic> json) {
    return Body(
      token: json['token'],
      refreshToken: json['refreshToken'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'refreshToken': refreshToken,
    };
  }
}
