# Identique à app/proguard-rules.pro : à utiliser si minifyEnabled passe à true.
# Actuellement la minification est désactivée (voir build.gradle).

# kotlinx-serialization : garde les serializers générés + champs @Serializable.
-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.**
-keepclassmembers class kotlinx.serialization.json.** { *; }
-keepclasseswithmembernames class * {
    kotlinx.serialization.KSerializer serializer(...);
}

# Conserve les modèles @Serializable de l'app.
-keep @kotlinx.serialization.Serializable class * { *; }
-keepclassmembers class * {
    @kotlinx.serialization.SerialName <fields>;
}

# Ktor client Android.
-keep class io.ktor.** { *; }
-dontwarn io.ktor.**
