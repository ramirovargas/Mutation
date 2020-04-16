.class public Lnet/usikkert/kouchat/android/settings/AndroidSettingsSaver;
.super Ljava/lang/Object;
.source "AndroidSettingsSaver.java"

# interfaces
.implements Lnet/usikkert/kouchat/settings/SettingsSaver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidSettingsSaver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveSettings()V
    .locals 2

    const-string v0, "AndroidSettingsSaver"

    const-string v1, "Ignoring call to saveSettings()"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
