@echo off

echo .
echo ==================== MAKE ANDROID APK ====================
call gradlew.bat assembleDebug

echo .
echo ================== INSTALL ANDROID APK ===================
call adb %DEVICE% install -r .\app\build\outputs\apk\app-debug.apk

:end
echo .
REM pause