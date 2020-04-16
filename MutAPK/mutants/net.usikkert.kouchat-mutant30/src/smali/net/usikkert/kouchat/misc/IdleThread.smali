.class public Lnet/usikkert/kouchat/misc/IdleThread;
.super Ljava/lang/Thread;
.source "IdleThread.java"


# static fields
.field private static final IDLE_TIME:I = 0x3a98

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final TIMEOUT:I = 0x1d4c0


# instance fields
.field private final controller:Lnet/usikkert/kouchat/misc/Controller;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final msgController:Lnet/usikkert/kouchat/misc/MessageController;

.field private run:Z

.field private final userList:Lnet/usikkert/kouchat/misc/UserList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lnet/usikkert/kouchat/misc/IdleThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/misc/IdleThread;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "Controller can not be null"

    .line 76
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "User interface can not be null"

    .line 77
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 78
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/IdleThread;->controller:Lnet/usikkert/kouchat/misc/Controller;

    .line 82
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/IdleThread;->userList:Lnet/usikkert/kouchat/misc/UserList;

    .line 83
    invoke-virtual {p3}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/IdleThread;->me:Lnet/usikkert/kouchat/misc/User;

    .line 84
    invoke-interface {p2}, Lnet/usikkert/kouchat/ui/UserInterface;->getMessageController()Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/IdleThread;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lnet/usikkert/kouchat/misc/IdleThread;->run:Z

    const-string p1, "IdleThread"

    .line 87
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/misc/IdleThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private userTimedOut(Lnet/usikkert/kouchat/misc/User;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timed out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/IdleThread;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v1, p1, v0}, Lnet/usikkert/kouchat/misc/Controller;->removeUser(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/IdleThread;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 100
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/IdleThread;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/misc/User;->setLastIdle(J)V

    .line 102
    :goto_0
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/IdleThread;->run:Z

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/IdleThread;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->sendIdleMessage()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    :goto_1
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/IdleThread;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 107
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/IdleThread;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v3

    iget-object v4, p0, Lnet/usikkert/kouchat/misc/IdleThread;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getLastIdle()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x1d4c0

    sub-long v10, v6, v8

    cmp-long v6, v3, v10

    if-gez v6, :cond_0

    .line 110
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/misc/IdleThread;->userTimedOut(Lnet/usikkert/kouchat/misc/User;)V

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 117
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/IdleThread;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->updateAfterTimeout()V

    :cond_2
    const-wide/16 v0, 0x3a98

    .line 121
    :try_start_0
    invoke-static {v0, v1}, Lnet/usikkert/kouchat/misc/IdleThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    sget-object v1, Lnet/usikkert/kouchat/misc/IdleThread;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/IdleThread;->run:Z

    .line 150
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/IdleThread;->interrupt()V

    return-void
.end method
