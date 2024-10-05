class SignInResponseModel {
  final int resultCode;
  final String resultMessage;
  final String resultDescription;

  SignInResponseModel({
    required this.resultCode,
    required this.resultMessage,
    required this.resultDescription,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) {
    return SignInResponseModel(
      resultCode: json['resultCode'],
      resultMessage: json['resultMessage'],
      resultDescription: json['resultDescription'],
    );
  }
}

class SignupResponseBody {
  final String userId;

  SignupResponseBody({required this.userId});

  factory SignupResponseBody.fromJson(Map<String, dynamic> json) {
    return SignupResponseBody(
      userId: json['userId'],
    );
  }
}

class SignupResponse {
  final SignInResponseModel result;
  final SignupResponseBody body;

  SignupResponse({required this.result, required this.body});

  factory SignupResponse.fromJson(Map<String, dynamic> json) {
    return SignupResponse(
      result: SignInResponseModel.fromJson(json['result']),
      body: SignupResponseBody.fromJson(json['body']),
    );
  }
}
