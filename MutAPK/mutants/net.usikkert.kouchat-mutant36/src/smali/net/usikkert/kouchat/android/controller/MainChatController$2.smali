.class Lnet/usikkert/kouchat/android/controller/MainChatController$2;
.super Ljava/lang/Object;
.source "MainChatController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/MainChatController;->registerMainChatInputListener()V
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

    .line 154
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 157
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 158
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$300(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->sendMessage(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$2;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$300(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
