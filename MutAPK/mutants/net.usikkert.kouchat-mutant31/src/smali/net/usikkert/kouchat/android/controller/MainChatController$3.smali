.class Lnet/usikkert/kouchat/android/controller/MainChatController$3;
.super Ljava/lang/Object;
.source "MainChatController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/MainChatController;->registerMainChatTextListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$000(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$000(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p1

    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$300(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->updateMeWriting(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
