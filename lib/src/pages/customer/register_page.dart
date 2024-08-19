part of '../pages.dart';

class CustomerRegisterPage extends StatefulWidget {
  const CustomerRegisterPage({Key? key}) : super(key: key);
  static const routeName = '/customer/register';

  @override
  State<CustomerRegisterPage> createState() => _CustomerRegisterPageState();
}

class _CustomerRegisterPageState extends State<CustomerRegisterPage> {
  Customer? customer;
  User? user;
  bool isLoading = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      onBackButtonPressed: () {
        Navigator.pop(context);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => CustomerLoginPage()),
        // );
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
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
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
              // inputFormatters: <TextInputFormatter>[
              //   FilteringTextInputFormatter.allow(
              //       RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')),
              // ],
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
            child: (isLoading == true)
                ? Center(child: loadingIndicator)
                : ElevatedButton(
                    onPressed: () async {
                      User? dataUser = User(
                          name: nameController.text,
                          email: emailController.text,
                          phoneNumber: phoneController.text);

                      setState(() {
                        isLoading = true;
                      });

                      await context
                          .read<UserCubit>()
                          .register(dataUser, passwordController.text);
                      UserState state = context.read<UserCubit>().state;

                      if (state is UserLoaded) {
                        // Navigasi ke halaman sukses
                        Get.to(() => const RegisterSuccess());
                      } else {
                        Get.snackbar("", "",
                            backgroundColor: "D9435E".toColor(),
                            icon: const Icon(
                              MdiIcons.closeCircleOutline,
                              color: Colors.white,
                            ),
                            titleText: Text(
                              "Register Account Failed",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            messageText: Text(
                              (state as UserLoadingFailed).message,
                              style: GoogleFonts.roboto(color: Colors.white),
                            ));
                        setState(() {
                          isLoading = false;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: secColor),
                    child: Text(
                      'Register Now',
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
