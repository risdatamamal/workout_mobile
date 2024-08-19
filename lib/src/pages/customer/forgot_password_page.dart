part of '../pages.dart';

class CustomerForgotPasswordPage extends StatefulWidget {
  @override
  State<CustomerForgotPasswordPage> createState() => _CustomerForgotPasswordPageState();
}

class _CustomerForgotPasswordPageState extends State<CustomerForgotPasswordPage> {
  TextEditingController emailController = TextEditingController();

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
      title: 'Forgot Password',
      subtitle: 'Reset password if your forgot it!',
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
            margin: const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Don’t worry! It happens. Please enter the email, and we will send the link to this email.",
              style: whiteFontStyle2,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 48,
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
            margin: const EdgeInsets.only(top: 24),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ElevatedButton(
              onPressed: () {
                // Get.to();
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  backgroundColor: secColor),
              child: Text(
                'Send',
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
