# AppsFlyer Proguard
-keep public class com.android.installreferrer.** { *; }
-keep public class com.miui.referrer.** {*;}
-keep class com.appsflyer.** { *; }
-keep class kotlin.jvm.internal.** { *; }
-dontwarn com.appsflyer.**
