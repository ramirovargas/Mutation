.class Lnet/usikkert/kouchat/android/service/CancelFileTransferService$1;
.super Ljava/lang/Object;
.source "CancelFileTransferService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->createServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/service/CancelFileTransferService;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/service/CancelFileTransferService;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService$1;->this$0:Lnet/usikkert/kouchat/android/service/CancelFileTransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 110
    check-cast p2, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    .line 111
    iget-object p1, p0, Lnet/usikkert/kouchat/android/service/CancelFileTransferService$1;->this$0:Lnet/usikkert/kouchat/android/service/CancelFileTransferService;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->getAndroidUserInterface()Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/service/CancelFileTransferService;->access$002(Lnet/usikkert/kouchat/android/service/CancelFileTransferService;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
