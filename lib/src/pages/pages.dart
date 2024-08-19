import 'dart:convert';
import 'dart:io';
import 'dart:math';

// import 'package:workout_management_class/src/cubit/cubit.dart';
// import 'package:workout_management_class/src/models/models.dart';
import 'package:flutter/services.dart';
import 'package:workout_management_class/src/cubit/cubit.dart';
import 'package:workout_management_class/src/models/models.dart';
import 'package:workout_management_class/src/shared/shared.dart';
import 'package:workout_management_class/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:supercharged/supercharged.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

// Shared
part 'general_page.dart';
part 'auth_page.dart';

// General Page
part 'splash_page.dart';

// Trainer Page
part 'trainer/login_page.dart';
part 'trainer/forgot_password_page.dart';

// Customer Page
part 'customer/main_page.dart';
part 'customer/login_page.dart';
part 'customer/register_page.dart';
part 'customer/register_success.dart';
part 'customer/forgot_password_page.dart';