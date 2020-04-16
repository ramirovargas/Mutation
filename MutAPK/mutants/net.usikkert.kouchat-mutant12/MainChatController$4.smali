.class Lnet/usikkert/kouchat/android/controller/MainChatController$4;
.super Ljava/lang/Object;
.source "MainChatController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/MainChatController;->registerUserListClickListener()V
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

    .line 192
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$4;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 195
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    .line 198
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->isMe()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$4;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    const-class p4, Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "b97af25054fd46b592246d0ade5933a6"


    .line 203
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$4;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
