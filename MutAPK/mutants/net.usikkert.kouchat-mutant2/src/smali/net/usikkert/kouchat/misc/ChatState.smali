.class public Lnet/usikkert/kouchat/misc/ChatState;
.super Ljava/lang/Object;
.source "ChatState.java"


# instance fields
.field private loggedOn:Z

.field private logonCompleted:Z

.field private final topic:Lnet/usikkert/kouchat/misc/Topic;

.field private wrote:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lnet/usikkert/kouchat/misc/Topic;

    invoke-direct {v0}, Lnet/usikkert/kouchat/misc/Topic;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->topic:Lnet/usikkert/kouchat/misc/Topic;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->wrote:Z

    .line 50
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->loggedOn:Z

    .line 51
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->logonCompleted:Z

    return-void
.end method


# virtual methods
.method public getTopic()Lnet/usikkert/kouchat/misc/Topic;
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->topic:Lnet/usikkert/kouchat/misc/Topic;

    return-object v0
.end method

.method public isLoggedOn()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->loggedOn:Z

    return v0
.end method

.method public isLogonCompleted()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->logonCompleted:Z

    return v0
.end method

.method public isWrote()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatState;->wrote:Z

    return v0
.end method

.method public setLoggedOn(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/ChatState;->loggedOn:Z

    return-void
.end method

.method public setLogonCompleted(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/ChatState;->logonCompleted:Z

    return-void
.end method

.method public setWrote(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/ChatState;->wrote:Z

    return-void
.end method
