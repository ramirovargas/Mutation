.class public Lnet/usikkert/kouchat/android/notification/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field public static final VIBRATION_PATTERN:[J


# instance fields
.field private final settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

.field private final soundUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 43
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x32
        0x64
        0x32
        0x64
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, 0x7f0c0000

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->soundUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public chooseMainChatChannel()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 61
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0045

    return v0

    :cond_0
    const v0, 0x7f0d0046

    return v0
.end method

.method public setFeedbackEffects(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->isNotificationSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->soundUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 89
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->isNotificationVibrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->VIBRATION_PATTERN:[J

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 94
    :cond_1
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->isNotificationLightEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0xff0001

    const/16 v1, 0x1f4

    const/16 v2, 0x7d0

    .line 95
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_2
    return-void
.end method
