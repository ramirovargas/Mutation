.class Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;
.super Ljava/lang/Object;
.source "AndroidFileUtils.java"

# interfaces
.implements Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UriInputStreamOpener"
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;->uri:Landroid/net/Uri;

    .line 193
    iput-object p2, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;->contentResolver:Landroid/content/ContentResolver;

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

    .line 198
    iget-object v0, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
