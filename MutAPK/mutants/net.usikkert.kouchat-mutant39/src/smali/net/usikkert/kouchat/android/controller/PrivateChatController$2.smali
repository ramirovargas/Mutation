.class Lnet/usikkert/kouchat/android/controller/PrivateChatController$2;
.super Ljava/lang/Object;
.source "PrivateChatController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/PrivateChatController;->registerPrivateChatInputListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 198
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 199
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$200(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->sendPrivateMessage(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$200(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
