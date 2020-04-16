.class public Lnet/usikkert/kouchat/net/NetworkMessages;
.super Ljava/lang/Object;
.source "NetworkMessages.java"


# instance fields
.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final networkService:Lnet/usikkert/kouchat/net/NetworkService;

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/net/NetworkService;Lnet/usikkert/kouchat/settings/Settings;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Network service can not be null"

    .line 57
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 58
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    .line 61
    iput-object p2, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 62
    invoke-virtual {p2}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    return-void
.end method

.method private checkNetwork()V
    .locals 1

    .line 405
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkService;->checkNetwork()V

    return-void
.end method

.method private createMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createTopicMessage(Lnet/usikkert/kouchat/misc/Topic;)Ljava/lang/String;
    .locals 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPIC"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 398
    new-instance v0, Lnet/usikkert/kouchat/misc/CommandException;

    invoke-direct {v0, p1}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public sendAwayMessage(Ljava/lang/String;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AWAY"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    :cond_0
    return-void
.end method

.method public sendBackMessage()V
    .locals 2

    const-string v0, "BACK"

    .line 127
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    :cond_0
    return-void
.end method

.method public sendChatMessage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 145
    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/Settings;->getOwnColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->notifyUser(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendClient()V
    .locals 7

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIENT"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    .line 324
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getClient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v3}, Lnet/usikkert/kouchat/misc/User;->getLogonTime()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    .line 326
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getOperatingSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    .line 327
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendExposeMessage()V
    .locals 2

    const-string v0, "EXPOSE"

    .line 176
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendExposingMessage()V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXPOSING"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENDFILE"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileToSend;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileToSend;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send file to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->notifyUser(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendFileAbort(Lnet/usikkert/kouchat/misc/User;ILjava/lang/String;)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENDFILEABORT"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "){"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object p2, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 255
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    :cond_0
    return-void
.end method

.method public sendFileAccept(Lnet/usikkert/kouchat/misc/User;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENDFILEACCEPT"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]{"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 280
    iget-object p3, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {p3, p2}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 283
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to accept file transfer from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->notifyUser(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendGetTopicMessage()V
    .locals 2

    const-string v0, "GETTOPIC"

    .line 192
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendIdleMessage()V
    .locals 2

    const-string v0, "IDLE"

    .line 71
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    :cond_0
    return-void
.end method

.method public sendLogoffMessage()V
    .locals 2

    const-string v0, "LOGOFF"

    .line 168
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendLogonMessage()V
    .locals 2

    const-string v0, "LOGON"

    .line 160
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendNickCrashMessage(Ljava/lang/String;)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NICKCRASH"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendNickMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NICK"

    .line 220
    invoke-direct {p0, v0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 224
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    :cond_0
    return-void
.end method

.method public sendPrivateMessage(Ljava/lang/String;Lnet/usikkert/kouchat/misc/User;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIVMSG"

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 344
    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/Settings;->getOwnColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatPort()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lnet/usikkert/kouchat/net/NetworkService;->sendUDPMsg(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send private message to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->notifyUser(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendStoppedWritingMessage()V
    .locals 2

    const-string v0, "STOPPEDWRITING"

    .line 208
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendTopicChangeMessage(Lnet/usikkert/kouchat/misc/Topic;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createTopicMessage(Lnet/usikkert/kouchat/misc/Topic;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/NetworkMessages;->checkNetwork()V

    :cond_0
    return-void
.end method

.method public sendTopicRequestedMessage(Lnet/usikkert/kouchat/misc/Topic;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->createTopicMessage(Lnet/usikkert/kouchat/misc/Topic;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method

.method public sendWritingMessage()V
    .locals 2

    const-string v0, "WRITING"

    .line 200
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lnet/usikkert/kouchat/net/NetworkMessages;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkService;->sendMulticastMsg(Ljava/lang/String;)Z

    return-void
.end method
