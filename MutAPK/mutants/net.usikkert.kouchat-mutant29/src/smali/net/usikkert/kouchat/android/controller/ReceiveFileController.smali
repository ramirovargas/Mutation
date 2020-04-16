.class public Lnet/usikkert/kouchat/android/controller/ReceiveFileController;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ReceiveFileController.java"


# static fields
.field private static final WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final WRITE_REQUEST_CODE:I = 0x65


# instance fields
.field private fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

.field private receiveFileDialog:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 56
    new-instance v0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->receiveFileDialog:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

    return-void
.end method

.method static synthetic access$000(Lnet/usikkert/kouchat/android/controller/ReceiveFileController;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->showDialogOrAskPermission(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    return-void
.end method

.method private createChatServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/usikkert/kouchat/android/service/ChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 97
    new-instance v0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController$1;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController$1;-><init>(Lnet/usikkert/kouchat/android/controller/ReceiveFileController;)V

    return-object v0
.end method

.method private doShowDialog()V
    .locals 2

    .line 129
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->receiveFileDialog:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

    invoke-virtual {v0, p0}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->showMissingFileDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->receiveFileDialog:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

    invoke-virtual {v0, p0, v1}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->showReceiveFileDialog(Landroid/app/Activity;Lnet/usikkert/kouchat/net/FileReceiver;)V

    :goto_0
    return-void
.end method

.method private showDialogOrAskPermission(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userCode"

    const/4 v2, -0x1

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "fileTransferId"

    .line 112
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 114
    invoke-virtual {p1, v1, v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getFileReceiver(II)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 116
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 119
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->doShowDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 123
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p1, v0

    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->createChatServiceIntent()Landroid/content/Intent;

    move-result-object p1

    .line 66
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 67
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 86
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->receiveFileDialog:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

    .line 87
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

    .line 89
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const v0, 0x7f010003

    const v1, 0x7f010004

    .line 77
    invoke-virtual {p0, v0, v1}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->overridePendingTransition(II)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 144
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->doShowDialog()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0050

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 151
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->reject()V

    .line 152
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->finish()V

    :goto_0
    return-void
.end method
