# Règles à appliquer si minifyEnabled passe à true (release).
# Actuellement la minification est désactivée (voir build.gradle),
# ces règles permettent de l'activer sans casser serialization/Ktor.

# kotlinx-serialization : garde les serializers générés + champs @Serializable.
-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.**
-keepclassmembers class kotlinx.serialization.json.** { *; }
-keepclasseswithmembernames class * {
    kotlinx.serialization.KSerializer serializer(...);
}

# Conserve les modèles @Serializable de l'app (request/response Tapo).
-keep @kotlinx.serialization.Serializable class * { *; }
-keepclassmembers class * {
    @kotlinx.serialization.SerialName <fields>;
}

# Ktor client Android.
-keep class io.ktor.** { *; }
-dontwarn io.ktor.**

# Wear Data Layer / complications : gardés via manifest, pas de règle spécifique.
# Debugging : décommenter pour garder les numéros de ligne en release.
#-keepattributes SourceFile,LineNumberTable
#-renamesourcefileattribute SourceFile