part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> login(String email, String password,
      {http.Client? client}) async {
    client ??= http.Client();

    String url = '$apiURL/login';

    var response = await client.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body:
            jsonEncode(<String, String>{'email': email, 'password': password}));

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'please try again');
    } else {
      var data = jsonDecode(response.body);
      User.token = data['data']['access_token'];
      User value = User.fromJson(data['data']['user']);

      return ApiReturnValue(value: value, message: 'Success');
    }
  }

  static Future<ApiReturnValue<User>> register(User user, String password,
      {File? pictureFile, http.Client? client}) async {
    client ??= http.Client();

    String url = '$apiURL/register';

    var response = await client.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          'name': user.name!,
          'email': user.email!,
          'password': password,
          'phone_number': user.phoneNumber!,
        }));

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    } else {
      var data = jsonDecode(response.body);
      User.token = data['data']['access_token'];
      User value = User.fromJson(data['data']['user']);

      // if (pictureFile != null) {
      //   ApiReturnValue<String> result = await uploadProfilePicture(pictureFile);
      //   if (result.value != null) {
      //     value = value.copyWith(photoURL: '$baseURL/storage/${result.value!}');
      //   }
      // }

      return ApiReturnValue(value: value, message: 'Success');
    }
  }

  // static Future<ApiReturnValue<String>> uploadProfilePicture(File pictureFile,
  //     {http.MultipartRequest? request}) async {
  //   String url = '$apiURL/user/photo';
  //   var uri = Uri.parse(url);
  //
  //   request ??= http.MultipartRequest("POST", uri)
  //     ..headers["Content-Type"] = "application/json"
  //     ..headers["Authorization"] = 'Bearer ${User.token}';
  //
  //   var multipartFile =
  //       await http.MultipartFile.fromPath('file', pictureFile.path);
  //   request.files.add(multipartFile);
  //
  //   var response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //     String responseBody = await response.stream.bytesToString();
  //     var data = jsonDecode(responseBody);
  //
  //     String imagePath = data['data'][0];
  //
  //     return ApiReturnValue(
  //         value: imagePath, message: 'Uploading Profile Picture Success');
  //   } else {
  //     return ApiReturnValue(message: 'Uploading Profile Picture Failed');
  //   }
  // }

  static Future<ApiReturnValue<String>> logout({http.Client? client}) async {
    client ??= http.Client();
    String url = '$apiURL/logout';

    var response = await client.get(Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Authorization": 'Bearer ${User.token}'
        });

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    } else {
      User.token = '';
      return ApiReturnValue(value: 'Logout Success', message: 'Success');
    }
  }
}
