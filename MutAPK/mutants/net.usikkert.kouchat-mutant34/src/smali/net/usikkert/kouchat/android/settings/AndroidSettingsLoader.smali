.class public Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;
.super Ljava/lang/Object;
.source "AndroidSettingsLoader.java"


# static fields
.field private static final CLIENT:Ljava/lang/String; = "Android"

.field private static final DEFAULT_NICK_NAME:Ljava/lang/String; = "NewUser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNickNameFromPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const-string p1, "NewUser"

    return-object p1
.end method

.method private loadClient(Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    const-string v0, "Android"

    .line 77
    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setClient(Ljava/lang/String;)V

    return-void
.end method

.method private loadNickName(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    const v0, 0x7f0d0059

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-direct {p0, p2, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->getNickNameFromPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    return-void
.end method

.method private loadNotificationLight(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    const v0, 0x7f0d005c

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 128
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 130
    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setNotificationLightEnabled(Z)V

    return-void
.end method

.method private loadNotificationSound(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    const v0, 0x7f0d0060

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 136
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 138
    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setNotificationSoundEnabled(Z)V

    return-void
.end method

.method private loadNotificationVibration(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    const v0, 0x7f0d0063

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 144
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 146
    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setNotificationVibrationEnabled(Z)V

    return-void
.end method

.method private loadOwnColor(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    const v0, 0x7f0d0065

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 100
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 103
    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setOwnColor(I)V

    :cond_0
    return-void
.end method

.method private loadSystemColor(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    const v0, 0x7f0d0068

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 110
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 113
    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setSysColor(I)V

    :cond_0
    return-void
.end method

.method private loadWakeLock(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    const v0, 0x7f0d006c

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 120
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 122
    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setWakeLockEnabled(Z)V

    return-void
.end method


# virtual methods
.method public loadStoredSettings(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 2

    const-string v0, "Context can not be null"

    .line 59
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 60
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    invoke-direct {p0, p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadClient(Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    .line 66
    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadNickName(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/misc/User;)V

    .line 67
    invoke-direct {p0, p1, v0, p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadOwnColor(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    .line 68
    invoke-direct {p0, p1, v0, p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadSystemColor(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    .line 69
    invoke-direct {p0, p1, v0, p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadWakeLock(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    .line 71
    invoke-direct {p0, p1, v0, p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadNotificationLight(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadNotificationSound(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    .line 73
    invoke-direct {p0, p1, v0, p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadNotificationVibration(Landroid/content/Context;Landroid/content/SharedPreferences;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    return-void
.end method
