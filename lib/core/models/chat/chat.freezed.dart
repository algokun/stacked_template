// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

class _$ChatModelTearOff {
  const _$ChatModelTearOff();

  _ChatModel call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website}) {
    return _ChatModel(
      id: id,
      name: name,
      username: username,
      email: email,
      phone: phone,
      website: website,
    );
  }
}

// ignore: unused_element
const $ChatModel = _$ChatModelTearOff();

mixin _$ChatModel {
  int get id;
  String get name;
  String get username;
  String get email;
  String get phone;
  String get website;

  Map<String, dynamic> toJson();
  $ChatModelCopyWith<ChatModel> get copyWith;
}

abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website});
}

class _$ChatModelCopyWithImpl<$Res> implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  final ChatModel _value;
  // ignore: unused_field
  final $Res Function(ChatModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object website = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      website: website == freezed ? _value.website : website as String,
    ));
  }
}

abstract class _$ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$ChatModelCopyWith(
          _ChatModel value, $Res Function(_ChatModel) then) =
      __$ChatModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website});
}

class __$ChatModelCopyWithImpl<$Res> extends _$ChatModelCopyWithImpl<$Res>
    implements _$ChatModelCopyWith<$Res> {
  __$ChatModelCopyWithImpl(_ChatModel _value, $Res Function(_ChatModel) _then)
      : super(_value, (v) => _then(v as _ChatModel));

  @override
  _ChatModel get _value => super._value as _ChatModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object website = freezed,
  }) {
    return _then(_ChatModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      website: website == freezed ? _value.website : website as String,
    ));
  }
}

@JsonSerializable()
class _$_ChatModel extends _ChatModel with DiagnosticableTreeMixin {
  _$_ChatModel(
      {this.id, this.name, this.username, this.email, this.phone, this.website})
      : super._();

  factory _$_ChatModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModel(id: $id, name: $name, username: $username, email: $email, phone: $phone, website: $website)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('website', website));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality().equals(other.website, website)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website);

  @override
  _$ChatModelCopyWith<_ChatModel> get copyWith =>
      __$ChatModelCopyWithImpl<_ChatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatModelToJson(this);
  }
}

abstract class _ChatModel extends ChatModel {
  _ChatModel._() : super._();
  factory _ChatModel(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website}) = _$_ChatModel;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$_ChatModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get website;
  @override
  _$ChatModelCopyWith<_ChatModel> get copyWith;
}
