part of '../pages.dart';

class CustomerLoginPage extends StatefulWidget {
  const CustomerLoginPage({Key? key}) : super(key: key);
  static const routeName = '/customer/login';

  @override
  State<CustomerLoginPage> createState() => _CustomerLoginPageState();
}

class _CustomerLoginPageState extends State<CustomerLoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return AuthPage(
      switchButton: LiteRollingSwitch(
        value: !isSwitched,
        width: 160,
        textOn: 'Customer',
        textOff: 'Trainer',
        colorOn: secColor,
        colorOff: Colors.blueGrey,
        iconOn: Icons.account_circle,
        iconOff: Icons.account_circle_outlined,
        animationDuration: const Duration(milliseconds: 300),
        onChanged: (bool state) {
          setState(() {
            isSwitched = state;
          });
        },
        onDoubleTap: () {
          Get.to(() => const TrainerLoginPage());
        },
        onSwipe: () {
          Get.to(() => const TrainerLoginPage());
        },
        onTap: () {
          Get.to(() => const TrainerLoginPage());
        },
      ),
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
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 12),
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
                FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$')), // Only numbers can be entered
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
                const EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 12),
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
            margin: const EdgeInsets.only(top: 64),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? loadingIndicator
                : ElevatedButton(
                    onPressed: () {},
                    // onPressed: () async {
                    //   setState(() {
                    //     isLoading = true;
                    //   });
                    //
                    //   await context.read<UserCubit>().signIn(
                    //       emailController.text, passwordController.text);
                    //   UserState state = context.read<UserCubit>().state;
                    //
                    //   if (state is UserLoaded) {
                    //     context.read<CoffeeCubit>().getCoffees();
                    //     context.read<TransactionCubit>().getTransactions();
                    //     Get.to(MainPage());
                    //   } else {
                    //     Get.snackbar("", "",
                    //         backgroundColor: "D9435E".toColor(),
                    //         icon: Icon(
                    //           MdiIcons.closeCircleOutline,
                    //           color: whiteColor,
                    //         ),
                    //         titleText: Text(
                    //           "Login Failed",
                    //           style: GoogleFonts.roboto(
                    //               color: whiteColor,
                    //               fontWeight: FontWeight.w600),
                    //         ),
                    //         messageText: Text(
                    //           (state as UserLoadingFailed).message,
                    //           style: GoogleFonts.roboto(color: whiteColor),
                    //         ));
                    //     setState(() {
                    //       isLoading = false;
                    //     });
                    //   }
                    // },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: secColor),
                    child: Text(
                      'Login',
                      style: GoogleFonts.roboto(
                          color: blackColor, fontWeight: FontWeight.w500),
                    ),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 24),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45,
                    color: mainColor,
                  )
                : ElevatedButton(
                    onPressed: () {
                      Get.to(() => CustomerForgotPasswordPage());
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.roboto(
                          color: whiteColor, fontWeight: FontWeight.w500),
                    ),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 12),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45,
                    color: mainColor,
                  )
                : ElevatedButton(
                    onPressed: () {
                      Get.to(() => const CustomerRegisterPage());
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Don’t have an account? Sign Up!',
                      style: GoogleFonts.roboto(
                          color: whiteColor, fontWeight: FontWeight.w500),
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
