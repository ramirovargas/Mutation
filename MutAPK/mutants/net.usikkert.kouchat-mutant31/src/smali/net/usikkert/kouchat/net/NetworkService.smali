.class public Lnet/usikkert/kouchat/net/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/NetworkConnectionListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

.field private final messageReceiver:Lnet/usikkert/kouchat/net/MessageReceiver;

.field private final messageSender:Lnet/usikkert/kouchat/net/MessageSender;

.field private final privateChatEnabled:Z

.field private final udpReceiver:Lnet/usikkert/kouchat/net/UDPReceiver;

.field private final udpSender:Lnet/usikkert/kouchat/net/UDPSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lnet/usikkert/kouchat/net/NetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/NetworkService;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Settings can not be null"

    .line 69
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 70
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lnet/usikkert/kouchat/net/NetworkService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Initializing network"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lnet/usikkert/kouchat/settings/Settings;->isNoPrivateChat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->privateChatEnabled:Z

    .line 76
    new-instance v0, Lnet/usikkert/kouchat/net/MessageReceiver;

    invoke-direct {v0, p2}, Lnet/usikkert/kouchat/net/MessageReceiver;-><init>(Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageReceiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    .line 77
    new-instance v0, Lnet/usikkert/kouchat/net/MessageSender;

    invoke-direct {v0, p2}, Lnet/usikkert/kouchat/net/MessageSender;-><init>(Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageSender:Lnet/usikkert/kouchat/net/MessageSender;

    .line 78
    new-instance v0, Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-direct {v0, p1, p2}, Lnet/usikkert/kouchat/net/ConnectionWorker;-><init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    .line 80
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->privateChatEnabled:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lnet/usikkert/kouchat/net/UDPReceiver;

    invoke-direct {v0, p1, p2}, Lnet/usikkert/kouchat/net/UDPReceiver;-><init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpReceiver:Lnet/usikkert/kouchat/net/UDPReceiver;

    .line 82
    new-instance p1, Lnet/usikkert/kouchat/net/UDPSender;

    invoke-direct {p1, p2}, Lnet/usikkert/kouchat/net/UDPSender;-><init>(Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpSender:Lnet/usikkert/kouchat/net/UDPSender;

    goto :goto_0

    .line 86
    :cond_0
    sget-object p1, Lnet/usikkert/kouchat/net/NetworkService;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Private chat is disabled"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpReceiver:Lnet/usikkert/kouchat/net/UDPReceiver;

    .line 88
    iput-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpSender:Lnet/usikkert/kouchat/net/UDPSender;

    .line 91
    :goto_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {p1, p0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V

    return-void
.end method


# virtual methods
.method public beforeNetworkCameUp()V
    .locals 0

    return-void
.end method

.method public checkNetwork()V
    .locals 1

    .line 197
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->checkNetwork()V

    return-void
.end method

.method public connect()V
    .locals 1

    .line 98
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->start()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 105
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->stop()V

    return-void
.end method

.method public getConnectionWorker()Lnet/usikkert/kouchat/net/ConnectionWorker;
    .locals 1

    .line 114
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    return-object v0
.end method

.method public isConnectionWorkerAlive()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isNetworkUp()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->isNetworkUp()Z

    move-result v0

    return v0
.end method

.method public networkCameUp(Z)V
    .locals 1

    .line 228
    iget-boolean p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->privateChatEnabled:Z

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpSender:Lnet/usikkert/kouchat/net/UDPSender;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/UDPSender;->startSender()V

    .line 230
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpReceiver:Lnet/usikkert/kouchat/net/UDPReceiver;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/UDPReceiver;->startReceiver()V

    .line 233
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/ConnectionWorker;->getCurrentNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageSender:Lnet/usikkert/kouchat/net/MessageSender;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/MessageSender;->startSender(Ljava/net/NetworkInterface;)Z

    .line 235
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageReceiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/MessageReceiver;->startReceiver(Ljava/net/NetworkInterface;)Z

    return-void
.end method

.method public networkWentDown(Z)V
    .locals 0

    .line 207
    iget-boolean p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->privateChatEnabled:Z

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpSender:Lnet/usikkert/kouchat/net/UDPSender;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/UDPSender;->stopSender()V

    .line 209
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpReceiver:Lnet/usikkert/kouchat/net/UDPReceiver;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/UDPReceiver;->stopReceiver()V

    .line 212
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageSender:Lnet/usikkert/kouchat/net/MessageSender;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/MessageSender;->stopSender()V

    .line 213
    iget-object p1, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageReceiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/MessageReceiver;->stopReceiver()V

    return-void
.end method

.method public registerMessageReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageReceiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/MessageReceiver;->registerReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V

    return-void
.end method

.method public registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/ConnectionWorker;->registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V

    return-void
.end method

.method public registerUDPReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->privateChatEnabled:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpReceiver:Lnet/usikkert/kouchat/net/UDPReceiver;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/UDPReceiver;->registerReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V

    :cond_0
    return-void
.end method

.method public sendMulticastMsg(Ljava/lang/String;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->messageSender:Lnet/usikkert/kouchat/net/MessageSender;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/MessageSender;->send(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sendUDPMsg(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->privateChatEnabled:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkService;->udpSender:Lnet/usikkert/kouchat/net/UDPSender;

    invoke-virtual {v0, p1, p2, p3}, Lnet/usikkert/kouchat/net/UDPSender;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
