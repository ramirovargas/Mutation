.class public Lnet/usikkert/kouchat/android/settings/AndroidSettings;
.super Lnet/usikkert/kouchat/settings/Settings;
.source "AndroidSettings.java"


# instance fields
.field private notificationLightEnabled:Z

.field private notificationSoundEnabled:Z

.field private notificationVibrationEnabled:Z

.field private wakeLockEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lnet/usikkert/kouchat/settings/Settings;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->wakeLockEnabled:Z

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationLightEnabled:Z

    .line 45
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationSoundEnabled:Z

    .line 46
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationVibrationEnabled:Z

    return-void
.end method


# virtual methods
.method public isNotificationLightEnabled()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationLightEnabled:Z

    return v0
.end method

.method public isNotificationSoundEnabled()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationSoundEnabled:Z

    return v0
.end method

.method public isNotificationVibrationEnabled()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationVibrationEnabled:Z

    return v0
.end method

.method public isWakeLockEnabled()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->wakeLockEnabled:Z

    return v0
.end method

.method public setNotificationLightEnabled(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationLightEnabled:Z

    return-void
.end method

.method public setNotificationSoundEnabled(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationSoundEnabled:Z

    return-void
.end method

.method public setNotificationVibrationEnabled(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->notificationVibrationEnabled:Z

    return-void
.end method

.method public setWakeLockEnabled(Z)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->wakeLockEnabled:Z

    if-eq v0, p1, :cond_0

    .line 67
    iput-boolean p1, p0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->wakeLockEnabled:Z

    .line 68
    sget-object p1, Lnet/usikkert/kouchat/android/settings/AndroidSetting;->WAKE_LOCK:Lnet/usikkert/kouchat/android/settings/AndroidSetting;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->fireSettingChanged(Lnet/usikkert/kouchat/settings/Setting;)V

    :cond_0
    return-void
.end method
