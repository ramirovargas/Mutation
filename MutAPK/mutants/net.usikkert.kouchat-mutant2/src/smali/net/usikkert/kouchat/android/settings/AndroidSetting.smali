.class public Lnet/usikkert/kouchat/android/settings/AndroidSetting;
.super Lnet/usikkert/kouchat/settings/Setting;
.source "AndroidSetting.java"


# static fields
.field public static final WAKE_LOCK:Lnet/usikkert/kouchat/android/settings/AndroidSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lnet/usikkert/kouchat/android/settings/AndroidSetting;

    const-string v1, "WAKE_LOCK"

    invoke-direct {v0, v1}, Lnet/usikkert/kouchat/android/settings/AndroidSetting;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/android/settings/AndroidSetting;->WAKE_LOCK:Lnet/usikkert/kouchat/android/settings/AndroidSetting;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/settings/Setting;-><init>(Ljava/lang/String;)V

    return-void
.end method
