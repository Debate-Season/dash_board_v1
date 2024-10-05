class EmailCheckResponseModel {
  final EmailResult result;
  final EmailBody body;

  EmailCheckResponseModel({
    required this.result,
    required this.body,
  });

  factory EmailCheckResponseModel.fromJson(Map<String, dynamic> json) {
    return EmailCheckResponseModel(
      result: EmailResult.fromJson(json['result']),
      body: EmailBody.fromJson(json['body']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result.toJson(),
      'body': body.toJson(),
    };
  }
}

class EmailResult {
  final int resultCode;
  final String resultMessage;
  final String resultDescription;

  EmailResult({
    required this.resultCode,
    required this.resultMessage,
    required this.resultDescription,
  });

  factory EmailResult.fromJson(Map<String, dynamic> json) {
    return EmailResult(
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

class EmailBody {
  final String checkStatus;
  EmailBody({
    required this.checkStatus,
  });

  factory EmailBody.fromJson(Map<String, dynamic> json) {
    return EmailBody(
      checkStatus: json['checkStatus'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'checkStatus': checkStatus,
    };
  }
}
