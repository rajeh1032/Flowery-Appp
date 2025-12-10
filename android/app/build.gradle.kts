plugins {
    id("com.android.application")
    id("com.google.gms.google-services")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

import java.util.Properties
import java.io.FileInputStream
import java.io.File

// Correct path to .env file in Flutter root directory
// android/app/build.gradle.kts -> android/app -> android -> project_root
val dotenvFile = File(rootProject.projectDir.parent, ".env")
val env = Properties()

if (dotenvFile.exists()) {
    env.load(FileInputStream(dotenvFile))
}

android {
    namespace = "com.example.flower_e_commerce_app"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.flower_e_commerce_app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName

        // Load Google Maps API Key from .env
        val mapsApiKey = env.getProperty("GOOGLE_MAPS_API_KEY") ?: ""
        manifestPlaceholders["GOOGLE_MAPS_API_KEY"] = mapsApiKey
    }

    flavorDimensions += "default"
    productFlavors {
        create("development") {
            dimension = "default"
            applicationIdSuffix = ".dev"
            resValue("string", "app_name", "Flowery Development")
        }
        create("production") {
            dimension = "default"
            resValue("string", "app_name", "Flowery Production")
        }
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}