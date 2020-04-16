.class public Lnet/usikkert/kouchat/util/PropertyTools;
.super Ljava/lang/Object;
.source "PropertyTools.java"


# instance fields
.field private final ioTools:Lnet/usikkert/kouchat/util/IOTools;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lnet/usikkert/kouchat/util/IOTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/IOTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/util/PropertyTools;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    return-void
.end method


# virtual methods
.method public loadProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "File path can not be empty"

    .line 52
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    .line 58
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    iget-object p1, p0, Lnet/usikkert/kouchat/util/PropertyTools;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    invoke-virtual {p1, v2}, Lnet/usikkert/kouchat/util/IOTools;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lnet/usikkert/kouchat/util/PropertyTools;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/util/IOTools;->close(Ljava/io/Closeable;)V

    .line 66
    throw p1
.end method

.method public saveProperties(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "File path can not be empty"

    .line 79
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Properties can not be null"

    .line 80
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    invoke-virtual {p2, v1, p3}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    iget-object p1, p0, Lnet/usikkert/kouchat/util/PropertyTools;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    invoke-virtual {p1, v1}, Lnet/usikkert/kouchat/util/IOTools;->flush(Ljava/io/Flushable;)V

    .line 91
    iget-object p1, p0, Lnet/usikkert/kouchat/util/PropertyTools;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    invoke-virtual {p1, v1}, Lnet/usikkert/kouchat/util/IOTools;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 90
    :goto_0
    iget-object p2, p0, Lnet/usikkert/kouchat/util/PropertyTools;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    invoke-virtual {p2, v0}, Lnet/usikkert/kouchat/util/IOTools;->flush(Ljava/io/Flushable;)V

    .line 91
    iget-object p2, p0, Lnet/usikkert/kouchat/util/PropertyTools;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    invoke-virtual {p2, v0}, Lnet/usikkert/kouchat/util/IOTools;->close(Ljava/io/Closeable;)V

    .line 92
    throw p1
.end method
