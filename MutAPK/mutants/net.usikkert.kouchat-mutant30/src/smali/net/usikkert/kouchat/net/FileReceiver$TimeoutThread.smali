.class Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;
.super Ljava/lang/Thread;
.source "FileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/usikkert/kouchat/net/FileReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutThread"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/net/FileReceiver;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;->this$0:Lnet/usikkert/kouchat/net/FileReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, "TimeoutThread"

    .line 487
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x3a98

    .line 497
    :try_start_0
    invoke-static {v0, v1}, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 501
    invoke-static {}, Lnet/usikkert/kouchat/net/FileReceiver;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 505
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;->this$0:Lnet/usikkert/kouchat/net/FileReceiver;

    invoke-static {v0}, Lnet/usikkert/kouchat/net/FileReceiver;->access$100(Lnet/usikkert/kouchat/net/FileReceiver;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;->this$0:Lnet/usikkert/kouchat/net/FileReceiver;

    invoke-static {v0}, Lnet/usikkert/kouchat/net/FileReceiver;->access$100(Lnet/usikkert/kouchat/net/FileReceiver;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 507
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;->this$0:Lnet/usikkert/kouchat/net/FileReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/usikkert/kouchat/net/FileReceiver;->access$102(Lnet/usikkert/kouchat/net/FileReceiver;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 512
    invoke-static {}, Lnet/usikkert/kouchat/net/FileReceiver;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method
