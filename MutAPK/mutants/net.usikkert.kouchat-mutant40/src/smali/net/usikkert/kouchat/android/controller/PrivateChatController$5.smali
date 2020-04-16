.class Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;
.super Ljava/lang/Object;
.source "PrivateChatController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/PrivateChatController;->updateTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

.field final synthetic val$subtitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/PrivateChatController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;->val$subtitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 302
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$700(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;->this$0:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->access$700(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;->val$subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method
