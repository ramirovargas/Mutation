.class public final Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;
.super Ljava/lang/Object;
.source "NotificationChannelSettings.kt"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x1a
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JN\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000cH\u0002J\u0008\u0010\u0015\u001a\u00020\nH\u0002J\u0008\u0010\u0016\u001a\u00020\nH\u0002J\u0008\u0010\u0017\u001a\u00020\nH\u0002J\u0008\u0010\u0018\u001a\u00020\nH\u0002J\u0008\u0010\u0019\u001a\u00020\nH\u0002J\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "soundUri",
        "Landroid/net/Uri;",
        "getSoundUri",
        "()Landroid/net/Uri;",
        "createChannel",
        "Landroid/app/NotificationChannel;",
        "id",
        "",
        "name",
        "description",
        "importance",
        "lights",
        "",
        "vibration",
        "badge",
        "visibility",
        "createFileTransfersChannel",
        "createMainChatAwayMessagesChannel",
        "createMainChatMessagesChannel",
        "createPrivateChatMessagesChannel",
        "createServiceChannel",
        "setupNotificationChannels",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final soundUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->context:Landroid/content/Context;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(ContentResolve\u2026R.raw.notification_sound)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->soundUri:Landroid/net/Uri;

    return-void
.end method

.method private final createChannel(IIIIZZZI)Landroid/app/NotificationChannel;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 126
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->context:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {v0, p1, p2, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 128
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const p1, -0xff0001

    .line 130
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 131
    invoke-virtual {v0, p6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 132
    sget-object p1, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->VIBRATION_PATTERN:[J

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 133
    invoke-virtual {v0, p7}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 134
    invoke-virtual {v0, p8}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 135
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->soundUri:Landroid/net/Uri;

    sget-object p2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-object v0
.end method

.method private final createFileTransfersChannel()Landroid/app/NotificationChannel;
    .locals 9

    const v1, 0x7f0d0044

    const v2, 0x7f0d0049

    const v3, 0x7f0d003f

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    .line 81
    invoke-direct/range {v0 .. v8}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createChannel(IIIIZZZI)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method private final createMainChatAwayMessagesChannel()Landroid/app/NotificationChannel;
    .locals 9

    const v1, 0x7f0d0045

    const v2, 0x7f0d004a

    const v3, 0x7f0d0040

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    .line 101
    invoke-direct/range {v0 .. v8}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createChannel(IIIIZZZI)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method private final createMainChatMessagesChannel()Landroid/app/NotificationChannel;
    .locals 9

    const v1, 0x7f0d0046

    const v2, 0x7f0d004b

    const v3, 0x7f0d0041

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    .line 91
    invoke-direct/range {v0 .. v8}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createChannel(IIIIZZZI)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method private final createPrivateChatMessagesChannel()Landroid/app/NotificationChannel;
    .locals 9

    const v1, 0x7f0d0047

    const v2, 0x7f0d004c

    const v3, 0x7f0d0042

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    .line 111
    invoke-direct/range {v0 .. v8}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createChannel(IIIIZZZI)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method private final createServiceChannel()Landroid/app/NotificationChannel;
    .locals 9

    const v1, 0x7f0d0048

    const v2, 0x7f0d004d

    const v3, 0x7f0d0043

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v8}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createChannel(IIIIZZZI)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getSoundUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->soundUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final setupNotificationChannels()V
    .locals 8

    .line 58
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/app/NotificationManager;

    .line 60
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createServiceChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 61
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createFileTransfersChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    .line 62
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createMainChatMessagesChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    .line 63
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createMainChatAwayMessagesChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    .line 64
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->createPrivateChatMessagesChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    const/4 v6, 0x5

    .line 67
    new-array v6, v6, [Landroid/app/NotificationChannel;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method
