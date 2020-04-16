.class public Lnet/usikkert/kouchat/misc/DelayedLogonTask;
.super Ljava/util/TimerTask;
.source "DelayedLogonTask.java"


# instance fields
.field private final chatState:Lnet/usikkert/kouchat/misc/ChatState;

.field private final networkService:Lnet/usikkert/kouchat/net/NetworkService;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/net/NetworkService;Lnet/usikkert/kouchat/misc/ChatState;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const-string v0, "NetworkService can not be null"

    .line 46
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ChatState can not be null"

    .line 47
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/DelayedLogonTask;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    .line 50
    iput-object p2, p0, Lnet/usikkert/kouchat/misc/DelayedLogonTask;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/DelayedLogonTask;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkService;->isNetworkUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/DelayedLogonTask;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/ChatState;->setLogonCompleted(Z)V

    :cond_0
    return-void
.end method
