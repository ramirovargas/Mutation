.class public Lnet/usikkert/kouchat/android/notification/NotificationService;
.super Ljava/lang/Object;
.source "NotificationService.java"


# instance fields
.field private final fileTransferNotificationService:Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

.field private final messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final serviceNotificationService:Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 75
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 76
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->notificationManager:Landroid/app/NotificationManager;

    .line 80
    new-instance v0, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;

    invoke-direct {v0, p1}, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->serviceNotificationService:Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;

    .line 81
    new-instance v0, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {v0, p1, v1, p2}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->fileTransferNotificationService:Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

    .line 82
    new-instance v0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {v0, p1, v1, p2}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    return-void
.end method


# virtual methods
.method public cancelFileTransferNotification(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->fileTransferNotificationService:Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->cancelFileTransferNotification(Lnet/usikkert/kouchat/net/FileReceiver;)V

    return-void
.end method

.method public completeFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->fileTransferNotificationService:Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->completeFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    return-void
.end method

.method public createServiceNotification()Landroid/app/Notification;
    .locals 1

    .line 91
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->serviceNotificationService:Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/ServiceNotificationService;->createServiceNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
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

    .line 220
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->fileTransferNotificationService:Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->getCurrentFileTransferIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isMainChatActivity()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->isMainChatActivity()Z

    move-result v0

    return v0
.end method

.method public isPrivateChatActivity()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->isPrivateChatActivity()Z

    move-result v0

    return v0
.end method

.method public notifyNewFileTransfer(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->fileTransferNotificationService:Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->notifyNewFileTransfer(Lnet/usikkert/kouchat/net/FileReceiver;)V

    return-void
.end method

.method public notifyNewMainChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notifyNewMainChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    return-void
.end method

.method public notifyNewPrivateChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 1

    const-string v0, "User can not be null"

    .line 115
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notifyNewPrivateChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 227
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public resetAllMessageNotifications()V
    .locals 1

    .line 126
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->resetAllNotifications()V

    return-void
.end method

.method public resetPrivateChatNotification(Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    const-string v0, "User can not be null"

    .line 135
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->messageNotificationService:Lnet/usikkert/kouchat/android/notification/MessageNotificationService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->resetPrivateChatNotification(Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method public updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/NotificationService;->fileTransferNotificationService:Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/notification/FileTransferNotificationService;->updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    return-void
.end method
