# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in f:\Dev\Flutter\flutter\packages\flutter_tools\gradle\flutter_proguard_rules.pro
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Razorpay Proguard Rules
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class com.razorpay.** {*;}
-keep class com.google.android.gms.wallet.** {*;}
-dontwarn com.razorpay.**
