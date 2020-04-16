.class Lnet/usikkert/kouchat/net/FileToSend$FileInputStreamOpener;
.super Ljava/lang/Object;
.source "FileToSend.java"

# interfaces
.implements Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/usikkert/kouchat/net/FileToSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInputStreamOpener"
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lnet/usikkert/kouchat/net/FileToSend$FileInputStreamOpener;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public open()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/FileToSend$FileInputStreamOpener;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
