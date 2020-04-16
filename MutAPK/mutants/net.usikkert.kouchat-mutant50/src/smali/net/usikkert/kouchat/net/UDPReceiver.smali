.class public Lnet/usikkert/kouchat/net/UDPReceiver;
.super Ljava/lang/Object;
.source "UDPReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private connected:Z

.field private final errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

.field private listener:Lnet/usikkert/kouchat/event/ReceiverListener;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lnet/usikkert/kouchat/net/UDPReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Settings can not be null"

    .line 71
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 72
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    .line 75
    invoke-virtual {p1}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->me:Lnet/usikkert/kouchat/misc/User;

    return-void
.end method


# virtual methods
.method public registerReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->listener:Lnet/usikkert/kouchat/event/ReceiverListener;

    return-void
.end method

.method public run()V
    .locals 6

    .line 83
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    if-eqz v0, :cond_2

    .line 85
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v1, 0x200

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 88
    iget-object v1, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 89
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v2, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message arrived from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->listener:Lnet/usikkert/kouchat/event/ReceiverListener;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->listener:Lnet/usikkert/kouchat/event/ReceiverListener;

    invoke-interface {v2, v0, v1}, Lnet/usikkert/kouchat/event/ReceiverListener;->messageArrived(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    iget-boolean v1, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startReceiver()V
    .locals 7

    .line 117
    sget-object v0, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Connecting..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Already connected."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const v0, 0x9ed0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const v2, 0x9ed0

    :goto_0
    const/16 v3, 0x32

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    .line 127
    iget-boolean v3, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    if-nez v3, :cond_1

    .line 129
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v3, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->udpSocket:Ljava/net/DatagramSocket;

    .line 130
    iput-boolean v4, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    .line 133
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "UDPReceiverWorker"

    invoke-direct {v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 136
    iget-object v3, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v3, v2}, Lnet/usikkert/kouchat/misc/User;->setPrivateChatPort(I)V

    .line 137
    sget-object v3, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 141
    sget-object v4, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 145
    iget-object v3, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v3, v1}, Lnet/usikkert/kouchat/misc/User;->setPrivateChatPort(I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to initialize udp network:\nNo available listening port between 40656 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n\nYou will not be able to receive private messages!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/misc/ErrorHandler;->showError(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public stopReceiver()V
    .locals 3

    .line 165
    sget-object v0, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Disconnecting..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 167
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Not connected."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->connected:Z

    .line 174
    iget-object v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->udpSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lnet/usikkert/kouchat/net/UDPReceiver;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 178
    :cond_1
    sget-object v0, Lnet/usikkert/kouchat/net/UDPReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Disconnected."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
