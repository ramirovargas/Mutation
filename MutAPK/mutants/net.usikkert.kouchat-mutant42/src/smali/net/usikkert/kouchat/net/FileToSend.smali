.class public Lnet/usikkert/kouchat/net/FileToSend;
.super Ljava/lang/Object;
.source "FileToSend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/usikkert/kouchat/net/FileToSend$FileInputStreamOpener;,
        Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;
    }
.end annotation


# instance fields
.field private final inputStreamOpener:Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;

.field private final length:J

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "File to send can not be null"

    .line 44
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lnet/usikkert/kouchat/net/FileToSend$FileInputStreamOpener;

    invoke-direct {v0, p1}, Lnet/usikkert/kouchat/net/FileToSend$FileInputStreamOpener;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->inputStreamOpener:Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->length:J

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;Ljava/lang/String;J)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InputStreamOpener can not be null"

    .line 54
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileToSend;->inputStreamOpener:Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;

    .line 57
    iput-object p2, p0, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    .line 58
    iput-wide p3, p0, Lnet/usikkert/kouchat/net/FileToSend;->length:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    check-cast p1, Lnet/usikkert/kouchat/net/FileToSend;

    .line 85
    iget-wide v2, p0, Lnet/usikkert/kouchat/net/FileToSend;->length:J

    iget-wide v4, p1, Lnet/usikkert/kouchat/net/FileToSend;->length:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 89
    :cond_2
    iget-object v2, p0, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    iget-object p1, p1, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->inputStreamOpener:Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;

    invoke-interface {v0}, Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;->open()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 94
    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-wide v1, p0, Lnet/usikkert/kouchat/net/FileToSend;->length:J

    iget-wide v3, p0, Lnet/usikkert/kouchat/net/FileToSend;->length:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    return v0
.end method

.method public length()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lnet/usikkert/kouchat/net/FileToSend;->length:J

    return-wide v0
.end method
