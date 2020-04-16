.class Lnet/usikkert/kouchat/android/controller/MainChatController$10;
.super Ljava/lang/Object;
.source "MainChatController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/MainChatController;->userChanged(ILnet/usikkert/kouchat/misc/User;)V
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

    .line 439
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$10;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 441
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$10;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$400(Lnet/usikkert/kouchat/android/controller/MainChatController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$10;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$200(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->sort()V

    :cond_0
    return-void
.end method
