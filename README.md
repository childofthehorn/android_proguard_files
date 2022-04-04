# Android Project Proguard Files 
Collection of modern Android Proguard files.

Based on the [Proguard Snippets by @krschultz](https://github.com/krschultz/android-proguard-snippets).<br/>
See above to apply in Android Groovy Gradle scripts. 

## Why?
Separation of Concerns MATTERS!<br/>
Instead of having one giant proguard.pro file for an app, you can split it out based off of the dependencies that it is tied to.
1. Only Update/Replace in the corresponding proguard file for a given capability
2. Share proguard configuration files easily across apps and modules (if needed)
3. Remove proguard files when you remove libraries
4. IT RESULTS IN READABLE PROGUARD FILES! 🙀

## Use with Kotlin Gradle DSL
Easy inline functions make Kotlin-Gradle pretty great

1. Place `*.pro` files in the following folder `android-app/app/proguard` (for most folks)
2. Place the following bit of code in your `buildSrc` or `build.gradle.kts` directly
```kotlin
class ProguardFilter : FilenameFilter {
    override fun accept(
        f: File,
        filename: String
    ): Boolean {
        return filename.endsWith("pro") || filename.endsWith("txt")
    }
}
```
3. Add the following function to `build.gradle.kts` in your `app` module under the `android{}` section
```kotlin
android {
    ....
    val proGuardFolderCollection = 
        files(
          file("./proguard")
            .listFiles(ProguardFilter())
         )
         .toList()
         .toTypedArray()
}
```
4. Apply your `proguard` collection in your `build.gradle.kts` in your `app` module under the `buildTypes{}` section
```kotlin
buildTypes{
    getByName("release") {
        proguardFiles(*proGuardFolderCollection)
    }
}
```
