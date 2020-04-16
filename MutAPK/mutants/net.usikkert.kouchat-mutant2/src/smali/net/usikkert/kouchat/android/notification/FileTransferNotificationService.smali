.class public Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;
.super Ljava/lang/Object;
.source "FileTransferNotificationService.java"


# static fields
.field private static final FILE_TRANSFER_NOTIFICATION_ID:I = 0x2710


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentFileTransferIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final currentFileTransfers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/usikkert/kouchat/net/FileTransfer;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

.field private final notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notificationManager:Landroid/app/NotificationManager;

    .line 68
    new-instance p2, Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    invoke-direct {p2, p1, p3}, Lnet/usikkert/kouchat/android/notification/NotificationHelper;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    iput-object p2, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    .line 69
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransferIds:Ljava/util/Set;

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransfers:Ljava/util/Map;

    return-void
.end method

.method private buildNotificationId(Lnet/usikkert/kouchat/net/FileTransfer;)I
    .locals 0

    .line 190
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getId()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    return p1
.end method

.method private createIntentForCancel(ILnet/usikkert/kouchat/net/FileTransfer;)Landroid/app/PendingIntent;
    .locals 3

    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const-class v2, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "userCode"

    .line 208
    invoke-interface {p2}, Lnet/usikkert/kouchat/net/FileTransfer;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fileTransferId"

    .line 209
    invoke-interface {p2}, Lnet/usikkert/kouchat/net/FileTransfer;->getId()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFileTransfer "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createIntentForReceiveFileDialog(ILnet/usikkert/kouchat/net/FileReceiver;)Landroid/app/PendingIntent;
    .locals 3

    .line 195
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const-class v2, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "userCode"

    .line 197
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fileTransferId"

    .line 198
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->getId()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openReceiveFileDialog "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private disableSwipeToCancel(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private enableSwipeToCancel(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private setNotificationGroup(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 2

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 225
    sget-object v0, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->FILE_TRANSFER:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelFileTransferNotification(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 2

    const-string v0, "FileReceiver can not be null"

    .line 177
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getId()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 181
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransferIds:Ljava/util/Set;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransfers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public completeFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V
    .locals 7

    const-string v0, "FileTransfer can not be null"

    .line 145
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Status can not be empty"

    .line 146
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->buildNotificationId(Lnet/usikkert/kouchat/net/FileTransfer;)I

    move-result v0

    .line 149
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    move-result-object v1

    sget-object v3, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_0

    const v1, 0x7f060067

    .line 153
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 154
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v3, 0x7f0d0031

    new-array v4, v4, [Ljava/lang/Object;

    .line 155
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v6

    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 154
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_0
    const v1, 0x7f060068

    .line 157
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 158
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v3, 0x7f0d0032

    new-array v4, v4, [Ljava/lang/Object;

    .line 159
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v6

    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 158
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_0
    const/16 v1, 0x64

    .line 162
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getPercent()I

    move-result v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p2, -0x1

    .line 164
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string p2, "progress"

    .line 165
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 166
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->setNotificationGroup(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 168
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->enableSwipeToCancel(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 170
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransferIds:Ljava/util/Set;

    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransfers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public getCurrentFileTransferIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransferIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public notifyNewFileTransfer(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 6

    const-string v0, "FileReceiver can not be null"

    .line 74
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->buildNotificationId(Lnet/usikkert/kouchat/net/FileTransfer;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f060067

    .line 80
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v3, 0x7f0d0034

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v4

    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0031

    .line 82
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    invoke-direct {p0, v0, p1}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->createIntentForReceiveFileDialog(ILnet/usikkert/kouchat/net/FileReceiver;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x2

    .line 86
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "msg"

    .line 87
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 88
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->setNotificationGroup(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 90
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    invoke-virtual {v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->setFeedbackEffects(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 92
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->disableSwipeToCancel(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 94
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransferIds:Ljava/util/Set;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V
    .locals 8

    const-string v0, "FileTransfer can not be null"

    .line 99
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Status can not be empty"

    .line 100
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->buildNotificationId(Lnet/usikkert/kouchat/net/FileTransfer;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransfers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransfers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 110
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v3, 0x7f0d0044

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    move-result-object v1

    sget-object v4, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    const/4 v5, 0x1

    if-ne v1, v4, :cond_1

    const v1, 0x7f060067

    .line 114
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v4, 0x7f0d0031

    new-array v6, v5, [Ljava/lang/Object;

    .line 116
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v7

    invoke-virtual {v7}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 115
    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_1
    const v1, 0x7f060068

    .line 118
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v4, 0x7f0d0032

    new-array v6, v5, [Ljava/lang/Object;

    .line 120
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v7

    invoke-virtual {v7}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 119
    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 123
    :goto_0
    invoke-direct {p0, v0, p1}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->createIntentForCancel(ILnet/usikkert/kouchat/net/FileTransfer;)Landroid/app/PendingIntent;

    move-result-object v1

    const v4, 0x7f060055

    .line 124
    iget-object v6, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->context:Landroid/content/Context;

    const v7, 0x7f0d0022

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "progress"

    .line 127
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 128
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 129
    invoke-direct {p0, v3}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->setNotificationGroup(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 131
    invoke-direct {p0, v3}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->disableSwipeToCancel(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 133
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->currentFileTransfers:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 136
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 138
    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 p2, 0x64

    .line 139
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getPercent()I

    move-result p1

    invoke-virtual {v1, p2, p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
