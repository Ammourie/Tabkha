import 'dart:convert';

import '../../../../../core/common/type_validators.dart';
import '../../../../../core/models/base_model.dart';
import '../../../domain/entity/login_entity.dart';

class LoginModel extends BaseModel<LoginEntity> {
  final String? token;
  final AccountModel? account;

  LoginModel({
    required this.account,
    required this.token,
  });

  factory LoginModel.fromJson(String str) =>
      LoginModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginModel.fromMap(Map<String, dynamic> json) => LoginModel(
        account: json["account"] == null
            ? null
            : AccountModel.fromMap(json["account"]),
        token: stringV(json["token"]),
      );

  Map<String, dynamic> toMap() => {
        "account": account == null ? null : account!.toMap(),
        "token": stringV(this.token),
      };

  @override
  LoginEntity toEntity() {
    return LoginEntity(
      account: account?.toEntity(),
      token: token,
    );
  }
}

class AccountModel extends BaseModel<AccountEntity> {
  AccountModel({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  final String? id;
  final String? name;
  final String? imageUrl;

  factory AccountModel.fromJson(String str) =>
      AccountModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AccountModel.fromMap(Map<String, dynamic> json) => AccountModel(
        id: stringV(json["id"]),
        name: stringV(json["name"]),
        imageUrl: stringV(json["imageUrl"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "imageUrl": imageUrl,
      };

  @override
  AccountEntity toEntity() {
    return AccountEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
    );
  }
}
