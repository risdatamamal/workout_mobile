part of 'models.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? photoURL;
  static String? token;
  final int? isActive;

  User({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.photoURL,
    this.isActive,
  });

  factory User.fromJson(Map<String, dynamic> data) => User(
        id: data['id'],
        name: data['name'],
        email: data['email'],
        phoneNumber: data['phone_number'],
        photoURL: data['photo_url'],
        isActive: data['is_active'],
      );

  @override
  List<Object> get props => [
        id ?? 0,
        name ?? '',
        email ?? '',
        phoneNumber ?? '',
        photoURL ?? '',
        isActive ?? 1,
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
        isActive: isActive ?? this.isActive,
      );

  // Static data
  // User mockUser = User(
  //   id: 1,
  //   name: 'John Doe',
  //   email: 'johndoe@gmail.com',
  //   phoneNumber: '081234567890',
  //   photoURL: 'assets/images/photo.png',
  //   roles: ['Customer'],
  //   isActive: 1,
  // );

}
