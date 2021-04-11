// To parse this JSON data, do
//
//     final accounts = accountsFromJson(jsonString);

import 'dart:convert';

Accounts accountsFromJson(String str) => Accounts.fromJson(json.decode(str));

String accountsToJson(Accounts data) => json.encode(data.toJson());

class Accounts {
  Accounts({
    this.count,
    this.items,
  });

  int count;
  List<Item> items;

  factory Accounts.fromJson(Map<String, dynamic> json) => Accounts(
        count: json["count"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    this.id,
    this.login,
    this.encryptedPassword,
    this.password,
    this.personalInfo,
  });

  String id;
  String login;
  EncryptedPassword encryptedPassword;
  dynamic password;
  PersonalInfo personalInfo;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        login: json["login"],
        encryptedPassword:
            EncryptedPassword.fromJson(json["encryptedPassword"]),
        password: json["password"],
        personalInfo: PersonalInfo.fromJson(json["personalInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "login": login,
        "encryptedPassword": encryptedPassword.toJson(),
        "password": password,
        "personalInfo": personalInfo.toJson(),
      };
}

class EncryptedPassword {
  EncryptedPassword({
    this.value,
  });

  Value value;

  factory EncryptedPassword.fromJson(Map<String, dynamic> json) =>
      EncryptedPassword(
        value: Value.fromJson(json["value"]),
      );

  Map<String, dynamic> toJson() => {
        "value": value.toJson(),
      };
}

class Value {
  Value({
    this.hash,
    this.salt,
  });

  String hash;
  String salt;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        hash: json["hash"],
        salt: json["salt"],
      );

  Map<String, dynamic> toJson() => {
        "hash": hash,
        "salt": salt,
      };
}

class PersonalInfo {
  PersonalInfo({
    this.firstname,
    this.lastname,
    this.patronymic,
    this.age,
  });

  String firstname;
  String lastname;
  Patronymic patronymic;
  Age age;

  factory PersonalInfo.fromJson(Map<String, dynamic> json) => PersonalInfo(
        firstname: json["firstname"],
        lastname: json["lastname"],
        patronymic: Patronymic.fromJson(json["patronymic"]),
        age: Age.fromJson(json["age"]),
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "patronymic": patronymic.toJson(),
        "age": age.toJson(),
      };
}

class Age {
  Age({
    this.value,
  });

  int value;

  factory Age.fromJson(Map<String, dynamic> json) => Age(
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
      };
}

class Patronymic {
  Patronymic({
    this.value,
  });

  String value;

  factory Patronymic.fromJson(Map<String, dynamic> json) => Patronymic(
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
      };
}

Account accountFromJson(String str) => Account.fromJson(json.decode(str));

String accountToJson(Account data) => json.encode(data.toJson());

class Account {
  Account({
    this.login,
    this.password,
    this.personalInfo,
  });

  String login;
  String password;
  PersonalInfo personalInfo;

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        login: json["login"],
        password: json["password"],
        personalInfo: PersonalInfo.fromJson(json["personalInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "password": password,
        "personalInfo": personalInfo.toJson(),
      };
}
