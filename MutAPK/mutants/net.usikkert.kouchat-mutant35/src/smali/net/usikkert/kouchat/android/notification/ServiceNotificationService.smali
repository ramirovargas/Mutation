.class public Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;
.super Ljava/lang/Object;
.source "ServiceNotificationService.java"


# static fields
.field public static final SERVICE_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    return-void
.end method

.method private createPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 73
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    const-class v3, Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private disableSwipeToCancel(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method


# virtual methods
.method public createServiceNotification()Landroid/app/Notification;
    .locals 3

    .line 51
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f060066

    .line 54
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    const v2, 0x7f0d003d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    const v2, 0x7f0d0020

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 57
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->context:Landroid/content/Context;

    const v2, 0x7f0d003b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 58
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->createPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v0, -0x2

    .line 59
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "service"

    .line 60
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 63
    sget-object v0, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->SERVICE:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 66
    :cond_0
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->disableSwipeToCancel(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 68
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
