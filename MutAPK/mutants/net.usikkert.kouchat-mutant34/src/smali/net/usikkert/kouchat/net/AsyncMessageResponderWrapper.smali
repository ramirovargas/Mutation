.class public Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;
.super Ljava/lang/Object;
.source "AsyncMessageResponderWrapper.java"

# interfaces
.implements Lnet/usikkert/kouchat/net/MessageResponder;


# instance fields
.field private final controller:Lnet/usikkert/kouchat/misc/Controller;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

.field private final sleeper:Lnet/usikkert/kouchat/util/Sleeper;

.field private final waitingList:Lnet/usikkert/kouchat/misc/WaitingList;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/net/MessageResponder;Lnet/usikkert/kouchat/misc/Controller;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lnet/usikkert/kouchat/util/Sleeper;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/Sleeper;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->sleeper:Lnet/usikkert/kouchat/util/Sleeper;

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    const-string v0, "MessageResponder can not be null"

    .line 58
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Controller can not be null"

    .line 59
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    .line 62
    iput-object p2, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    .line 63
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/Controller;->getWaitingList()Lnet/usikkert/kouchat/misc/WaitingList;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->waitingList:Lnet/usikkert/kouchat/misc/WaitingList;

    return-void
.end method

.method static synthetic access$000(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;)Lnet/usikkert/kouchat/net/MessageResponder;
    .locals 0

    .line 48
    iget-object p0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    return-object p0
.end method


# virtual methods
.method askUserToIdentify(I)V
    .locals 1

    .line 242
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->waitingList:Lnet/usikkert/kouchat/misc/WaitingList;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/WaitingList;->addWaitingUser(I)V

    .line 243
    iget-object p1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->sendExposeMessage()V

    .line 244
    iget-object p1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->sendGetTopicMessage()V

    return-void
.end method

.method public awayChanged(IZLjava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->askUserToIdentify(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1, p2, p3}, Lnet/usikkert/kouchat/net/MessageResponder;->awayChanged(IZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clientInfo(ILjava/lang/String;JLjava/lang/String;I)V
    .locals 7

    .line 233
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/usikkert/kouchat/net/MessageResponder;->clientInfo(ILjava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method public exposeRequested()V
    .locals 1

    .line 164
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/MessageResponder;->exposeRequested()V

    return-void
.end method

.method public fileSend(IJLjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    move-object v8, p0

    .line 198
    iget-object v0, v8, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    move v2, p1

    invoke-virtual {v0, v2}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v8, v2}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->askUserToIdentify(I)V

    .line 202
    :cond_0
    iget-object v9, v8, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;

    move-object v0, v10

    move-object v1, v8

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$2;-><init>(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;IJLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fileSendAborted(ILjava/lang/String;I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1, p2, p3}, Lnet/usikkert/kouchat/net/MessageResponder;->fileSendAborted(ILjava/lang/String;I)V

    return-void
.end method

.method public fileSendAccepted(ILjava/lang/String;II)V
    .locals 8

    .line 222
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$3;-><init>(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;ILjava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public meIdle(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/net/MessageResponder;->meIdle(Ljava/lang/String;)V

    return-void
.end method

.method public meLogOn(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/net/MessageResponder;->meLogOn(Ljava/lang/String;)V

    return-void
.end method

.method public messageArrived(ILjava/lang/String;I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->askUserToIdentify(I)V

    .line 76
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper$1;-><init>(Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1, p2, p3}, Lnet/usikkert/kouchat/net/MessageResponder;->messageArrived(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public nickChanged(ILjava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->askUserToIdentify(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1, p2}, Lnet/usikkert/kouchat/net/MessageResponder;->nickChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public nickCrash()V
    .locals 1

    .line 139
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/MessageResponder;->nickCrash()V

    return-void
.end method

.method public topicChanged(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 95
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->askUserToIdentify(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lnet/usikkert/kouchat/net/MessageResponder;->topicChanged(ILjava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public topicRequested()V
    .locals 1

    .line 106
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/MessageResponder;->topicRequested()V

    return-void
.end method

.method public userExposing(Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/net/MessageResponder;->userExposing(Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method public userIdle(ILjava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->askUserToIdentify(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1, p2}, Lnet/usikkert/kouchat/net/MessageResponder;->userIdle(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public userLogOff(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/net/MessageResponder;->userLogOff(I)V

    return-void
.end method

.method public userLogOn(Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/net/MessageResponder;->userLogOn(Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method waitForUserToIdentify(I)V
    .locals 4

    const/4 v0, 0x0

    .line 254
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->waitingList:Lnet/usikkert/kouchat/misc/WaitingList;

    invoke-virtual {v1, p1}, Lnet/usikkert/kouchat/misc/WaitingList;->isWaitingUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 256
    iget-object v1, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->sleeper:Lnet/usikkert/kouchat/util/Sleeper;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Lnet/usikkert/kouchat/util/Sleeper;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writingChanged(IZ)V
    .locals 1

    .line 169
    iget-object v0, p0, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;->messageResponder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v0, p1, p2}, Lnet/usikkert/kouchat/net/MessageResponder;->writingChanged(IZ)V

    return-void
.end method
