.class Lnet/usikkert/kouchat/android/controller/SendFileController$5;
.super Ljava/lang/Object;
.source "SendFileController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/SendFileController;->userChanged(ILnet/usikkert/kouchat/misc/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/SendFileController;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$5;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 196
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$5;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$200(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->sort()V

    return-void
.end method
