.class public Lnet/usikkert/kouchat/misc/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/NetworkConnectionListener;


# static fields
.field private static final LOGON_DELAY:I = 0x5dc


# instance fields
.field private final chatState:Lnet/usikkert/kouchat/misc/ChatState;

.field private final coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

.field private final dateTools:Lnet/usikkert/kouchat/util/DateTools;

.field private final dayTimer:Lnet/usikkert/kouchat/misc/DayTimer;

.field private final errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

.field private final idleThread:Lnet/usikkert/kouchat/misc/IdleThread;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final msgController:Lnet/usikkert/kouchat/misc/MessageController;

.field private final networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

.field private final networkService:Lnet/usikkert/kouchat/net/NetworkService;

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;

.field private final settingsSaver:Lnet/usikkert/kouchat/settings/SettingsSaver;

.field private final shutdownHook:Ljava/lang/Thread;

.field private final tList:Lnet/usikkert/kouchat/net/TransferList;

.field private final timerTools:Lnet/usikkert/kouchat/util/TimerTools;

.field private final ui:Lnet/usikkert/kouchat/ui/UserInterface;

.field private final userListController:Lnet/usikkert/kouchat/misc/UserListController;

.field private final wList:Lnet/usikkert/kouchat/misc/WaitingList;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/settings/SettingsSaver;Lnet/usikkert/kouchat/message/CoreMessages;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lnet/usikkert/kouchat/util/DateTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/DateTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->dateTools:Lnet/usikkert/kouchat/util/DateTools;

    .line 72
    new-instance v0, Lnet/usikkert/kouchat/util/TimerTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/TimerTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->timerTools:Lnet/usikkert/kouchat/util/TimerTools;

    const-string v0, "User interface can not be null"

    .line 104
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 105
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings saver can not be null"

    .line 106
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Core messages can not be null"

    .line 107
    invoke-static {p4, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 108
    invoke-static {p5, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    .line 111
    iput-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 112
    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->settingsSaver:Lnet/usikkert/kouchat/settings/SettingsSaver;

    .line 113
    iput-object p4, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    .line 114
    iput-object p5, p0, Lnet/usikkert/kouchat/misc/Controller;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    .line 116
    new-instance p3, Lnet/usikkert/kouchat/misc/Controller$1;

    const-string v0, "ControllerShutdownHook"

    invoke-direct {p3, p0, v0}, Lnet/usikkert/kouchat/misc/Controller$1;-><init>(Lnet/usikkert/kouchat/misc/Controller;Ljava/lang/String;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->shutdownHook:Ljava/lang/Thread;

    .line 124
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {p3, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 126
    invoke-virtual {p2}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p3

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    .line 127
    new-instance p3, Lnet/usikkert/kouchat/misc/UserListController;

    invoke-direct {p3, p2}, Lnet/usikkert/kouchat/misc/UserListController;-><init>(Lnet/usikkert/kouchat/settings/Settings;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    .line 128
    new-instance p3, Lnet/usikkert/kouchat/misc/ChatState;

    invoke-direct {p3}, Lnet/usikkert/kouchat/misc/ChatState;-><init>()V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    .line 129
    new-instance p3, Lnet/usikkert/kouchat/net/TransferList;

    invoke-direct {p3}, Lnet/usikkert/kouchat/net/TransferList;-><init>()V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->tList:Lnet/usikkert/kouchat/net/TransferList;

    .line 130
    new-instance p3, Lnet/usikkert/kouchat/misc/WaitingList;

    invoke-direct {p3}, Lnet/usikkert/kouchat/misc/WaitingList;-><init>()V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->wList:Lnet/usikkert/kouchat/misc/WaitingList;

    .line 131
    new-instance p3, Lnet/usikkert/kouchat/misc/IdleThread;

    invoke-direct {p3, p0, p1, p2}, Lnet/usikkert/kouchat/misc/IdleThread;-><init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->idleThread:Lnet/usikkert/kouchat/misc/IdleThread;

    .line 132
    new-instance p3, Lnet/usikkert/kouchat/misc/DayTimer;

    invoke-direct {p3, p1}, Lnet/usikkert/kouchat/misc/DayTimer;-><init>(Lnet/usikkert/kouchat/ui/UserInterface;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->dayTimer:Lnet/usikkert/kouchat/misc/DayTimer;

    .line 133
    new-instance p3, Lnet/usikkert/kouchat/net/NetworkService;

    invoke-direct {p3, p2, p5}, Lnet/usikkert/kouchat/net/NetworkService;-><init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    .line 134
    new-instance p3, Lnet/usikkert/kouchat/net/DefaultMessageResponder;

    invoke-direct {p3, p0, p1, p2, p4}, Lnet/usikkert/kouchat/net/DefaultMessageResponder;-><init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/message/CoreMessages;)V

    .line 135
    new-instance p4, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;

    invoke-direct {p4, p3, p0}, Lnet/usikkert/kouchat/net/AsyncMessageResponderWrapper;-><init>(Lnet/usikkert/kouchat/net/MessageResponder;Lnet/usikkert/kouchat/misc/Controller;)V

    .line 136
    new-instance p3, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;

    invoke-direct {p3, p0, p1, p2}, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;-><init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;)V

    .line 137
    new-instance p5, Lnet/usikkert/kouchat/net/MessageParser;

    invoke-direct {p5, p4, p2}, Lnet/usikkert/kouchat/net/MessageParser;-><init>(Lnet/usikkert/kouchat/net/MessageResponder;Lnet/usikkert/kouchat/settings/Settings;)V

    .line 138
    iget-object p4, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {p4, p5}, Lnet/usikkert/kouchat/net/NetworkService;->registerMessageReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V

    .line 139
    new-instance p4, Lnet/usikkert/kouchat/net/PrivateMessageParser;

    invoke-direct {p4, p3, p2}, Lnet/usikkert/kouchat/net/PrivateMessageParser;-><init>(Lnet/usikkert/kouchat/net/PrivateMessageResponder;Lnet/usikkert/kouchat/settings/Settings;)V

    .line 140
    iget-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {p3, p4}, Lnet/usikkert/kouchat/net/NetworkService;->registerUDPReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V

    .line 141
    new-instance p3, Lnet/usikkert/kouchat/net/NetworkMessages;

    iget-object p4, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-direct {p3, p4, p2}, Lnet/usikkert/kouchat/net/NetworkMessages;-><init>(Lnet/usikkert/kouchat/net/NetworkService;Lnet/usikkert/kouchat/settings/Settings;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    .line 142
    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {p2, p0}, Lnet/usikkert/kouchat/net/NetworkService;->registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V

    .line 143
    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->getMessageController()Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    return-void
.end method

.method static synthetic access$000(Lnet/usikkert/kouchat/misc/Controller;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/Controller;->doShutdown()V

    return-void
.end method

.method private closeAllUserResources()V
    .locals 3

    .line 461
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    const/4 v1, 0x0

    .line 463
    :goto_0
    invoke-interface {v0}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 464
    invoke-interface {v0, v1}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    .line 466
    invoke-virtual {p0, v2}, Lnet/usikkert/kouchat/misc/Controller;->cancelFileTransfers(Lnet/usikkert/kouchat/misc/User;)V

    .line 467
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/misc/Controller;->closePrivateChatLogger(Lnet/usikkert/kouchat/misc/User;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closePrivateChatLogger(Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    .line 472
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatLogger()Lnet/usikkert/kouchat/misc/ChatLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatLogger()Lnet/usikkert/kouchat/misc/ChatLogger;

    move-result-object p1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/ChatLogger;->close()V

    :cond_0
    return-void
.end method

.method private doShutdown()V
    .locals 1

    .line 507
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->idleThread:Lnet/usikkert/kouchat/misc/IdleThread;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/IdleThread;->stopThread()V

    .line 508
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->dayTimer:Lnet/usikkert/kouchat/misc/DayTimer;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/DayTimer;->stopTimer()V

    .line 509
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/MessageController;->shutdown()V

    return-void
.end method

.method private removeAllUsers()V
    .locals 7

    .line 425
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 427
    :goto_0
    invoke-interface {v0}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 428
    invoke-interface {v0, v2}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v3

    .line 430
    invoke-virtual {v3}, Lnet/usikkert/kouchat/misc/User;->isMe()Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    iget-object v4, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v5, "core.network.systemMessage.meLogOff"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnet/usikkert/kouchat/misc/Controller;->removeUser(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private runDelayedLogon()V
    .locals 5

    .line 380
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->timerTools:Lnet/usikkert/kouchat/util/TimerTools;

    const-string v1, "DelayedLogonTimer"

    new-instance v2, Lnet/usikkert/kouchat/misc/DelayedLogonTask;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    iget-object v4, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-direct {v2, v3, v4}, Lnet/usikkert/kouchat/misc/DelayedLogonTask;-><init>(Lnet/usikkert/kouchat/net/NetworkService;Lnet/usikkert/kouchat/misc/ChatState;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/usikkert/kouchat/util/TimerTools;->scheduleTimerTask(Ljava/lang/String;Ljava/util/TimerTask;J)V

    return-void
.end method

.method private sendLogOn()V
    .locals 1

    .line 370
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendLogonMessage()V

    .line 371
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendClient()V

    .line 372
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendExposeMessage()V

    .line 373
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendGetTopicMessage()V

    return-void
.end method


# virtual methods
.method public beforeNetworkCameUp()V
    .locals 0

    return-void
.end method

.method public cancelFileTransfers(Lnet/usikkert/kouchat/misc/User;)V
    .locals 3

    .line 483
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/TransferList;->getFileSenders(Lnet/usikkert/kouchat/misc/User;)Ljava/util/List;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v1, p1}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceivers(Lnet/usikkert/kouchat/misc/User;)Ljava/util/List;

    move-result-object p1

    .line 486
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/net/FileSender;

    .line 487
    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->cancel()V

    .line 488
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/Controller;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v2, v1}, Lnet/usikkert/kouchat/net/TransferList;->removeFileSender(Lnet/usikkert/kouchat/net/FileSender;)V

    goto :goto_0

    .line 491
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 492
    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileReceiver;->cancel()V

    .line 493
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/TransferList;->removeFileReceiver(Lnet/usikkert/kouchat/net/FileReceiver;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public changeAwayStatus(IZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isLoggedOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string p3, "core.away.error.notConnected"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_0
    invoke-static {p3}, Lnet/usikkert/kouchat/util/Tools;->getBytes(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1c2

    if-le v0, v2, :cond_1

    .line 274
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string p3, "core.away.error.awayMessageTooLong"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 274
    invoke-virtual {p2, p3, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 280
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 282
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p3}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendAwayMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendBackMessage()V

    .line 288
    :cond_3
    :goto_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1, p2, p3}, Lnet/usikkert/kouchat/misc/UserListController;->changeAwayStatus(IZLjava/lang/String;)V

    return-void
.end method

.method public changeMyNick(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v1, "core.nick.error.meIsAway"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendNickMessage(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->changeNick(ILjava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->saveSettings()V

    return-void
.end method

.method public changeNewMessage(IZ)V
    .locals 1

    .line 749
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/misc/UserListController;->changeNewMessage(IZ)V

    return-void
.end method

.method public changeNick(ILjava/lang/String;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/misc/UserListController;->changeNickName(ILjava/lang/String;)V

    return-void
.end method

.method public changeTopic(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isLoggedOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 585
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.topic.error.notConnected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.topic.error.meIsAway"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :cond_1
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->getBytes(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1c2

    if-le v0, v2, :cond_2

    .line 589
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.topic.error.messageTooLong"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 590
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 589
    invoke-virtual {v0, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 594
    new-instance v2, Lnet/usikkert/kouchat/misc/Topic;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v3}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0, v1}, Lnet/usikkert/kouchat/misc/Topic;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 595
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p1, v2}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendTopicChangeMessage(Lnet/usikkert/kouchat/misc/Topic;)V

    .line 596
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object p1

    .line 597
    invoke-virtual {p1, v2}, Lnet/usikkert/kouchat/misc/Topic;->changeTopic(Lnet/usikkert/kouchat/misc/Topic;)V

    return-void
.end method

.method public changeWriting(IZ)V
    .locals 1

    .line 199
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/misc/UserListController;->changeWriting(IZ)V

    .line 201
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 202
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/misc/ChatState;->setWrote(Z)V

    if-eqz p2, :cond_0

    .line 205
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendWritingMessage()V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendStoppedWritingMessage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkNetwork()V
    .locals 1

    .line 766
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkService;->checkNetwork()V

    return-void
.end method

.method public comeBack()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnet/usikkert/kouchat/misc/Controller;->changeAwayStatus(IZLjava/lang/String;)V

    .line 257
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0, v2}, Lnet/usikkert/kouchat/ui/UserInterface;->changeAway(Z)V

    .line 258
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.away.systemMessage.cameBack"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method public createJMXBeanLoader()Lnet/usikkert/kouchat/jmx/JMXBeanLoader;
    .locals 4

    .line 861
    new-instance v0, Lnet/usikkert/kouchat/jmx/JMXBeanLoader;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/NetworkService;->getConnectionWorker()Lnet/usikkert/kouchat/net/ConnectionWorker;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/Controller;->settings:Lnet/usikkert/kouchat/settings/Settings;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/Controller;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/usikkert/kouchat/jmx/JMXBeanLoader;-><init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/net/ConnectionWorker;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    return-object v0
.end method

.method public getAutoCompleter()Lnet/usikkert/kouchat/autocomplete/AutoCompleter;
    .locals 3

    .line 785
    new-instance v0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;

    invoke-direct {v0}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;-><init>()V

    .line 786
    new-instance v1, Lnet/usikkert/kouchat/autocomplete/CommandAutoCompleteList;

    invoke-direct {v1}, Lnet/usikkert/kouchat/autocomplete/CommandAutoCompleteList;-><init>()V

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->addAutoCompleteList(Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;)V

    .line 787
    new-instance v1, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;

    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;-><init>(Lnet/usikkert/kouchat/misc/UserList;)V

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->addAutoCompleteList(Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;)V

    return-object v0
.end method

.method public getChatState()Lnet/usikkert/kouchat/misc/ChatState;
    .locals 1

    .line 852
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    return-object v0
.end method

.method public getTopic()Lnet/usikkert/kouchat/misc/Topic;
    .locals 1

    .line 165
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/ChatState;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object v0

    return-object v0
.end method

.method public getTransferList()Lnet/usikkert/kouchat/net/TransferList;
    .locals 1

    .line 676
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->tList:Lnet/usikkert/kouchat/net/TransferList;

    return-object v0
.end method

.method public getUser(I)Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 352
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/UserListController;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    return-object p1
.end method

.method public getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 362
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/UserListController;->getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    return-object p1
.end method

.method public getUserList()Lnet/usikkert/kouchat/misc/UserList;
    .locals 1

    .line 174
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/UserListController;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    return-object v0
.end method

.method public getWaitingList()Lnet/usikkert/kouchat/misc/WaitingList;
    .locals 1

    .line 685
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->wList:Lnet/usikkert/kouchat/misc/WaitingList;

    return-object v0
.end method

.method public goAway(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 239
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.away.error.missingAwayMessage"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p1}, Lnet/usikkert/kouchat/misc/Controller;->changeAwayStatus(IZLjava/lang/String;)V

    .line 245
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1, v2}, Lnet/usikkert/kouchat/ui/UserInterface;->changeAway(Z)V

    .line 246
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.away.systemMessage.wentAway"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkService;->isNetworkUp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isLoggedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoggedOn()Z
    .locals 1

    .line 775
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/ChatState;->isLoggedOn()Z

    move-result v0

    return v0
.end method

.method public isNewUser(I)Z
    .locals 1

    .line 308
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/UserListController;->isNewUser(I)Z

    move-result p1

    return p1
.end method

.method public isNickInUse(Ljava/lang/String;)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/UserListController;->isNickNameInUse(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isWrote()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/ChatState;->isWrote()Z

    move-result v0

    return v0
.end method

.method public logOff(Z)V
    .locals 2

    .line 404
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendLogoffMessage()V

    .line 405
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/ChatState;->setLoggedOn(Z)V

    .line 406
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->chatState:Lnet/usikkert/kouchat/misc/ChatState;

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/ChatState;->setLogonCompleted(Z)V

    .line 407
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkService;->disconnect()V

    .line 409
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object v0

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Topic;->resetTopic()V

    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/Controller;->removeAllUsers()V

    goto :goto_0

    .line 414
    :cond_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/Controller;->closeAllUserResources()V

    .line 417
    :goto_0
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->reset()V

    return-void
.end method

.method public logOn()V
    .locals 1

    .line 387
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkService;->isConnectionWorkerAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkService;->connect()V

    :cond_0
    return-void
.end method

.method public networkCameUp(Z)V
    .locals 3

    .line 805
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isLoggedOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/Controller;->runDelayedLogon()V

    .line 807
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/Controller;->sendLogOn()V

    goto :goto_0

    .line 812
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V

    if-nez p1, :cond_1

    .line 815
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v1, "core.network.systemMessage.connectionBack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 818
    :cond_1
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendTopicRequestedMessage(Lnet/usikkert/kouchat/misc/Topic;)V

    .line 819
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendExposingMessage()V

    .line 820
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendGetTopicMessage()V

    .line 821
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendExposeMessage()V

    .line 822
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendIdleMessage()V

    :goto_0
    return-void
.end method

.method public networkWentDown(Z)V
    .locals 3

    .line 833
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V

    .line 835
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isLoggedOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 837
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.network.systemMessage.connectionLost"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.network.systemMessage.meLogOff"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V
    .locals 1

    .line 865
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkService:Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkService;->registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V

    return-void
.end method

.method public removeUser(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 2

    .line 446
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p1, v1}, Lnet/usikkert/kouchat/misc/User;->setOnline(Z)V

    .line 449
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/misc/Controller;->cancelFileTransfers(Lnet/usikkert/kouchat/misc/User;)V

    .line 450
    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/misc/UserList;->remove(Lnet/usikkert/kouchat/misc/User;)Z

    .line 452
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/misc/MessageController;->showPrivateSystemMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object p2

    invoke-interface {p2}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->setLoggedOff()V

    .line 457
    :cond_0
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/misc/Controller;->closePrivateChatLogger(Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method public saveSettings()V
    .locals 1

    .line 342
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->settingsSaver:Lnet/usikkert/kouchat/settings/SettingsSaver;

    invoke-interface {v0}, Lnet/usikkert/kouchat/settings/SettingsSaver;->saveSettings()V

    return-void
.end method

.method public sendChatMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 555
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.chatMessage.error.notConnected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.chatMessage.error.meIsAway"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 558
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 559
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.chatMessage.error.emptyMessage"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 560
    :cond_2
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->getBytes(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1c2

    if-le v0, v2, :cond_3

    .line 561
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.chatMessage.error.messageTooLong"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 562
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 561
    invoke-virtual {v0, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 564
    :cond_3
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendChatMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendClientInfo()V
    .locals 1

    .line 703
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendClient()V

    return-void
.end method

.method public sendExposeMessage()V
    .locals 1

    .line 517
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendExposeMessage()V

    return-void
.end method

.method public sendExposingMessage()V
    .locals 1

    .line 524
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendExposingMessage()V

    return-void
.end method

.method public sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    const-string v0, "User can not be null"

    .line 651
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "File can not be null"

    .line 652
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->isMe()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 655
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.sendFile.error.isMe"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 656
    :cond_0
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.sendFile.error.notConnected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 658
    :cond_1
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.sendFile.error.meIsAway"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_2
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.sendFile.error.userIsAway"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :cond_3
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->getBytes(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1c2

    if-le v0, v2, :cond_4

    .line 663
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.sendFile.error.messageTooLong"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 664
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 663
    invoke-virtual {p2, v0, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 666
    :cond_4
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V

    return-void
.end method

.method public sendFileAbort(Lnet/usikkert/kouchat/misc/User;ILjava/lang/String;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p1, p2, p3}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendFileAbort(Lnet/usikkert/kouchat/misc/User;ILjava/lang/String;)V

    return-void
.end method

.method public sendFileAccept(Lnet/usikkert/kouchat/misc/User;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendFileAccept(Lnet/usikkert/kouchat/misc/User;IILjava/lang/String;)V

    return-void
.end method

.method public sendGetTopicMessage()V
    .locals 1

    .line 531
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendGetTopicMessage()V

    return-void
.end method

.method public sendIdleMessage()V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendIdleMessage()V

    :cond_0
    return-void
.end method

.method public sendNickCrashMessage(Ljava/lang/String;)V
    .locals 1

    .line 608
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendNickCrashMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendPrivateMessage(Ljava/lang/String;Lnet/usikkert/kouchat/misc/User;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 719
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 720
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.notConnected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 721
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.meIsAway"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 723
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 724
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.emptyMessage"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 725
    :cond_2
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->getBytes(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1c2

    if-le v0, v2, :cond_3

    .line 726
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.messageTooLong"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 727
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 726
    invoke-virtual {p2, v0, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 728
    :cond_3
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatPort()I

    move-result v0

    if-nez v0, :cond_4

    .line 729
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.noPortNumber"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 730
    :cond_4
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 731
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.userIsAway"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 732
    :cond_5
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->isOnline()Z

    move-result v0

    if-nez v0, :cond_6

    .line 733
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.userIsOffline"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 734
    :cond_6
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/Settings;->isNoPrivateChat()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 735
    new-instance p1, Lnet/usikkert/kouchat/misc/CommandException;

    iget-object p2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v0, "core.privateChatMessage.error.privateChatDisabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/misc/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_7
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendPrivateMessage(Ljava/lang/String;Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method public sendTopicRequestedMessage()V
    .locals 2

    .line 572
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendTopicRequestedMessage(Lnet/usikkert/kouchat/misc/Topic;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 502
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/Controller;->doShutdown()V

    .line 503
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    return-void
.end method

.method public start()V
    .locals 7

    .line 150
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->dayTimer:Lnet/usikkert/kouchat/misc/DayTimer;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/DayTimer;->startTimer()V

    .line 151
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->idleThread:Lnet/usikkert/kouchat/misc/IdleThread;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/IdleThread;->start()V

    .line 153
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.startup.systemMessage.welcome"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "KouChat"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "1.1.1"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->dateTools:Lnet/usikkert/kouchat/util/DateTools;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.dateFormat.today"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/util/DateTools;->currentDateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/Controller;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/Controller;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.startup.systemMessage.todayIs"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method public updateAfterTimeout()V
    .locals 1

    .line 694
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->userListController:Lnet/usikkert/kouchat/misc/UserListController;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/UserListController;->isTimeoutUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller;->networkMessages:Lnet/usikkert/kouchat/net/NetworkMessages;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkMessages;->sendExposeMessage()V

    :cond_0
    return-void
.end method

.method public updateMeWriting(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isWrote()Z

    move-result p1

    if-nez p1, :cond_1

    .line 221
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/usikkert/kouchat/misc/Controller;->changeWriting(IZ)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/Controller;->isWrote()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/Controller;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/usikkert/kouchat/misc/Controller;->changeWriting(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
