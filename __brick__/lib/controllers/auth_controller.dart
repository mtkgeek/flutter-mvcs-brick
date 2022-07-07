import 'dart:async';

import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{name}}/models/user_model.dart';
import 'package:{{name}}/services/services.dart';

class AuthController extends GetxController {
  final AuthService _authService = Get.find();

  UserModel? currentUser;

  EncryptedSharedPreferences encryptedStorage = EncryptedSharedPreferences();
  RxString authToken = "nully".obs;
  RxString refreshToken = "nully".obs;

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();

  PageController authPageController = PageController();

  // Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
  //   0: Get.nestedKey(0),
  //   1: Get.nestedKey(1),
  //   2: Get.nestedKey(2),
  //   3: Get.nestedKey(3),
  //   4: Get.nestedKey(4),
  // };

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.onClose();
  }

  @override
  void onReady() async {
    super.onReady();
    await checkAuthStatus();
  }

  Future<void> readAuthToken() async {
    authToken.value = await encryptedStorage.getString('authToken');
    refreshToken.value = await encryptedStorage.getString('refreshToken');
  }

  Future<void> saveAuthToken(authToken, refreshToken) async {
    await encryptedStorage.setString('authToken', '$authToken');
    await encryptedStorage.setString('refreshToken', '$refreshToken');
  }

  Future<void> checkAuthStatus() async {
    Timer(const Duration(milliseconds: 500), () async {
      await readAuthToken();
      await getUser();
    });
  }

  Future<void> login() async {
    Map body = {
      "email": emailTextController.text,
      "password": passwordTextController.text
    };
    await _authService.login(body).then((value) {
      currentUser = UserModel.fromJson(value["data"]);
      saveAuthToken(currentUser?.token, currentUser?.refreshToken);
      Get.toNamed("/base");
    }, onError: (err) {
      print("error logging in: $err");
      Get.rawSnackbar(
        message: ' ',
        messageText: const Text('An error occurred, try again',
            style: TextStyle(fontSize: 16)),
        overlayColor: const Color(0XFFFFFFFF),
        icon: const Icon(Icons.error, color: Colors.redAccent),
        shouldIconPulse: true,
        backgroundColor: const Color(0xFFFFFFFF),
        isDismissible: true,
        duration: const Duration(seconds: 5),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        borderRadius: 12,
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  Future<void> signup() async {
    Map body = {
      "email": emailTextController.text,
      "password": passwordTextController.text,
      "name": nameTextController.text
    };
    await _authService.signup(body).then((value) {
      currentUser = UserModel.fromJson(value["data"]);
      saveAuthToken(currentUser?.token, currentUser?.refreshToken);
      Get.toNamed("/base");
    }, onError: (err) {
      print("error signing up: $err");
      Get.rawSnackbar(
        message: ' ',
        messageText: const Text('An error occurred, try again',
            style: TextStyle(fontSize: 16)),
        overlayColor: const Color(0XFFFFFFFF),
        icon: const Icon(Icons.error, color: Colors.redAccent),
        shouldIconPulse: true,
        backgroundColor: const Color(0xFFFFFFFF),
        isDismissible: true,
        duration: const Duration(seconds: 5),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        borderRadius: 12,
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  Future<void> getUser() async {
    await _authService.getAuthenticatedUser(authToken.value).then((value) {
      currentUser = UserModel.fromJson(value["data"]);

      Get.toNamed("/base");
    }, onError: (err) {
      Get.toNamed("/auth");
      print("error signing up: $err");
      Get.rawSnackbar(
        message: ' ',
        messageText: const Text('An error occurred, try again',
            style: TextStyle(fontSize: 16)),
        overlayColor: const Color(0XFFFFFFFF),
        icon: const Icon(Icons.error, color: Colors.redAccent),
        shouldIconPulse: true,
        backgroundColor: const Color(0xFFFFFFFF),
        isDismissible: true,
        duration: const Duration(seconds: 5),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        borderRadius: 12,
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  Future<void> resetPassword() async {
    Map body = {
      "email": emailTextController.text,
    };
    await _authService.resetPassword(body).then((value) {
      print("Successfully sent password reset mail");
      print(value);
      Get.rawSnackbar(
        message: ' ',
        messageText: const Text('Password reset link sent, check your email',
            style: TextStyle(fontSize: 16)),
        overlayColor: const Color(0XFFFFFFFF),
        icon: const Icon(Icons.check, color: Colors.greenAccent),
        shouldIconPulse: true,
        backgroundColor: const Color(0xFFFFFFFF),
        isDismissible: true,
        duration: const Duration(seconds: 5),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        borderRadius: 12,
        snackPosition: SnackPosition.BOTTOM,
      );
    }, onError: (err) {
      print("error signing up: $err");
      Get.rawSnackbar(
        message: ' ',
        messageText: const Text('An error occurred, try again',
            style: TextStyle(fontSize: 16)),
        overlayColor: const Color(0XFFFFFFFF),
        icon: const Icon(Icons.error, color: Colors.redAccent),
        shouldIconPulse: true,
        backgroundColor: const Color(0xFFFFFFFF),
        isDismissible: true,
        duration: const Duration(seconds: 5),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        borderRadius: 12,
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  Future<void> refreshAuthToken() async {
    Map body = {
      "refresh_token": refreshToken.value,
    };
    await _authService.refreshToken(body).then((value) {
      print("Successfully refreshed auth token");
      print(value);
      refreshToken.value = value["access_token"];
    }, onError: (err) {
      print("error signing up: $err");
      Get.rawSnackbar(
        message: ' ',
        messageText: const Text('An error occurred, try again',
            style: TextStyle(fontSize: 16)),
        overlayColor: const Color(0XFFFFFFFF),
        icon: const Icon(Icons.error, color: Colors.redAccent),
        shouldIconPulse: true,
        backgroundColor: const Color(0xFFFFFFFF),
        isDismissible: true,
        duration: const Duration(seconds: 5),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        borderRadius: 12,
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }
}
