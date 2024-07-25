part of 'shared.dart';

Color mainColor = "176E5E".toColor();
Color secColor = "D1EE5E".toColor();
Color thirdColor = "FAFF00".toColor();
Color greyColor = "C9C9C9".toColor();
Color greySecColor = "D9D9D9".toColor();
Color whiteColor = "FFFFFF".toColor();
Color blackColor = "000000".toColor();
Color redColor = "FF0000".toColor();
Color brownColor = "ECE9E9".toColor();
Color gradientColor1 = "38474C".toColor();
Color gradientColor2 = "0E7D77".toColor();
Color transparentColor = Colors.transparent;

const double defaultMargin = 24;

Widget loadingIndicator = SpinKitFadingCircle(size: 45, color: mainColor);

TextStyle greyFontStyle1 =
    GoogleFonts.roboto().copyWith(color: greyColor, fontSize: 14);
TextStyle greyFontStyle2 =
    GoogleFonts.roboto().copyWith(color: greyColor, fontSize: 16);
TextStyle greyFontStyle3 =
    GoogleFonts.roboto().copyWith(color: greyColor, fontSize: 20);
TextStyle greyFontStyle4 =
    GoogleFonts.roboto().copyWith(color: greyColor, fontSize: 24);

TextStyle blackFontStyle1 = GoogleFonts.roboto()
    .copyWith(color: blackColor, fontSize: 14, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.roboto()
    .copyWith(color: blackColor, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.roboto()
    .copyWith(color: blackColor, fontSize: 20, fontWeight: FontWeight.w500);
TextStyle blackFontStyle4 = GoogleFonts.roboto()
    .copyWith(color: blackColor, fontSize: 24, fontWeight: FontWeight.w500);

TextStyle whiteFontStyle1 = GoogleFonts.roboto()
    .copyWith(color: whiteColor, fontSize: 14, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle2 = GoogleFonts.roboto()
    .copyWith(color: whiteColor, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle3 = GoogleFonts.roboto()
    .copyWith(color: whiteColor, fontSize: 20, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle4 = GoogleFonts.roboto()
    .copyWith(color: whiteColor, fontSize: 24, fontWeight: FontWeight.w500);