.class public Lnet/usikkert/kouchat/net/MessageReceiver;
.super Ljava/lang/Object;
.source "MessageReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private address:Ljava/net/InetAddress;

.field private connected:Z

.field private listener:Lnet/usikkert/kouchat/event/ReceiverListener;

.field private mcSocket:Ljava/net/MulticastSocket;

.field private final port:I

.field private worker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lnet/usikkert/kouchat/net/MessageReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating MessageReceiver on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v0, "IP address can not be empty"

    .line 92
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 93
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput p2, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->port:I

    .line 98
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    sget-object p2, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to initialize the network:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "KouChat"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " will now shutdown."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/usikkert/kouchat/misc/ErrorHandler;->showCriticalError(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 107
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 2

    const-string v0, "224.168.5.200"

    const v1, 0x9e6c

    .line 77
    invoke-direct {p0, v0, v1, p1}, Lnet/usikkert/kouchat/net/MessageReceiver;-><init>(Ljava/lang/String;ILnet/usikkert/kouchat/misc/ErrorHandler;)V

    return-void
.end method

.method private startThread()V
    .locals 3

    .line 149
    sget-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Starting."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MessageReceiverWorker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->worker:Ljava/lang/Thread;

    .line 151
    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public registerReceiverListener(Lnet/usikkert/kouchat/event/ReceiverListener;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->listener:Lnet/usikkert/kouchat/event/ReceiverListener;

    return-void
.end method

.method public run()V
    .locals 6

    .line 115
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z

    if-eqz v0, :cond_2

    .line 117
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v1, 0x200

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 120
    iget-boolean v1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 122
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v2, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

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

    .line 126
    iget-object v2, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->listener:Lnet/usikkert/kouchat/event/ReceiverListener;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->listener:Lnet/usikkert/kouchat/event/ReceiverListener;

    invoke-interface {v2, v0, v1}, Lnet/usikkert/kouchat/event/ReceiverListener;->messageArrived(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    iget-boolean v1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z

    if-eqz v1, :cond_1

    .line 135
    sget-object v1, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    sget-object v1, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized startReceiver(Ljava/net/NetworkInterface;)Z
    .locals 4

    monitor-enter p0

    .line 165
    :try_start_0
    sget-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z

    if-eqz v0, :cond_0

    .line 169
    sget-object p1, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Already connected."

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/net/MulticastSocket;

    iget v1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->port:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    :cond_1
    if-eqz p1, :cond_2

    .line 178
    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 181
    :cond_2
    iget-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 182
    sget-object p1, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    :try_start_2
    sget-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    iget-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    if-eqz p1, :cond_4

    .line 191
    iget-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {p1}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 192
    iget-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {p1}, Ljava/net/MulticastSocket;->close()V

    :cond_3
    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    .line 199
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->worker:Ljava/lang/Thread;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->worker:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_6

    .line 200
    :cond_5
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/MessageReceiver;->startThread()V

    .line 203
    :cond_6
    iget-boolean p1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopReceiver()V
    .locals 4

    monitor-enter p0

    .line 210
    :try_start_0
    sget-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Not connected."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    sget-object v1, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 229
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->mcSocket:Ljava/net/MulticastSocket;

    .line 234
    :cond_2
    sget-object v0, Lnet/usikkert/kouchat/net/MessageReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lnet/usikkert/kouchat/net/MessageReceiver;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 209
    monitor-exit p0

    throw v0
.end method
