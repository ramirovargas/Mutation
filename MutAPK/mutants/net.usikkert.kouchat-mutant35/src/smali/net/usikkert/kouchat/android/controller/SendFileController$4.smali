.class Lnet/usikkert/kouchat/android/controller/SendFileController$4;
.super Ljava/lang/Object;
.source "SendFileController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/SendFileController;->userAdded(ILnet/usikkert/kouchat/misc/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

.field final synthetic val$user:Lnet/usikkert/kouchat/misc/User;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$4;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$4;->val$user:Lnet/usikkert/kouchat/misc/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 186
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$4;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$200(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$4;->val$user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->add(Lnet/usikkert/kouchat/misc/User;)V

    .line 187
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$4;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$500(Lnet/usikkert/kouchat/android/controller/SendFileController;)V

    return-void
.end method
