import 'package:flutter/material.dart';

abstract class AppConstants {
  static const List<Locale> supportedLocales = [Locale(en), Locale(ar)];
  static const String languageCode = "language_code";
  static const String secureStorage = 'secureStorage';
  static const String en = 'en';
  static const String ar = 'ar';
  static const String assetsPath = 'assets/translations';
  static const String token = 'token';
  static const String rememberMe = 'remember_me';
  static const String gender = 'gender';
  static const String male = 'male';
  static const String female = 'female';
  static const String femaleValue = 'Female';
  static const String allId = 'all';
  static const String noProduct = 'No Product';
  static const String guest = 'guest';
  static const String isTrue = 'true';
  static const String floatingHeroRemove = 'rm';
  static const String floatingHeroLoc = 'loc';
  static const String cityJsonFilePath = 'assets/json/city.json';
  static const String governorateJsonFilePath = 'assets/json/governorate.json';
  static const String loading = 'loading';
  static const String error = 'error';
  static const String success = 'success';
  static const int mainDuration = 10;
  static const int resendDuration = 3;
  static const int imageQuality = 80;
  static const String passwordCharacters = "★★★★★★";
  static const String notificationCountExceeded = '9+';
  static const String apiRemoteExecutor = 'apiRemoteExecutor';
  static const String firebaseRemoteExecutor = 'firebaseRemoteExecutor';
  static const String firebaseRealTimeDatabase = 'firebaseRealTimeDatabase';
  static const String aboutUsJsonFilePath = 'assets/json/aboutus.json';
  static const String termsConditionsJsonFilePath =
      'assets/json/termsconditions.json';
  static const String noInternet = 'No Internet Connection';
  static const String orderNotFound = 'Order not found';
  static const String driverLocationKey = 'driverLocation';
  static const String aboutUsDateFormat = 'dd MMM yyyy';
  static const String termsKey = 'terms_and_conditions';
  static const String aboutUsKey = 'about_app';
  static const String urlwatsApp = 'https://wa.me/';
  static const String collectionKey = 'orders';
  static const String urlTemplate =
      'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const String userAgentPackageName = 'com.example.tracking_app';

}
