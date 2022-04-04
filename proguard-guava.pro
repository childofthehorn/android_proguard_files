# Configuration for Guava 20.0
#
# disagrees with instructions provided by Guava project
# https://github.com/google/guava/wiki/UsingProGuardWithGuava

# http://stackoverflow.com/questions/9120338/proguard-configuration-for-guava-with-obfuscation-and-optimization

-dontwarn javax.annotation.**
-dontwarn javax.inject.**
-dontwarn javax.lang.model.element.Modifier
-dontwarn sun.misc.Unsafe
-dontwarn java.lang.ClassValue
-dontwarn afu.org.checkerframework.**
-dontwarn org.checkerframework.**

# Google
-dontwarn com.google.common.base.**
-keep class com.google.common.base.** {*;}
-dontwarn com.google.errorprone.annotations.**
-keep class com.google.errorprone.annotations.** {*;}
-keep class com.google.j2objc.annotations.** { *; }
-dontwarn com.google.j2objc.annotations.**
-dontwarn com.google.common.collect.MinMaxPriorityQueue
-dontwarn com.google.common.util.concurrent.FuturesGetChecked**
