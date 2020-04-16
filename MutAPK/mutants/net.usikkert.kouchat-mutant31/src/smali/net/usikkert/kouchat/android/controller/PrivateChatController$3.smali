.class Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;
.super Ljava/lang/Object;
.source "PrivateChatController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/PrivateChatController;->updatePrivateChat(Ljava/lang/CharSequence;)V
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

    .line 253
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$300(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$600(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {v1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$400(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {v2}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$500(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->scrollTextViewToBottom(Landroid/widget/TextView;Landroid/widget/ScrollView;)V

    :cond_0
    return-void
.end method
