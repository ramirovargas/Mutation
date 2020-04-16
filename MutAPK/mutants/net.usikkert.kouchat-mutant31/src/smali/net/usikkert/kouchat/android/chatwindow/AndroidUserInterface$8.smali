.class Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;
.super Landroid/os/AsyncTask;
.source "AndroidUserInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->updateMeWriting(Z)V
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

.field final synthetic val$isCurrentlyWriting:Z


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Z)V
    .locals 0

    .line 566
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iput-boolean p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;->val$isCurrentlyWriting:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 566
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 569
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->access$100(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/Controller;

    move-result-object p1

    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;->val$isCurrentlyWriting:Z

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/Controller;->updateMeWriting(Z)V

    const/4 p1, 0x0

    return-object p1
.end method
