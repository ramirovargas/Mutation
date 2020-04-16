.class Lnet/usikkert/kouchat/android/controller/MainChatController$5;
.super Ljava/lang/Object;
.source "MainChatController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/MainChatController;->appendToChat(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

.field final synthetic val$message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/MainChatController;Ljava/lang/CharSequence;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 366
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$400(Lnet/usikkert/kouchat/android/controller/MainChatController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$500(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->val$message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$300(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$700(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$500(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$600(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->scrollTextViewToBottom(Landroid/widget/TextView;Landroid/widget/ScrollView;)V

    :cond_1
    return-void
.end method
