# Google Play Proguard
-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService
-keep class com.google.android.gms.ads.** { *; }

# Optional
-dontwarn com.google.**
-keep class com.google.** { *; }
