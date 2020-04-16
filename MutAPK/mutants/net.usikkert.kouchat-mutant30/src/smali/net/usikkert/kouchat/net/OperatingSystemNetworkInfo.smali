.class public Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;
.super Ljava/lang/Object;
.source "OperatingSystemNetworkInfo.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final receiver:Lnet/usikkert/kouchat/net/MessageReceiver;

.field private final sender:Lnet/usikkert/kouchat/net/MessageSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Settings can not be null"

    .line 66
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 67
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lnet/usikkert/kouchat/net/MessageReceiver;

    const-string v1, "224.168.5.250"

    const v2, 0xc382

    invoke-direct {v0, v1, v2, p2}, Lnet/usikkert/kouchat/net/MessageReceiver;-><init>(Ljava/lang/String;ILnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->receiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    .line 70
    new-instance v0, Lnet/usikkert/kouchat/net/MessageSender;

    const-string v1, "224.168.5.250"

    invoke-direct {v0, v1, v2, p2}, Lnet/usikkert/kouchat/net/MessageSender;-><init>(Ljava/lang/String;ILnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->sender:Lnet/usikkert/kouchat/net/MessageSender;

    .line 71
    invoke-virtual {p1}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->me:Lnet/usikkert/kouchat/misc/User;

    return-void
.end method

.method private connect(Lnet/usikkert/kouchat/net/SimpleReceiverListener;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->receiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/net/MessageReceiver;->registerReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V

    .line 106
    iget-object p1, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->receiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/net/MessageReceiver;->startReceiver(Ljava/net/NetworkInterface;)Z

    .line 107
    iget-object p1, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->sender:Lnet/usikkert/kouchat/net/MessageSender;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/net/MessageSender;->startSender(Ljava/net/NetworkInterface;)Z

    return-void
.end method

.method private createMessageToSend()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOperatingSystemNetworkInterface("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disconnect()V
    .locals 1

    .line 114
    iget-object v0, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->sender:Lnet/usikkert/kouchat/net/MessageSender;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/MessageSender;->stopSender()V

    .line 115
    iget-object v0, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->receiver:Lnet/usikkert/kouchat/net/MessageReceiver;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/MessageReceiver;->stopReceiver()V

    return-void
.end method

.method private findNetworkInterface(Lnet/usikkert/kouchat/net/SimpleReceiverListener;)Ljava/net/NetworkInterface;
    .locals 4

    .line 144
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 150
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    sget-object v0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 154
    sget-object v0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private waitForMessage(Lnet/usikkert/kouchat/net/SimpleReceiverListener;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x32

    .line 126
    invoke-static {v1, v2}, Lnet/usikkert/kouchat/util/Tools;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getOperatingSystemNetworkInterface()Ljava/net/NetworkInterface;
    .locals 4

    .line 84
    sget-object v0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Trying to detect network interface used by operating system"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->createMessageToSend()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lnet/usikkert/kouchat/net/SimpleReceiverListener;

    invoke-direct {v1, v0}, Lnet/usikkert/kouchat/net/SimpleReceiverListener;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->connect(Lnet/usikkert/kouchat/net/SimpleReceiverListener;)V

    .line 89
    iget-object v2, p0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->sender:Lnet/usikkert/kouchat/net/MessageSender;

    invoke-virtual {v2, v0}, Lnet/usikkert/kouchat/net/MessageSender;->send(Ljava/lang/String;)Z

    .line 90
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->waitForMessage(Lnet/usikkert/kouchat/net/SimpleReceiverListener;)V

    .line 91
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->disconnect()V

    .line 92
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->findNetworkInterface(Lnet/usikkert/kouchat/net/SimpleReceiverListener;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 94
    sget-object v1, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected network interface used by operating system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v0
.end method
