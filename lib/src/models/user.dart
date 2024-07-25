part of 'models.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? photoURL;
  final List<String>? roles;
  static String? token;
  final int? isActive;

  User({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.photoURL,
    this.roles,
    this.isActive,
  });

  factory User.fromJson(Map<String, dynamic> data) => User(
        id: data['id'],
        name: data['name'],
        email: data['email'],
        phoneNumber: data['phone_number'],
        photoURL: data['photo_url'],
        roles: data['roles'],
        isActive: data['is_active'],
      );

  @override
  List<Object> get props => [
        id ?? 0,
        name ?? '',
        email ?? '',
        phoneNumber ?? '',
        photoURL ?? '',
        roles ?? [],
        isActive ?? 0,
      ];

  User copyWith({
    int? id,
    String? name,
    String? email,
    String? phoneNumber,
    String? photoURL,
    List<String>? roles,
    int? isActive,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        photoURL: photoURL ?? this.photoURL,
        roles: roles ?? this.roles,
        isActive: isActive ?? this.isActive,
      );

  User mockUser = User(
    id: 1,
    name: 'John Doe',
    email: 'johndoe@gmail.com',
    phoneNumber: '081234567890',
    photoURL: 'assets/images/photo.png',
    roles: ['Customer'],
    isActive: 1,
  );

}
