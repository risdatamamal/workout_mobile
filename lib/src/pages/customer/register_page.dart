part of '../pages.dart';

class CustomerRegisterPage extends StatefulWidget {
  @override
  State<CustomerRegisterPage> createState() => _CustomerRegisterPageState();
}

class _CustomerRegisterPageState extends State<CustomerRegisterPage> {
  // Customer? customer;
  File? pictureFile;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      onBackButtonPressed: () {
        // Get.back();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CustomerLoginPage()),
        );
      },
      title: 'Register',
      subtitle: 'Sign up your account now!',
      child: Column(
        children: [
          Container(
            width: 160,
            height: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Container(
            width: 160,
            height: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sub-logo.png'),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () async {
          //     XFile? pickedFile =
          //         await ImagePicker().pickImage(source: ImageSource.gallery);
          //     if (pickedFile != null) {
          //       // pictureFile = File(pickedFile.path);
          //       setState(() {});
          //     }
          //   },
          //   child: Container(
          //     width: 110,
          //     height: 110,
          //     margin: const EdgeInsets.only(top: 26),
          //     padding: const EdgeInsets.all(10),
          //     decoration: const BoxDecoration(
          //         image: DecorationImage(
          //             image: AssetImage('assets/images/photo_border.png'))),
          //     child: (pictureFile != null)
          //         ? Container(
          //             decoration: BoxDecoration(
          //                 shape: BoxShape.circle,
          //                 image: DecorationImage(
          //                     image: FileImage(pictureFile!),
          //                     fit: BoxFit.cover)),
          //           )
          //         : Container(
          //             decoration: const BoxDecoration(
          //                 shape: BoxShape.circle,
          //                 image: DecorationImage(
          //                     image: AssetImage('assets/images/photo.png'),
          //                     fit: BoxFit.cover)),
          //           ),
          //   ),
          // ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Full Name",
              style: whiteFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: secColor)),
            child: TextField(
              controller: nameController,
              style: TextStyle(color: whiteColor),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle2,
                  hintText: 'Type your full name'),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Phone Number",
              style: whiteFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: secColor)),
            child: TextField(
              controller: phoneController,
              style: TextStyle(color: whiteColor),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]')), // Only numbers can be entered
              ],
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle2,
                  hintText: 'Type your phone number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Email Address",
              style: whiteFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: secColor)),
            child: TextField(
              controller: emailController,
              style: TextStyle(color: whiteColor),
              keyboardType: TextInputType.emailAddress,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(
                    r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$')), // Only numbers can be entered
              ],
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle2,
                  hintText: 'Type your email address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Password",
              style: whiteFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: secColor)),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              style: TextStyle(color: whiteColor),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle2,
                  hintText: 'Type your password'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 24),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ElevatedButton(
              onPressed: () {
                // Get.to(
                //   AddressPage(
                //     User(
                //         name: nameController.text,
                //         email: emailController.text),
                //     passwordController.text,
                //     pictureFile ?? File('assets/images/photo.png'),
                //   ),
                // );
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  backgroundColor: secColor),
              child: Text(
                'Continue',
                style: GoogleFonts.roboto(
                    color: blackColor, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
