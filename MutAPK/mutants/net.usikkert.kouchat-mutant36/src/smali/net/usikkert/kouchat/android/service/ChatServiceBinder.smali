.class public Lnet/usikkert/kouchat/android/service/ChatServiceBinder;
.super Landroid/os/Binder;
.source "ChatServiceBinder.java"


# instance fields
.field private androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "AndroidUserInterface can not be null"

    .line 40
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-void
.end method


# virtual methods
.method public getAndroidUserInterface()Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 1

    .line 45
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-void
.end method
