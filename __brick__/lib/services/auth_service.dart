import 'package:get/get.dart';
import 'package:{{name}}/constants/constants.dart';
import 'package:{{name}}/constants/urls.dart';

class AuthService extends GetConnect {
  // final String token;
  // AuthService({@required this.token});

  @override
  void onInit() {
    // httpClient.baseUrl = baseURL();
    httpClient.addRequestModifier<void>((request) {
      request.headers["Content-Type"] = "application/json";
      request.headers["Accept"] = "application/json";
      // request.headers['Authorization'] = "Bearer $token";
      return request;
    });
  }

  // Future setFCMToken(int branchId, Map body) async {
  //   final response = await post(
  //     fcmUrl(branchId),
  //     body,
  //   );
  //   if (response.status.hasError) {
  //     return Future.error(response.statusCode);
  //   } else {
  //     return response.body;
  //   }
  // }

  Future login(Map body) async {
    final response = await post(
      loginUrl(),
      body,
    );
    if (response.status.hasError) {
      return Future.error(response);
    } else {
      return response.body;
    }
  }

  Future signup(Map body) async {
    final response = await post(
      signupUrl(),
      body,
    );
    if (response.status.hasError) {
      return Future.error(response);
    } else {
      return response.body;
    }
  }

  Future resetPassword(Map body) async {
    final response = await post(
      resetPasswordUrl(),
      body,
    );
    if (response.status.hasError) {
      return Future.error(response);
    } else {
      return response.body;
    }
  }

  Future refreshToken(Map body) async {
    final response = await post(
      refreshTokenUrl(),
      body,
    );
    if (response.status.hasError) {
      return Future.error(response);
    } else {
      return response.body;
    }
  }

  Future getAuthenticatedUser(String token) async {
    final response =
        await get(getUserUrl(), headers: {"Authorization": "Bearer $token"});
    if (response.status.hasError) {
      return Future.error(response);
    } else {
      return response.body;
    }
  }
}
