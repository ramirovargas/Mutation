.class public Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
.super Ljava/lang/Object;
.source "AndroidUserInterface.java"

# interfaces
.implements Lnet/usikkert/kouchat/ui/UserInterface;
.implements Lnet/usikkert/kouchat/ui/ChatWindow;


# instance fields
.field private final androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

.field private final commandParser:Lnet/usikkert/kouchat/misc/CommandParser;

.field private final context:Landroid/content/Context;

.field private final controller:Lnet/usikkert/kouchat/misc/Controller;

.field private final errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

.field private mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

.field private final msgController:Lnet/usikkert/kouchat/misc/MessageController;

.field private final notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

.field private final settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

.field private final sleeper:Lnet/usikkert/kouchat/util/Sleeper;

.field private final transferList:Lnet/usikkert/kouchat/net/TransferList;

.field private final userList:Lnet/usikkert/kouchat/misc/UserList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;Lnet/usikkert/kouchat/android/notification/NotificationService;)V
    .locals 6

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 89
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 90
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NotificationService can not be null"

    .line 91
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    .line 95
    iput-object p3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    .line 96
    new-instance p3, Lnet/usikkert/kouchat/misc/ErrorHandler;

    invoke-direct {p3}, Lnet/usikkert/kouchat/misc/ErrorHandler;-><init>()V

    iput-object p3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    .line 98
    new-instance p3, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    invoke-direct {p3, p1}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    .line 99
    new-instance p1, Lnet/usikkert/kouchat/misc/MessageController;

    iget-object p3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    invoke-direct {p1, p0, p0, p2, p3}, Lnet/usikkert/kouchat/misc/MessageController;-><init>(Lnet/usikkert/kouchat/ui/ChatWindow;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    .line 100
    new-instance p1, Lnet/usikkert/kouchat/message/CoreMessages;

    invoke-direct {p1}, Lnet/usikkert/kouchat/message/CoreMessages;-><init>()V

    .line 101
    new-instance p3, Lnet/usikkert/kouchat/misc/Controller;

    new-instance v3, Lnet/usikkert/kouchat/android/settings/AndroidSettingsSaver;

    invoke-direct {v3}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsSaver;-><init>()V

    iget-object v5, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/usikkert/kouchat/misc/Controller;-><init>(Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/settings/SettingsSaver;Lnet/usikkert/kouchat/message/CoreMessages;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    .line 102
    new-instance p3, Lnet/usikkert/kouchat/misc/CommandParser;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-direct {p3, v0, p0, p2, p1}, Lnet/usikkert/kouchat/misc/CommandParser;-><init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/message/CoreMessages;)V

    iput-object p3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->commandParser:Lnet/usikkert/kouchat/misc/CommandParser;

    .line 103
    new-instance p1, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    invoke-direct {p1}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    .line 104
    new-instance p1, Lnet/usikkert/kouchat/util/Sleeper;

    invoke-direct {p1}, Lnet/usikkert/kouchat/util/Sleeper;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->sleeper:Lnet/usikkert/kouchat/util/Sleeper;

    .line 106
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->userList:Lnet/usikkert/kouchat/misc/UserList;

    .line 107
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getTransferList()Lnet/usikkert/kouchat/net/TransferList;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->transferList:Lnet/usikkert/kouchat/net/TransferList;

    .line 108
    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    return-void
.end method

.method static synthetic access$000(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/CommandParser;
    .locals 0

    .line 69
    iget-object p0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->commandParser:Lnet/usikkert/kouchat/misc/CommandParser;

    return-object p0
.end method

.method static synthetic access$100(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/Controller;
    .locals 0

    .line 69
    iget-object p0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    return-object p0
.end method

.method static synthetic access$200(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/MessageController;
    .locals 0

    .line 69
    iget-object p0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    return-object p0
.end method

.method static synthetic access$300(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/User;
    .locals 0

    .line 69
    iget-object p0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    return-object p0
.end method

.method static synthetic access$400(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    return-object p0
.end method

.method private doChangeNickName(Ljava/lang/String;)Z
    .locals 5

    .line 509
    new-instance v0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    new-instance v2, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$7;

    invoke-direct {v2, p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$7;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/component/Command;)V

    const/4 v1, 0x0

    .line 518
    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v2, 0x1

    .line 521
    :try_start_0
    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 531
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Something went wrong changing nick name to \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    .line 526
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Was interrupted while changing nick name to \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private formatTitle()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->isLoggedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Connection lost - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KouChat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Not connected - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KouChat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->isAway()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Away) - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KouChat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KouChat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatTopic()Ljava/lang/String;
    .locals 3

    .line 256
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 260
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Topic;->hasTopic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Topic;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public activatedPrivChat(Lnet/usikkert/kouchat/misc/User;)V
    .locals 3

    .line 551
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->isNewPrivMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setNewPrivMsg(Z)V

    .line 553
    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/usikkert/kouchat/misc/Controller;->changeNewMessage(IZ)V

    .line 556
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/notification/NotificationService;->resetPrivateChatNotification(Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method public appendToChat(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "Message can not be empty"

    .line 401
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->styleAndAppend(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 405
    iget-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    if-eqz p2, :cond_0

    .line 406
    iget-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->appendToChat(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public askFileSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public cancelFileTransfer(II)V
    .locals 1

    .line 185
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->transferList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->getFileTransfer(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->commandParser:Lnet/usikkert/kouchat/misc/CommandParser;

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/misc/CommandParser;->cancelFileTransfer(Lnet/usikkert/kouchat/net/FileTransfer;)V

    :cond_0
    return-void
.end method

.method public changeAway(Z)V
    .locals 0

    .line 304
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->showTopic()V

    return-void
.end method

.method public changeNickName(Ljava/lang/String;)Z
    .locals 4

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 489
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 493
    :cond_0
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 494
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    const v3, 0x7f0d0028

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNickInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    const v0, 0x7f0d0027

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    .line 502
    :cond_2
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->doChangeNickName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public changeTopic(Ljava/lang/String;)V
    .locals 3

    .line 284
    new-instance v0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    new-instance v2, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$1;

    invoke-direct {v2, p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$1;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/component/Command;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 289
    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public clearChat()V
    .locals 0

    return-void
.end method

.method public comeBack()V
    .locals 3

    .line 334
    new-instance v0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    new-instance v2, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$3;

    invoke-direct {v2, p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$3;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/component/Command;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 339
    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public createPrivChat(Lnet/usikkert/kouchat/misc/User;)V
    .locals 4

    const-string v0, "User can not be null"

    .line 373
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/misc/User;)V

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setPrivchat(Lnet/usikkert/kouchat/ui/PrivateChatWindow;)V

    .line 379
    :cond_0
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatLogger()Lnet/usikkert/kouchat/misc/ChatLogger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 380
    new-instance v0, Lnet/usikkert/kouchat/misc/ChatLogger;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    iget-object v3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    invoke-direct {v0, v1, v2, v3}, Lnet/usikkert/kouchat/misc/ChatLogger;-><init>(Ljava/lang/String;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/User;->setPrivateChatLogger(Lnet/usikkert/kouchat/misc/ChatLogger;)V

    :cond_1
    return-void
.end method

.method public getFileReceiver(II)Lnet/usikkert/kouchat/net/FileReceiver;
    .locals 1

    .line 180
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->transferList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceiver(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object p1

    return-object p1
.end method

.method public getMe()Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 599
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    return-object v0
.end method

.method public getMessageController()Lnet/usikkert/kouchat/misc/MessageController;
    .locals 1

    .line 368
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    return-object v0
.end method

.method public getSettings()Lnet/usikkert/kouchat/android/settings/AndroidSettings;
    .locals 1

    .line 608
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object v0

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser(I)Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 542
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    return-object p1
.end method

.method public getUserList()Lnet/usikkert/kouchat/misc/UserList;
    .locals 1

    .line 590
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->userList:Lnet/usikkert/kouchat/misc/UserList;

    return-object v0
.end method

.method public goAway(Ljava/lang/String;)V
    .locals 3

    .line 322
    new-instance v0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    new-instance v2, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$2;

    invoke-direct {v2, p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$2;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/component/Command;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 327
    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public isAway()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 391
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logOff()V
    .locals 2

    .line 416
    new-instance v0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$4;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$4;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    const/4 v1, 0x0

    .line 425
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public logOn()V
    .locals 1

    .line 411
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->start()V

    .line 412
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->logOn()V

    return-void
.end method

.method public notifyMessageArrived(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 1

    .line 347
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->notifyNewMainChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyPrivateMessageArrived(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 2

    const-string v0, "User can not be null"

    .line 358
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    const-string v1, "Private chat can not be null"

    invoke-static {v0, v1}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    invoke-interface {v0}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/notification/NotificationService;->notifyNewPrivateChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public registerMainChatController(Lnet/usikkert/kouchat/android/controller/MainChatController;)V
    .locals 1

    const-string v0, "MainChatController can not be null"

    .line 429
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    .line 432
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->getHistory()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->updateChat(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V
    .locals 1

    .line 627
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V

    return-void
.end method

.method public resetAllMessageNotifications()V
    .locals 1

    .line 581
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/NotificationService;->resetAllMessageNotifications()V

    return-void
.end method

.method public sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V
    .locals 3

    .line 618
    new-instance v0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    new-instance v2, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;

    invoke-direct {v2, p0, p1, p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/component/Command;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 623
    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Message can not be empty"

    .line 442
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;

    invoke-direct {v0, p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$5;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 460
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public sendPrivateMessage(Ljava/lang/String;Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    const-string v0, "Private message can not be empty"

    .line 464
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User can not be null"

    .line 465
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    new-instance v0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$6;

    invoke-direct {v0, p0, p1, p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$6;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Ljava/lang/String;Lnet/usikkert/kouchat/misc/User;)V

    const/4 p1, 0x0

    .line 483
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public showFileSave(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/notification/NotificationService;->notifyNewFileTransfer(Lnet/usikkert/kouchat/net/FileReceiver;)V

    .line 133
    :goto_0
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->isAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->isRejected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->sleeper:Lnet/usikkert/kouchat/util/Sleeper;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/util/Sleeper;->sleep(J)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->isAccepted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/notification/NotificationService;->cancelFileTransferNotification(Lnet/usikkert/kouchat/net/FileReceiver;)V

    :cond_1
    return-void
.end method

.method public showTopic()V
    .locals 3

    .line 229
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->formatTitle()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->formatTopic()Ljava/lang/String;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-virtual {v2, v0, v1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->updateTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showTransfer(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 7

    const-string v0, "FileReceiver can not be null"

    .line 150
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;->createFileInDownloadsWithAvailableName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/net/FileReceiver;->setFile(Ljava/io/File;)V

    .line 155
    new-instance v1, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;

    iget-object v3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    iget-object v4, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    iget-object v5, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v6, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;-><init>(Lnet/usikkert/kouchat/net/FileTransfer;Landroid/content/Context;Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;Lnet/usikkert/kouchat/misc/MessageController;Lnet/usikkert/kouchat/android/notification/NotificationService;)V

    return-void
.end method

.method public showTransfer(Lnet/usikkert/kouchat/net/FileSender;)V
    .locals 7

    const-string v0, "FileSender can not be null"

    .line 166
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v1, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;

    iget-object v3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->context:Landroid/content/Context;

    iget-object v4, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    iget-object v5, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v6, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileTransferListener;-><init>(Lnet/usikkert/kouchat/net/FileTransfer;Landroid/content/Context;Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;Lnet/usikkert/kouchat/misc/MessageController;Lnet/usikkert/kouchat/android/notification/NotificationService;)V

    return-void
.end method

.method public unregisterMainChatController(Lnet/usikkert/kouchat/android/controller/MainChatController;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 437
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->mainChatController:Lnet/usikkert/kouchat/android/controller/MainChatController;

    :cond_0
    return-void
.end method

.method public updateMeWriting(Z)V
    .locals 1

    .line 566
    new-instance v0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;

    invoke-direct {v0, p0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$8;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Z)V

    const/4 p1, 0x0

    .line 574
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
