import 'dart:convert';
import 'dart:io';
import 'package:workout_management_class/src/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'user_services.dart';

String baseURL = dotenv.get('CLIENT_URL');
String apiURL = dotenv.get('API_URL');