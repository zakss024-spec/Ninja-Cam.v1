# NinjaCam Android build package

This is a native Android Gradle project, not a Flutter project.

Required Android project markers are included:
- settings.gradle.kts
- build.gradle.kts
- app/build.gradle.kts
- gradlew
- gradlew.bat
- gradle/wrapper/gradle-wrapper.properties
- app/src/main/AndroidManifest.xml

Build command:
./gradlew :app:assembleDebug

APK:
app/build/outputs/apk/debug/app-debug.apk

If a builder asks whether this is Flutter or Android, choose Android/Gradle.
Do not require pubspec.yaml; this project intentionally does not use Flutter.
