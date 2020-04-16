.class Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;
.super Landroid/os/AsyncTask;
.source "AndroidUserInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->sendMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Ljava/lang/String;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 444
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 448
    :try_start_0
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->access$100(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/Controller;

    move-result-object p1

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->val$message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/Controller;->sendChatMessage(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->access$200(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object p1

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->val$message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showOwnMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 453
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->access$200(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object v0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
