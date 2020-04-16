.class public Lnet/usikkert/kouchat/net/FileSender;
.super Ljava/lang/Object;
.source "FileSender.java"

# interfaces
.implements Lnet/usikkert/kouchat/net/FileTransfer;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

.field private cancel:Z

.field private final file:Lnet/usikkert/kouchat/net/FileToSend;

.field private final id:I

.field private is:Ljava/io/InputStream;

.field private listener:Lnet/usikkert/kouchat/event/FileTransferListener;

.field private os:Ljava/io/OutputStream;

.field private percent:I

.field private sent:Z

.field private sock:Ljava/net/Socket;

.field private transferred:J

.field private final user:Lnet/usikkert/kouchat/misc/User;

.field private waiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lnet/usikkert/kouchat/net/FileSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;I)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->user:Lnet/usikkert/kouchat/misc/User;

    .line 99
    iput-object p2, p0, Lnet/usikkert/kouchat/net/FileSender;->file:Lnet/usikkert/kouchat/net/FileToSend;

    .line 100
    iput p3, p0, Lnet/usikkert/kouchat/net/FileSender;->id:I

    .line 102
    new-instance p1, Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-direct {p1}, Lnet/usikkert/kouchat/util/ByteCounter;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lnet/usikkert/kouchat/net/FileSender;->waiting:Z

    return-void
.end method

.method private cleanupConnections()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->is:Ljava/io/InputStream;

    .line 213
    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->os:Ljava/io/OutputStream;

    .line 214
    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->sock:Ljava/net/Socket;

    return-void
.end method

.method private stopSender()V
    .locals 4

    .line 222
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    sget-object v1, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 238
    sget-object v1, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 248
    sget-object v1, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->sock:Ljava/net/Socket;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 258
    sget-object v1, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileSender;->cancel:Z

    .line 278
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileSender;->stopSender()V

    .line 279
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V

    return-void
.end method

.method public getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;
    .locals 1

    .line 349
    sget-object v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->SEND:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    return-object v0
.end method

.method public getFile()Lnet/usikkert/kouchat/net/FileToSend;
    .locals 1

    .line 378
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->file:Lnet/usikkert/kouchat/net/FileToSend;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->file:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 339
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->file:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileToSend;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 369
    iget v0, p0, Lnet/usikkert/kouchat/net/FileSender;->id:I

    return v0
.end method

.method public getPercent()I
    .locals 1

    .line 299
    iget v0, p0, Lnet/usikkert/kouchat/net/FileSender;->percent:I

    return v0
.end method

.method public getSpeed()J
    .locals 2

    .line 359
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/util/ByteCounter;->getBytesPerSec()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferred()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lnet/usikkert/kouchat/net/FileSender;->transferred:J

    return-wide v0
.end method

.method public getUser()Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 309
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->user:Lnet/usikkert/kouchat/misc/User;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileSender;->cancel:Z

    return v0
.end method

.method public isTransferred()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileSender;->sent:Z

    return v0
.end method

.method public isWaiting()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileSender;->waiting:Z

    return v0
.end method

.method public registerListener(Lnet/usikkert/kouchat/event/FileTransferListener;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    .line 399
    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusWaiting()V

    return-void
.end method

.method public transfer(I)Z
    .locals 13

    .line 114
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileSender;->cancel:Z

    if-nez v0, :cond_6

    .line 115
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusConnecting()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileSender;->waiting:Z

    .line 118
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileSender;->sent:Z

    const/4 v1, 0x0

    .line 123
    :goto_0
    :try_start_0
    iget-object v2, p0, Lnet/usikkert/kouchat/net/FileSender;->sock:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x64

    if-nez v2, :cond_0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 127
    :try_start_1
    new-instance v2, Ljava/net/Socket;

    iget-object v5, p0, Lnet/usikkert/kouchat/net/FileSender;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v5}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v2, v5, p1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p0, Lnet/usikkert/kouchat/net/FileSender;->sock:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 135
    :try_start_2
    sget-object v5, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 131
    sget-object v5, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :goto_1
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v2

    .line 143
    :try_start_4
    sget-object v3, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->sock:Ljava/net/Socket;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lnet/usikkert/kouchat/net/FileSender;->cancel:Z

    if-nez p1, :cond_5

    .line 148
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusTransferring()V

    .line 149
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->file:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileToSend;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->is:Ljava/io/InputStream;

    .line 150
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->sock:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->os:Ljava/io/OutputStream;

    const/16 p1, 0x400

    .line 152
    new-array p1, p1, [B

    const-wide/16 v1, 0x0

    .line 153
    iput-wide v1, p0, Lnet/usikkert/kouchat/net/FileSender;->transferred:J

    .line 154
    iput v0, p0, Lnet/usikkert/kouchat/net/FileSender;->percent:I

    .line 158
    iget-object v1, p0, Lnet/usikkert/kouchat/net/FileSender;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/util/ByteCounter;->prepare()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 160
    :cond_1
    :goto_2
    iget-boolean v5, p0, Lnet/usikkert/kouchat/net/FileSender;->cancel:Z

    const/4 v6, 0x1

    if-nez v5, :cond_3

    iget-object v5, p0, Lnet/usikkert/kouchat/net/FileSender;->is:Ljava/io/InputStream;

    invoke-virtual {v5, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 161
    iget-object v7, p0, Lnet/usikkert/kouchat/net/FileSender;->os:Ljava/io/OutputStream;

    invoke-virtual {v7, p1, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 162
    iget-wide v7, p0, Lnet/usikkert/kouchat/net/FileSender;->transferred:J

    int-to-long v9, v5

    add-long v11, v7, v9

    iput-wide v11, p0, Lnet/usikkert/kouchat/net/FileSender;->transferred:J

    .line 163
    iget-wide v7, p0, Lnet/usikkert/kouchat/net/FileSender;->transferred:J

    mul-long v7, v7, v3

    iget-object v5, p0, Lnet/usikkert/kouchat/net/FileSender;->file:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {v5}, Lnet/usikkert/kouchat/net/FileToSend;->length()J

    move-result-wide v11

    div-long/2addr v7, v11

    long-to-int v5, v7

    iput v5, p0, Lnet/usikkert/kouchat/net/FileSender;->percent:I

    .line 164
    iget-object v5, p0, Lnet/usikkert/kouchat/net/FileSender;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-virtual {v5, v9, v10}, Lnet/usikkert/kouchat/util/ByteCounter;->addBytes(J)V

    add-int/2addr v1, v6

    .line 167
    iget v5, p0, Lnet/usikkert/kouchat/net/FileSender;->percent:I

    if-gt v5, v2, :cond_2

    const/16 v5, 0xfa

    if-lt v1, v5, :cond_1

    .line 169
    :cond_2
    iget v2, p0, Lnet/usikkert/kouchat/net/FileSender;->percent:I

    .line 170
    iget-object v1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v1}, Lnet/usikkert/kouchat/event/FileTransferListener;->transferUpdate()V

    const/4 v1, 0x0

    goto :goto_2

    .line 174
    :cond_3
    iget-boolean p1, p0, Lnet/usikkert/kouchat/net/FileSender;->cancel:Z

    if-nez p1, :cond_4

    iget-wide v0, p0, Lnet/usikkert/kouchat/net/FileSender;->transferred:J

    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->file:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileToSend;->length()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 175
    iput-boolean v6, p0, Lnet/usikkert/kouchat/net/FileSender;->sent:Z

    .line 176
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusCompleted()V

    goto :goto_3

    .line 180
    :cond_4
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V

    goto :goto_3

    .line 185
    :cond_5
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    :goto_3
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileSender;->stopSender()V

    .line 201
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileSender;->cleanupConnections()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    .line 195
    :try_start_5
    sget-object v0, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V

    goto :goto_3

    :catch_4
    move-exception p1

    .line 190
    sget-object v0, Lnet/usikkert/kouchat/net/FileSender;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-object p1, p0, Lnet/usikkert/kouchat/net/FileSender;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 200
    :goto_4
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileSender;->stopSender()V

    .line 201
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileSender;->cleanupConnections()V

    .line 202
    throw p1

    .line 205
    :cond_6
    :goto_5
    iget-boolean p1, p0, Lnet/usikkert/kouchat/net/FileSender;->sent:Z

    return p1
.end method
