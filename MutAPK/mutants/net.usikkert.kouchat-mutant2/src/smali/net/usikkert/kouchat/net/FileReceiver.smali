.class public Lnet/usikkert/kouchat/net/FileReceiver;
.super Ljava/lang/Object;
.source "FileReceiver.java"

# interfaces
.implements Lnet/usikkert/kouchat/net/FileTransfer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private accepted:Z

.field private final bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

.field private cancel:Z

.field private file:Ljava/io/File;

.field private fos:Ljava/io/FileOutputStream;

.field private final id:I

.field private is:Ljava/io/InputStream;

.field private listener:Lnet/usikkert/kouchat/event/FileTransferListener;

.field private final originalFileName:Ljava/lang/String;

.field private percent:I

.field private received:Z

.field private rejected:Z

.field private sSock:Ljava/net/ServerSocket;

.field private final size:J

.field private sock:Ljava/net/Socket;

.field private transferred:J

.field private final user:Lnet/usikkert/kouchat/misc/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lnet/usikkert/kouchat/net/FileReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/misc/User;Ljava/io/File;JI)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->user:Lnet/usikkert/kouchat/misc/User;

    .line 113
    iput-object p2, p0, Lnet/usikkert/kouchat/net/FileReceiver;->file:Ljava/io/File;

    .line 114
    iput-wide p3, p0, Lnet/usikkert/kouchat/net/FileReceiver;->size:J

    .line 115
    iput p5, p0, Lnet/usikkert/kouchat/net/FileReceiver;->id:I

    .line 116
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->originalFileName:Ljava/lang/String;

    .line 118
    new-instance p1, Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-direct {p1}, Lnet/usikkert/kouchat/util/ByteCounter;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 47
    sget-object v0, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lnet/usikkert/kouchat/net/FileReceiver;)Ljava/net/ServerSocket;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$102(Lnet/usikkert/kouchat/net/FileReceiver;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    return-object p1
.end method

.method private cleanupConnections()V
    .locals 1

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->is:Ljava/io/InputStream;

    .line 228
    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->fos:Ljava/io/FileOutputStream;

    .line 229
    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sock:Ljava/net/Socket;

    .line 230
    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    return-void
.end method

.method private stopReceiver()V
    .locals 4

    .line 238
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    sget-object v1, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 254
    sget-object v1, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 264
    sget-object v1, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sock:Ljava/net/Socket;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 274
    sget-object v1, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    :cond_3
    :goto_3
    :try_start_4
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 284
    sget-object v1, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method public accept()V
    .locals 1

    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->accepted:Z

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->cancel:Z

    .line 304
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileReceiver;->stopReceiver()V

    .line 306
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V

    :cond_0
    return-void
.end method

.method public getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;
    .locals 1

    .line 406
    sget-object v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 337
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 386
    iget-wide v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->size:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 426
    iget v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->id:I

    return v0
.end method

.method public getOriginalFileName()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->originalFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .line 318
    iget v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->percent:I

    return v0
.end method

.method public getSpeed()J
    .locals 2

    .line 416
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/util/ByteCounter;->getBytesPerSec()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferred()J
    .locals 2

    .line 376
    iget-wide v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->transferred:J

    return-wide v0
.end method

.method public getUser()Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 366
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->user:Lnet/usikkert/kouchat/misc/User;

    return-object v0
.end method

.method public isAccepted()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->accepted:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->cancel:Z

    return v0
.end method

.method public isRejected()Z
    .locals 1

    .line 463
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->rejected:Z

    return v0
.end method

.method public isTransferred()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->received:Z

    return v0
.end method

.method public registerListener(Lnet/usikkert/kouchat/event/FileTransferListener;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    .line 438
    invoke-interface {p1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusWaiting()V

    return-void
.end method

.method public reject()V
    .locals 1

    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->rejected:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->file:Ljava/io/File;

    return-void
.end method

.method public startServer()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/net/ServerException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x9f34

    const/4 v1, 0x0

    const v2, 0x9f34

    :goto_0
    if-nez v0, :cond_0

    const/16 v3, 0x32

    if-ge v1, v3, :cond_0

    .line 135
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    .line 136
    new-instance v3, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;

    invoke-direct {v3, p0}, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;-><init>(Lnet/usikkert/kouchat/net/FileReceiver;)V

    .line 137
    invoke-virtual {v3}, Lnet/usikkert/kouchat/net/FileReceiver$TimeoutThread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 142
    :try_start_1
    sget-object v4, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :goto_1
    throw v0

    :cond_0
    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lnet/usikkert/kouchat/net/ServerException;

    const-string v1, "Could not start server"

    invoke-direct {v0, v1}, Lnet/usikkert/kouchat/net/ServerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2
.end method

.method public transfer()Z
    .locals 12

    .line 165
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusConnecting()V

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->received:Z

    .line 168
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->cancel:Z

    .line 171
    :try_start_0
    iget-object v1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sSock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sock:Ljava/net/Socket;

    .line 173
    iget-object v1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v1}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusTransferring()V

    .line 174
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lnet/usikkert/kouchat/net/FileReceiver;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->fos:Ljava/io/FileOutputStream;

    .line 175
    iget-object v1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lnet/usikkert/kouchat/net/FileReceiver;->is:Ljava/io/InputStream;

    const/16 v1, 0x400

    .line 177
    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    .line 178
    iput-wide v2, p0, Lnet/usikkert/kouchat/net/FileReceiver;->transferred:J

    .line 179
    iput v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->percent:I

    .line 183
    iget-object v2, p0, Lnet/usikkert/kouchat/net/FileReceiver;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/util/ByteCounter;->prepare()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lnet/usikkert/kouchat/net/FileReceiver;->cancel:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lnet/usikkert/kouchat/net/FileReceiver;->is:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 186
    iget-object v6, p0, Lnet/usikkert/kouchat/net/FileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v6, v1, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 187
    iget-wide v6, p0, Lnet/usikkert/kouchat/net/FileReceiver;->transferred:J

    int-to-long v8, v4

    add-long v10, v6, v8

    iput-wide v10, p0, Lnet/usikkert/kouchat/net/FileReceiver;->transferred:J

    .line 188
    iget-wide v6, p0, Lnet/usikkert/kouchat/net/FileReceiver;->transferred:J

    const-wide/16 v10, 0x64

    mul-long v6, v6, v10

    iget-wide v10, p0, Lnet/usikkert/kouchat/net/FileReceiver;->size:J

    div-long/2addr v6, v10

    long-to-int v4, v6

    iput v4, p0, Lnet/usikkert/kouchat/net/FileReceiver;->percent:I

    .line 189
    iget-object v4, p0, Lnet/usikkert/kouchat/net/FileReceiver;->bCounter:Lnet/usikkert/kouchat/util/ByteCounter;

    invoke-virtual {v4, v8, v9}, Lnet/usikkert/kouchat/util/ByteCounter;->addBytes(J)V

    add-int/2addr v2, v5

    .line 192
    iget v4, p0, Lnet/usikkert/kouchat/net/FileReceiver;->percent:I

    if-gt v4, v3, :cond_1

    const/16 v4, 0xfa

    if-lt v2, v4, :cond_0

    .line 194
    :cond_1
    iget v3, p0, Lnet/usikkert/kouchat/net/FileReceiver;->percent:I

    .line 195
    iget-object v2, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v2}, Lnet/usikkert/kouchat/event/FileTransferListener;->transferUpdate()V

    const/4 v2, 0x0

    goto :goto_0

    .line 199
    :cond_2
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->cancel:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->transferred:J

    iget-wide v2, p0, Lnet/usikkert/kouchat/net/FileReceiver;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 200
    iput-boolean v5, p0, Lnet/usikkert/kouchat/net/FileReceiver;->received:Z

    .line 201
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusCompleted()V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_4
    :goto_1
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileReceiver;->stopReceiver()V

    .line 217
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileReceiver;->cleanupConnections()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    sget-object v1, Lnet/usikkert/kouchat/net/FileReceiver;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->listener:Lnet/usikkert/kouchat/event/FileTransferListener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/event/FileTransferListener;->statusFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 220
    :goto_2
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/FileReceiver;->received:Z

    return v0

    .line 216
    :goto_3
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileReceiver;->stopReceiver()V

    .line 217
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/FileReceiver;->cleanupConnections()V

    .line 218
    throw v0
.end method
