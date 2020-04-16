.class public Lnet/usikkert/kouchat/android/service/CancelFileTransferService;
.super Landroid/app/IntentService;
.source "CancelFileTransferService.java"


# instance fields
.field private androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CancelFileTransferService"

    .line 45
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lnet/usikkert/kouchat/android/service/CancelFileTransferService;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 39
    iput-object p1, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p1
.end method

.method private cancelFileTransfer(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "userCode"

    const/4 v1, -0x1

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "fileTransferId"

    .line 97
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 99
    iget-object v1, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {v1, v0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->cancelFileTransfer(II)V

    return-void
.end method

.method private createChatServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/usikkert/kouchat/android/service/ChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 107
    new-instance v0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService$1;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService$1;-><init>(Lnet/usikkert/kouchat/android/service/CancelFileTransferService;)V

    return-object v0
.end method

.method private waitForServiceToBind()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x32

    .line 83
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 50
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 52
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->createChatServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 54
    iget-object v1, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 59
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 62
    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 64
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->waitForServiceToBind()V

    .line 73
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->cancelFileTransfer(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
