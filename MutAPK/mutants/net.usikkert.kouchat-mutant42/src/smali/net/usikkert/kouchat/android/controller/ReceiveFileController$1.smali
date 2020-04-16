.class Lnet/usikkert/kouchat/android/controller/ReceiveFileController$1;
.super Ljava/lang/Object;
.source "ReceiveFileController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->createServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/ReceiveFileController;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/ReceiveFileController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController$1;->this$0:Lnet/usikkert/kouchat/android/controller/ReceiveFileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 100
    check-cast p2, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    .line 101
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/ReceiveFileController$1;->this$0:Lnet/usikkert/kouchat/android/controller/ReceiveFileController;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->getAndroidUserInterface()Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/ReceiveFileController;->access$000(Lnet/usikkert/kouchat/android/controller/ReceiveFileController;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
