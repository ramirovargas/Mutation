.class Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;
.super Ljava/lang/Object;
.source "AsyncMessageResponderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageArrived(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

.field final synthetic val$color:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$userCode:I


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;ILjava/lang/String;I)V
    .locals 0

    .line 76
    iput-object p1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    iput p2, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->val$userCode:I

    iput-object p3, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->val$msg:Ljava/lang/String;

    iput p4, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    iget v1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->val$userCode:I

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->waitForUserToIdentify(I)V

    .line 80
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    invoke-static {v0}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->access$000(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;)Lnet/usikkert/kouchat/net/MessageResponder;

    move-result-object v0

    iget v1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->val$userCode:I

    iget-object v2, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->val$msg:Ljava/lang/String;

    iget v3, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;->val$color:I

    invoke-interface {v0, v1, v2, v3}, Lnet/usikkert/kouchat/net/MessageResponder;->messageArrived(ILjava/lang/String;I)V

    return-void
.end method
