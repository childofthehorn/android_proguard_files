# Kotlin Proguard
-dontnote kotlin.internal.JRE8PlatformImplementations
-dontnote kotlin.internal.JRE7PlatformImplementations
-renamesourcefileattribute SourceFile
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,*Annotation*,EnclosingMethod

##--------------- Coroutines  ----------
# ServiceLoader support
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-keepnames class kotlinx.coroutines.android.AndroidExceptionPreHandler {}
-keepnames class kotlinx.coroutines.android.AndroidDispatcherFactory {}

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembernames class kotlinx.** {
    volatile <fields>;
}

# Diagnostics
-keep class org.jetbrains.kotlin.diagnostics.** { *; }
-keep class org.jetbrains.kotlin.compilier.plugin.** { *; }

# SafeContinuation
-keepclassmembernames class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}
-keepclassmembers class kotlin.coroutines.SafeContinuation { *; }
-dontnote kotlin.coroutines.SafeContinuation
