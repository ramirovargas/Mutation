.class public Lnet/usikkert/kouchat/net/TransferList;
.super Ljava/lang/Object;
.source "TransferList.java"


# instance fields
.field private fileTransferIdCounter:I

.field private final receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/net/FileReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final senders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/net/FileSender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->receivers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFileReceiver(Lnet/usikkert/kouchat/misc/User;Ljava/io/File;J)Lnet/usikkert/kouchat/net/FileReceiver;
    .locals 7

    .line 178
    new-instance v6, Lnet/usikkert/kouchat/net/FileReceiver;

    iget v0, p0, Lnet/usikkert/kouchat/net/TransferList;->fileTransferIdCounter:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lnet/usikkert/kouchat/net/TransferList;->fileTransferIdCounter:I

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/usikkert/kouchat/net/FileReceiver;-><init>(Lnet/usikkert/kouchat/misc/User;Ljava/io/File;JI)V

    .line 179
    iget-object p1, p0, Lnet/usikkert/kouchat/net/TransferList;->receivers:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public addFileSender(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)Lnet/usikkert/kouchat/net/FileSender;
    .locals 2

    .line 63
    new-instance v0, Lnet/usikkert/kouchat/net/FileSender;

    iget v1, p0, Lnet/usikkert/kouchat/net/TransferList;->fileTransferIdCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/usikkert/kouchat/net/TransferList;->fileTransferIdCounter:I

    invoke-direct {v0, p1, p2, v1}, Lnet/usikkert/kouchat/net/FileSender;-><init>(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;I)V

    .line 64
    iget-object p1, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFileReceiver(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileReceiver;
    .locals 3

    .line 239
    iget-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 240
    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileReceiver;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileReceiver;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileReceiver(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Lnet/usikkert/kouchat/net/FileReceiver;
    .locals 3

    .line 221
    iget-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 222
    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileReceiver;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileReceiver;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFileReceivers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/net/FileReceiver;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v1, p0, Lnet/usikkert/kouchat/net/TransferList;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFileReceivers(Lnet/usikkert/kouchat/misc/User;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/usikkert/kouchat/misc/User;",
            ")",
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/net/FileReceiver;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v1, p0, Lnet/usikkert/kouchat/net/TransferList;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 203
    invoke-virtual {v2}, Lnet/usikkert/kouchat/net/FileReceiver;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFileSender(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileSender;
    .locals 3

    .line 127
    iget-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/net/FileSender;

    .line 128
    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileSender(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Lnet/usikkert/kouchat/net/FileSender;
    .locals 3

    .line 109
    iget-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/net/FileSender;

    .line 110
    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->getFile()Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFileSender(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;I)Lnet/usikkert/kouchat/net/FileSender;
    .locals 3

    .line 89
    iget-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/net/FileSender;

    .line 90
    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->getFile()Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/FileSender;->getFile()Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/net/FileToSend;->hashCode()I

    move-result v2

    if-ne v2, p3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFileSenders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/net/FileSender;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/usikkert/kouchat/net/FileSender;

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFileSenders(Lnet/usikkert/kouchat/misc/User;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/usikkert/kouchat/misc/User;",
            ")",
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/net/FileSender;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/usikkert/kouchat/net/FileSender;

    .line 146
    invoke-virtual {v2}, Lnet/usikkert/kouchat/net/FileSender;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFileTransfer(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileTransfer;
    .locals 1

    .line 290
    invoke-virtual {p0, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceiver(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->getFileSender(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileSender;

    move-result-object p1

    return-object p1
.end method

.method public getFileTransfer(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Lnet/usikkert/kouchat/net/FileTransfer;
    .locals 1

    .line 272
    invoke-virtual {p0, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceiver(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->getFileSender(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Lnet/usikkert/kouchat/net/FileSender;

    move-result-object p1

    return-object p1
.end method

.method public removeFileReceiver(Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFileSender(Lnet/usikkert/kouchat/net/FileSender;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/usikkert/kouchat/net/TransferList;->senders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
