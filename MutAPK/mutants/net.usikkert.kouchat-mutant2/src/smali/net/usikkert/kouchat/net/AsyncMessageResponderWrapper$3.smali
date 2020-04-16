.class Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;
.super Ljava/lang/Object;
.source "AsyncMessageResponderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->fileSendAccepted(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

.field final synthetic val$fileHash:I

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$userCode:I


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;ILjava/lang/String;II)V
    .locals 0

    .line 222
    iput-object p1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    iput p2, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$userCode:I

    iput-object p3, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$fileName:Ljava/lang/String;

    iput p4, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$fileHash:I

    iput p5, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 225
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    invoke-static {v0}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->access$000(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;)Lnet/usikkert/kouchat/net/MessageResponder;

    move-result-object v0

    iget v1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$userCode:I

    iget-object v2, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$fileName:Ljava/lang/String;

    iget v3, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$fileHash:I

    iget v4, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;->val$port:I

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/usikkert/kouchat/net/MessageResponder;->fileSendAccepted(ILjava/lang/String;II)V

    return-void
.end method
