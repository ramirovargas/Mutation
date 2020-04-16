.class public Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;
.super Ljava/lang/Object;
.source "AndroidFileTransferListener.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/FileTransferListener;


# static fields
.field private static final MINIMUM_UPDATE_TIME:I = 0x14e


# instance fields
.field private final androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

.field private final context:Landroid/content/Context;

.field private final fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

.field private lastTransferUpdate:J

.field private final messageController:Lnet/usikkert/kouchat/misc/MessageController;

.field private final notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

.field private percentTransferred:I

.field private final receivingText:Ljava/lang/String;

.field private final sendingText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/net/FileTransfer;Landroid/content/Context;Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;Lnet/usikkert/kouchat/misc/MessageController;Lnet/usikkert/kouchat/android/notification/NotificationService;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FileTransfer can not be null"

    .line 70
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Context can not be null"

    .line 71
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AndroidFileUtils can not be null"

    .line 72
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MessageController can not be null"

    .line 73
    invoke-static {p4, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NotificationService can not be null"

    .line 74
    invoke-static {p5, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    .line 77
    iput-object p2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->context:Landroid/content/Context;

    .line 78
    iput-object p3, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    .line 79
    iput-object p4, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->messageController:Lnet/usikkert/kouchat/misc/MessageController;

    .line 80
    iput-object p5, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    const/4 p3, -0x1

    .line 81
    iput p3, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->percentTransferred:I

    const-wide/16 p3, 0x0

    .line 82
    iput-wide p3, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->lastTransferUpdate:J

    const p3, 0x7f0d0039

    .line 84
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->receivingText:Ljava/lang/String;

    const p3, 0x7f0d003c

    .line 85
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->sendingText:Ljava/lang/String;

    .line 87
    invoke-interface {p1, p0}, Lnet/usikkert/kouchat/net/FileTransfer;->registerListener(Lnet/usikkert/kouchat/event/FileTransferListener;)V

    return-void
.end method


# virtual methods
.method public statusCompleted()V
    .locals 4

    .line 142
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->context:Landroid/content/Context;

    const v3, 0x7f0d002e

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->completeFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/FileTransfer;->getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    move-result-object v0

    sget-object v1, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    check-cast v0, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 148
    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileReceiver;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;->addFileToMediaDatabase(Landroid/content/Context;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public statusConnecting()V
    .locals 4

    .line 98
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->context:Landroid/content/Context;

    const v3, 0x7f0d002f

    .line 99
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    return-void
.end method

.method public statusFailed()V
    .locals 4

    .line 154
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->context:Landroid/content/Context;

    const v3, 0x7f0d0030

    .line 155
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->completeFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    return-void
.end method

.method public statusTransferring()V
    .locals 7

    .line 120
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/FileTransfer;->getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    move-result-object v0

    sget-object v1, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    check-cast v0, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 123
    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->receivingText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->messageController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->context:Landroid/content/Context;

    const v3, 0x7f0d003a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 127
    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileReceiver;->getOriginalFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 128
    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileReceiver;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->sendingText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public statusWaiting()V
    .locals 4

    .line 92
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->context:Landroid/content/Context;

    const v3, 0x7f0d003e

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    return-void
.end method

.method public transferUpdate()V
    .locals 8

    .line 160
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/FileTransfer;->getPercent()I

    move-result v0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 162
    iget-wide v3, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->lastTransferUpdate:J

    sub-long v5, v1, v3

    .line 164
    iget v3, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->percentTransferred:I

    if-eq v0, v3, :cond_1

    const-wide/16 v3, 0x14e

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    .line 165
    iput v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->percentTransferred:I

    .line 166
    iput-wide v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->lastTransferUpdate:J

    .line 168
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/FileTransfer;->getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    move-result-object v0

    sget-object v1, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->receivingText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->fileTransfer:Lnet/usikkert/kouchat/net/FileTransfer;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;->sendingText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->updateFileTransferProgress(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
