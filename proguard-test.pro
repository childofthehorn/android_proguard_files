# Proguard for common Test Frameworks

-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

-dontnote junit.framework.**
-dontnote junit.runner.**

-dontwarn android.test.**
-dontwarn androidx.test.**

-dontwarn org.junit.**

-dontwarn org.hamcrest.**

-dontwarn com.squareup.javawriter.JavaWriter

#Mockito + MockK
-dontwarn org.mockito.**
-dontwarn org.xmlpull.**
-dontwarn io.mockk.**
