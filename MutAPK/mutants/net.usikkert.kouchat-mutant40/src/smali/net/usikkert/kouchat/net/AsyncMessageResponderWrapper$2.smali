.class Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;
.super Ljava/lang/Object;
.source "AsyncMessageResponderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->fileSend(IJLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

.field final synthetic val$byteSize:J

.field final synthetic val$fileHash:I

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$user:Ljava/lang/String;

.field final synthetic val$userCode:I


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;IJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 202
    iput-object p1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    iput p2, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$userCode:I

    iput-wide p3, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$byteSize:J

    iput-object p5, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$fileName:Ljava/lang/String;

    iput-object p6, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$user:Ljava/lang/String;

    iput p7, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$fileHash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 205
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    iget v1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$userCode:I

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->waitForUserToIdentify(I)V

    .line 206
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->this$0:Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    invoke-static {v0}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->access$000(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;)Lnet/usikkert/kouchat/net/MessageResponder;

    move-result-object v1

    iget v2, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$userCode:I

    iget-wide v3, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$byteSize:J

    iget-object v5, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$fileName:Ljava/lang/String;

    iget-object v6, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$user:Ljava/lang/String;

    iget v7, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;->val$fileHash:I

    invoke-interface/range {v1 .. v7}, Lnet/usikkert/kouchat/net/MessageResponder;->fileSend(IJLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
