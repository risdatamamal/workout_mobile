part of '../pages.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      child: Center(
        heightFactor: 2,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 120,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Registration Success!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () async {
                    // Navigate to the login page
                    await context.read<UserCubit>().logout();
                    Get.to(const CustomerLoginPage());
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(160, 50),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      backgroundColor: secColor),
                  child: Text(
                    'Go to Login',
                    style: GoogleFonts.roboto(
                        color: blackColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}