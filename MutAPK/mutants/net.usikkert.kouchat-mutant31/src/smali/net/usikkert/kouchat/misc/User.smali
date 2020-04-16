.class public Lnet/usikkert/kouchat/misc/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/usikkert/kouchat/misc/User;",
        ">;"
    }
.end annotation


# instance fields
.field private away:Z

.field private awayMsg:Ljava/lang/String;

.field private client:Ljava/lang/String;

.field private final code:I

.field private hostName:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private lastIdle:J

.field private logonTime:J

.field private me:Z

.field private newMsg:Z

.field private newPrivMsg:Z

.field private nick:Ljava/lang/String;

.field private online:Z

.field private operatingSystem:Ljava/lang/String;

.field private privateChatLogger:Lnet/usikkert/kouchat/misc/ChatLogger;

.field private privateChatPort:I

.field private privchat:Lnet/usikkert/kouchat/ui/PrivateChatWindow;

.field private writing:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->nick:Ljava/lang/String;

    .line 96
    iput p2, p0, Lnet/usikkert/kouchat/misc/User;->code:I

    const-wide/16 p1, 0x0

    .line 98
    iput-wide p1, p0, Lnet/usikkert/kouchat/misc/User;->lastIdle:J

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lnet/usikkert/kouchat/misc/User;->awayMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->writing:Z

    .line 101
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->away:Z

    const-string v1, "<unknown>"

    .line 102
    iput-object v1, p0, Lnet/usikkert/kouchat/misc/User;->ipAddress:Ljava/lang/String;

    .line 103
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->me:Z

    .line 104
    iput-wide p1, p0, Lnet/usikkert/kouchat/misc/User;->logonTime:J

    const-string p1, "<unknown>"

    .line 105
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->operatingSystem:Ljava/lang/String;

    const-string p1, "<unknown>"

    .line 106
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->client:Ljava/lang/String;

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->hostName:Ljava/lang/String;

    .line 108
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->newMsg:Z

    .line 109
    iput v0, p0, Lnet/usikkert/kouchat/misc/User;->privateChatPort:I

    .line 110
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->privchat:Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/User;->online:Z

    .line 112
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->newPrivMsg:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/misc/User;->compareTo(Lnet/usikkert/kouchat/misc/User;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/usikkert/kouchat/misc/User;)I
    .locals 1

    .line 462
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->nick:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 475
    :cond_1
    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    .line 477
    iget v2, p0, Lnet/usikkert/kouchat/misc/User;->code:I

    iget p1, p1, Lnet/usikkert/kouchat/misc/User;->code:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAwayMsg()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->awayMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 154
    iget v0, p0, Lnet/usikkert/kouchat/misc/User;->code:I

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastIdle()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lnet/usikkert/kouchat/misc/User;->lastIdle:J

    return-wide v0
.end method

.method public getLogonTime()J
    .locals 2

    .line 289
    iget-wide v0, p0, Lnet/usikkert/kouchat/misc/User;->logonTime:J

    return-wide v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatingSystem()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->operatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateChatLogger()Lnet/usikkert/kouchat/misc/ChatLogger;
    .locals 1

    .line 433
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->privateChatLogger:Lnet/usikkert/kouchat/misc/ChatLogger;

    return-object v0
.end method

.method public getPrivateChatPort()I
    .locals 1

    .line 361
    iget v0, p0, Lnet/usikkert/kouchat/misc/User;->privateChatPort:I

    return v0
.end method

.method public getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;
    .locals 1

    .line 325
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->privchat:Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 482
    iget v0, p0, Lnet/usikkert/kouchat/misc/User;->code:I

    return v0
.end method

.method public isAway()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->away:Z

    return v0
.end method

.method public isMe()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->me:Z

    return v0
.end method

.method public isNewMsg()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->newMsg:Z

    return v0
.end method

.method public isNewPrivMsg()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->newPrivMsg:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->online:Z

    return v0
.end method

.method public isWriting()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->writing:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const-string v0, ""

    .line 119
    iput-object v0, p0, Lnet/usikkert/kouchat/misc/User;->awayMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->writing:Z

    .line 121
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->away:Z

    const-string v1, "<unknown>"

    .line 122
    iput-object v1, p0, Lnet/usikkert/kouchat/misc/User;->ipAddress:Ljava/lang/String;

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lnet/usikkert/kouchat/misc/User;->hostName:Ljava/lang/String;

    .line 124
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->newMsg:Z

    .line 125
    iput v0, p0, Lnet/usikkert/kouchat/misc/User;->privateChatPort:I

    .line 126
    iput-object v1, p0, Lnet/usikkert/kouchat/misc/User;->privchat:Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    .line 127
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/User;->newPrivMsg:Z

    return-void
.end method

.method public setAway(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/User;->away:Z

    return-void
.end method

.method public setAwayMsg(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->awayMsg:Ljava/lang/String;

    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->client:Ljava/lang/String;

    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setLastIdle(J)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lnet/usikkert/kouchat/misc/User;->lastIdle:J

    return-void
.end method

.method public setLogonTime(J)V
    .locals 0

    .line 298
    iput-wide p1, p0, Lnet/usikkert/kouchat/misc/User;->logonTime:J

    return-void
.end method

.method public setMe(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/User;->me:Z

    return-void
.end method

.method public setNewMsg(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/User;->newMsg:Z

    return-void
.end method

.method public setNewPrivMsg(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/User;->newPrivMsg:Z

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->nick:Ljava/lang/String;

    return-void
.end method

.method public setOnline(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/User;->online:Z

    return-void
.end method

.method public setOperatingSystem(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->operatingSystem:Ljava/lang/String;

    return-void
.end method

.method public setPrivateChatLogger(Lnet/usikkert/kouchat/misc/ChatLogger;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->privateChatLogger:Lnet/usikkert/kouchat/misc/ChatLogger;

    return-void
.end method

.method public setPrivateChatPort(I)V
    .locals 0

    .line 370
    iput p1, p0, Lnet/usikkert/kouchat/misc/User;->privateChatPort:I

    return-void
.end method

.method public setPrivchat(Lnet/usikkert/kouchat/ui/PrivateChatWindow;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/User;->privchat:Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    return-void
.end method

.method public setWriting(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/User;->writing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/User;->nick:Ljava/lang/String;

    return-object v0
.end method
