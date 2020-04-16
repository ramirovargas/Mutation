.class public Lnet/usikkert/kouchat/misc/Topic;
.super Ljava/lang/Object;
.source "Topic.java"


# instance fields
.field private nick:Ljava/lang/String;

.field private time:J

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Topic;->resetTopic()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/Topic;->topic:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lnet/usikkert/kouchat/misc/Topic;->nick:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lnet/usikkert/kouchat/misc/Topic;->time:J

    return-void
.end method


# virtual methods
.method public changeTopic(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 75
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/Topic;->topic:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lnet/usikkert/kouchat/misc/Topic;->nick:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Lnet/usikkert/kouchat/misc/Topic;->time:J

    return-void
.end method

.method public changeTopic(Lnet/usikkert/kouchat/misc/Topic;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/Topic;->topic:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getNick()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/Topic;->nick:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/usikkert/kouchat/misc/Topic;->time:J

    return-void
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Topic;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lnet/usikkert/kouchat/misc/Topic;->time:J

    return-wide v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Topic;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hasTopic()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Topic;->topic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public resetTopic()V
    .locals 2

    const-string v0, ""

    .line 95
    iput-object v0, p0, Lnet/usikkert/kouchat/misc/Topic;->topic:Ljava/lang/String;

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lnet/usikkert/kouchat/misc/Topic;->nick:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lnet/usikkert/kouchat/misc/Topic;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Topic;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Topic;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
