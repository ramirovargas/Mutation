.class public Lnet/usikkert/kouchat/net/DefaultMessageResponder;
.super Ljava/lang/Object;
.source "DefaultMessageResponder.java"

# interfaces
.implements Lnet/usikkert/kouchat/net/MessageResponder;


# static fields
.field private static final LOG:Lnet/usikkert/kouchat/util/Logger;


# instance fields
.field private final chatState:Lnet/usikkert/kouchat/misc/ChatState;

.field private final controller:Lnet/usikkert/kouchat/misc/Controller;

.field private final coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

.field private final dateTools:Lnet/usikkert/kouchat/util/DateTools;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final msgController:Lnet/usikkert/kouchat/misc/MessageController;

.field private final networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

.field private final sleeper:Lnet/usikkert/kouchat/util/Sleeper;

.field private final tList:Lnet/usikkert/kouchat/net/TransferList;

.field private final ui:Lnet/usikkert/kouchat/ui/UserInterface;

.field private final wList:Lnet/usikkert/kouchat/misc/WaitingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Logger;->getLogger(Ljava/lang/Class;)Lnet/usikkert/kouchat/util/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/message/CoreMessages;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-direct {v0}, Lnet/usikkert/kouchat/net/NetworkUtils;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    .line 54
    new-instance v0, Lnet/usikkert/kouchat/util/Sleeper;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/Sleeper;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->sleeper:Lnet/usikkert/kouchat/util/Sleeper;

    .line 55
    new-instance v0, Lnet/usikkert/kouchat/util/DateTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/DateTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->dateTools:Lnet/usikkert/kouchat/util/DateTools;

    const-string v0, "Controller can not be null"

    .line 76
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UserInterface can not be null"

    .line 77
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 78
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Core messages can not be null"

    .line 79
    invoke-static {p4, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    .line 82
    iput-object p2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    .line 83
    iput-object p4, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    .line 85
    invoke-interface {p2}, Lnet/usikkert/kouchat/ui/UserInterface;->getMessageController()Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object p2

    iput-object p2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    .line 86
    invoke-virtual {p3}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p2

    iput-object p2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    .line 87
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getTransferList()Lnet/usikkert/kouchat/net/TransferList;

    move-result-object p2

    iput-object p2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    .line 88
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getWaitingList()Lnet/usikkert/kouchat/misc/WaitingList;

    move-result-object p2

    iput-object p2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->wList:Lnet/usikkert/kouchat/misc/WaitingList;

    .line 89
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getChatState()Lnet/usikkert/kouchat/misc/ChatState;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    return-void
.end method

.method private createHostInfo(Lnet/usikkert/kouchat/misc/User;)Ljava/lang/String;
    .locals 2

    .line 306
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 309
    :cond_0
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private userShowedUp(Lnet/usikkert/kouchat/misc/User;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->sendNickCrashMessage(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->isNickInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    .line 201
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/misc/UserList;->add(Lnet/usikkert/kouchat/misc/User;)Z

    .line 202
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showed up unexpectedly from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public awayChanged(IZLjava/lang/String;)V
    .locals 4

    .line 334
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 337
    sget-object p2, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string p3, "Could not find user: %s"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object v3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v3, p1, p2, p3}, Lnet/usikkert/kouchat/misc/Controller;->changeAwayStatus(IZLjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 345
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " went away: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " came back"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 350
    :goto_0
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 351
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object p1

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->updateAwayState()V

    if-eqz p2, :cond_2

    .line 354
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " went away: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/usikkert/kouchat/misc/MessageController;->showPrivateSystemMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :cond_2
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " came back"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/usikkert/kouchat/misc/MessageController;->showPrivateSystemMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 362
    sget-object p2, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string p3, "Something very strange going on here: %s"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public clientInfo(ILjava/lang/String;JLjava/lang/String;I)V
    .locals 3

    .line 615
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0, p2}, Lnet/usikkert/kouchat/misc/User;->setClient(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long v1, p1, p3

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/misc/User;->setLogonTime(J)V

    .line 620
    invoke-virtual {v0, p5}, Lnet/usikkert/kouchat/misc/User;->setOperatingSystem(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, p6}, Lnet/usikkert/kouchat/misc/User;->setPrivateChatPort(I)V

    goto :goto_0

    .line 625
    :cond_0
    sget-object p2, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string p3, "Could not find user: %s"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p5

    invoke-virtual {p2, p3, p4}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public exposeRequested()V
    .locals 1

    .line 430
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->sendExposingMessage()V

    .line 431
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->sendClientInfo()V

    return-void
.end method

.method public fileSend(IJLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 477
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 478
    invoke-static {p2, p3}, Lnet/usikkert/kouchat/util/Tools;->byteToString(J)Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-object v3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v3, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    .line 480
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user.home"

    .line 481
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "file.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object v4, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v4, p1, v3, p2, p3}, Lnet/usikkert/kouchat/net/TransferList;->addFileReceiver(Lnet/usikkert/kouchat/misc/User;Ljava/io/File;J)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object p2

    .line 484
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is trying to send the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-virtual {p3, v3}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 487
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p3, p5, p4, v0}, Lnet/usikkert/kouchat/ui/UserInterface;->askFileSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 488
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p3, p2}, Lnet/usikkert/kouchat/ui/UserInterface;->showFileSave(Lnet/usikkert/kouchat/net/FileReceiver;)V

    .line 490
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->isAccepted()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->isCanceled()Z

    move-result p3

    if-nez p3, :cond_1

    .line 491
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p3, p2}, Lnet/usikkert/kouchat/ui/UserInterface;->showTransfer(Lnet/usikkert/kouchat/net/FileReceiver;)V

    .line 494
    :try_start_0
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->startServer()I

    move-result p3

    .line 495
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1, p3, p6, p4}, Lnet/usikkert/kouchat/misc/Controller;->sendFileAccept(Lnet/usikkert/kouchat/misc/User;IILjava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->transfer()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 498
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully received "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", and saved as "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p3, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 503
    :cond_0
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to receive "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->cancel()V
    :try_end_0
    .catch Lnet/usikkert/kouchat/net/ServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 518
    :catch_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Failed to receive "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->cancel()V

    goto/16 :goto_0

    :catch_1
    move-exception p3

    .line 510
    sget-object v0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v3, "Failed to start server: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lnet/usikkert/kouchat/net/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, p3, v3, v2}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 512
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p3, p1, p6, p4}, Lnet/usikkert/kouchat/misc/Controller;->sendFileAbort(Lnet/usikkert/kouchat/misc/User;ILjava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->cancel()V

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->isCanceled()Z

    move-result p3

    if-nez p3, :cond_3

    .line 524
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You declined to receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 525
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p3, p1, p6, p4}, Lnet/usikkert/kouchat/misc/Controller;->sendFileAbort(Lnet/usikkert/kouchat/misc/User;ILjava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->isCanceled()Z

    move-result p3

    if-nez p3, :cond_3

    .line 531
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You declined to receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 532
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p3, p1, p6, p4}, Lnet/usikkert/kouchat/misc/Controller;->sendFileAbort(Lnet/usikkert/kouchat/misc/User;ILjava/lang/String;)V

    .line 535
    :cond_3
    :goto_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->removeFileReceiver(Lnet/usikkert/kouchat/net/FileReceiver;)V

    goto :goto_1

    .line 539
    :cond_4
    sget-object p1, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string p2, "Could not find user: %s"

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p5, p3, v1

    invoke-virtual {p1, p2, p3}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public fileSendAborted(ILjava/lang/String;I)V
    .locals 3

    .line 554
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    .line 555
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0, p1, p2, p3}, Lnet/usikkert/kouchat/net/TransferList;->getFileSender(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;I)Lnet/usikkert/kouchat/net/FileSender;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 558
    invoke-virtual {p3}, Lnet/usikkert/kouchat/net/FileSender;->cancel()V

    .line 559
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aborted reception of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0, p3}, Lnet/usikkert/kouchat/net/TransferList;->removeFileSender(Lnet/usikkert/kouchat/net/FileSender;)V

    .line 563
    :cond_0
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {p3, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceiver(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 566
    invoke-virtual {p3}, Lnet/usikkert/kouchat/net/FileReceiver;->cancel()V

    .line 567
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " aborted sending of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public fileSendAccepted(ILjava/lang/String;II)V
    .locals 3

    .line 582
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    .line 583
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0, p1, p2, p3}, Lnet/usikkert/kouchat/net/TransferList;->getFileSender(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;I)Lnet/usikkert/kouchat/net/FileSender;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 586
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accepted sending of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->sleeper:Lnet/usikkert/kouchat/util/Sleeper;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/util/Sleeper;->sleep(J)V

    .line 591
    invoke-virtual {p3, p4}, Lnet/usikkert/kouchat/net/FileSender;->transfer(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 592
    iget-object p4, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " successfully sent to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_0
    iget-object p4, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 599
    :goto_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {p1, p3}, Lnet/usikkert/kouchat/net/TransferList;->removeFileSender(Lnet/usikkert/kouchat/net/FileSender;)V

    :cond_1
    return-void
.end method

.method public meIdle(Ljava/lang/String;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/misc/User;->setLastIdle(J)V

    .line 376
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/ChatState;->isLoggedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You changed ip from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/User;->setIpAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public meLogOn(Ljava/lang/String;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/ChatState;->setLoggedOn(Z)V

    .line 292
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/User;->setIpAddress(Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkUtils;->getLocalHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setHostName(Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You logged on as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->createHostInfo(Lnet/usikkert/kouchat/misc/User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V

    return-void
.end method

.method public messageArrived(ILjava/lang/String;I)V
    .locals 6

    .line 101
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3}, Lnet/usikkert/kouchat/misc/MessageController;->showUserMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p1, v3}, Lnet/usikkert/kouchat/misc/User;->setNewMsg(Z)V

    .line 112
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1, v0, p2}, Lnet/usikkert/kouchat/ui/UserInterface;->notifyMessageArrived(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    sget-object p3, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v4, "User is away - ignoring message. user=%s, userCode=%s, message=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    aput-object p2, v5, v1

    invoke-virtual {p3, v4, v5}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_2
    sget-object p3, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v0, "User is unknown - ignoring message. userCode=%s, message=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {p3, v0, v1}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public nickChanged(ILjava/lang/String;)V
    .locals 5

    .line 442
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 445
    sget-object p2, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v0, "Could not find user: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 449
    :cond_0
    iget-object v3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v3, p2}, Lnet/usikkert/kouchat/misc/Controller;->isNickInUse(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v2, p1, p2}, Lnet/usikkert/kouchat/misc/Controller;->changeNick(ILjava/lang/String;)V

    .line 452
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " changed nick to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 455
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changed nick to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/usikkert/kouchat/misc/MessageController;->showPrivateSystemMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object p1

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->updateUserInformation()V

    goto :goto_0

    .line 461
    :cond_1
    sget-object p1, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v3, "%s tried to change nick to \'%s\', which is invalid"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p2, v4, v2

    invoke-virtual {p1, v3, v4}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public nickCrash()V
    .locals 4

    .line 420
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v3}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/misc/Controller;->changeNick(ILjava/lang/String;)V

    .line 421
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nick crash, resetting nick to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V

    return-void
.end method

.method public topicChanged(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_2

    .line 215
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 216
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTime()J

    move-result-wide v0

    cmp-long v2, p4, v0

    if-lez v2, :cond_2

    .line 220
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/ChatState;->isLogonCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changed the topic to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->dateTools:Lnet/usikkert/kouchat/util/DateTools;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p4, p5}, Ljava/util/Date;-><init>(J)V

    const-string v2, "HH:mm:ss, dd. MMM. yy"

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/util/DateTools;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Topic is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (set by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 230
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/usikkert/kouchat/misc/Topic;->changeTopic(Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTime()J

    move-result-wide v0

    cmp-long p2, p4, v0

    if-lez p2, :cond_2

    iget-object p2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/ChatState;->isLogonCompleted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    iget-object p2, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " removed the topic"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    const-string p2, ""

    const-string p3, ""

    .line 238
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/usikkert/kouchat/misc/Topic;->changeTopic(Ljava/lang/String;Ljava/lang/String;J)V

    .line 239
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V

    :cond_2
    :goto_1
    return-void
.end method

.method public topicRequested()V
    .locals 1

    .line 411
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->sendTopicRequestedMessage()V

    return-void
.end method

.method public userExposing(Lnet/usikkert/kouchat/misc/User;)V
    .locals 3

    .line 253
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/ChatState;->isLogonCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->wList:Lnet/usikkert/kouchat/misc/WaitingList;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/WaitingList;->isWaitingUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->wList:Lnet/usikkert/kouchat/misc/WaitingList;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/WaitingList;->removeWaitingUser(I)V

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->userShowedUp(Lnet/usikkert/kouchat/misc/User;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/misc/UserList;->add(Lnet/usikkert/kouchat/misc/User;)Z

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->nickChanged(ILjava/lang/String;)V

    .line 277
    :cond_3
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 278
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->awayChanged(IZLjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public userIdle(ILjava/lang/String;)V
    .locals 3

    .line 391
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 394
    sget-object p2, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v0, "Could not find user: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 398
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/misc/User;->setLastIdle(J)V

    .line 400
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 401
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changed ip from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, p2}, Lnet/usikkert/kouchat/misc/User;->setIpAddress(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public userLogOff(I)V
    .locals 5

    .line 133
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 136
    iget-object p1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.network.systemMessage.userLogOff"

    new-array v2, v2, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1, v3, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v1, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v1, v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->removeUser(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v3, "User is unknown - ignoring logoff. userCode=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public userLogOn(Lnet/usikkert/kouchat/misc/User;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v4, "User logs on with your nick name - resetting nick and sending nick crash message. user=%s, userCode=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 159
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 158
    invoke-virtual {v0, v4, v3}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->sendNickCrashMessage(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/usikkert/kouchat/misc/Controller;->isNickInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v4, "User logs on with someone else\'s nick name - resetting nick. user=%s, userCode=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 166
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 165
    invoke-virtual {v0, v4, v3}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    sget-object v0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->LOG:Lnet/usikkert/kouchat/util/Logger;

    const-string v4, "User logs on with invalid nick name - resetting nick. user=%s, userCode=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 172
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 171
    invoke-virtual {v0, v4, v3}, Lnet/usikkert/kouchat/util/Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    .line 176
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/misc/UserList;->add(Lnet/usikkert/kouchat/misc/User;)Z

    .line 177
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " logged on from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method public writingChanged(IZ)V
    .locals 1

    .line 321
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/misc/Controller;->changeWriting(IZ)V

    return-void
.end method
