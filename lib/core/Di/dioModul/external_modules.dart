import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:location/location.dart';

@module
abstract class ExternalModules {
  @lazySingleton
  @lazySingleton
  InternetConnectionChecker provideInternetConnectionChecker() =>
      InternetConnectionChecker.instance;

  @lazySingleton
  Location provideLocation() => Location();
  @lazySingleton
  FirebaseFirestore provideFirebaseFirestore() {
    return FirebaseFirestore.instance;
  }
}
