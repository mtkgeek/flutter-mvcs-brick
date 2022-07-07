import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

@immutable
class UserModel {
  final String? id;
  final String? createdAt;
  final String? email;
  final String? name;
  final String? token;
  final String? refreshToken;

  const UserModel({
    this.id,
    this.createdAt,
    this.email,
    this.name,
    this.token,
    this.refreshToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as String?,
        createdAt: json['created_at'] as String?,
        email: json['email'] as String?,
        name: json['name'] as String?,
        token: json['token'] as String?,
        refreshToken: json['refresh_token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt,
        'email': email,
        'name': name,
        'token': token,
        'refresh_token': refreshToken,
      };

  UserModel copyWith({
    String? id,
    String? createdAt,
    String? email,
    String? name,
    String? token,
    String? refreshToken,
  }) {
    return UserModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      email: email ?? this.email,
      name: name ?? this.name,
      token: token ?? this.token,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }
}
