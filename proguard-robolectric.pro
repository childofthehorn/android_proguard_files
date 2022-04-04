# Robolectric Proguard
# Robolectric does not affect production builds, test only
-dontnote com.google.protobuf.ExtensionRegistry
-dontnote com.google.protobuf.Extension
-dontnote libcore.io.Memory
-dontnote org.robolectric.Robolectric
