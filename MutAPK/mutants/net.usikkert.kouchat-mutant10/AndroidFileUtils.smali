.class public Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;
.super Ljava/lang/Object;
.source "AndroidFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final URI_SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final URI_SCHEME_FILE:Ljava/lang/String; = "file"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFileToMediaDatabase(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    const-string v0, "Context can not be null"

    .line 151
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "File to add can not be null"

    .line 152
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public createFileInDownloadsWithAvailableName(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const-string v0, "File name can not be empty"

    .line 170
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    sget-object v1, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Unable to create the public download directory. Saving here will probably fail. path=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 183
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lnet/usikkert/kouchat/util/Tools;->getFileWithIncrementedName(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method getFileFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lnet/usikkert/kouchat/net/FileToSend;
    .locals 7

    const-string v0, "Content uri can not be null"

    .line 92
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ContentResolver can not be null"

    .line 93
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 95
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "_size"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object v1, p2

    move-object v2, p1

    .line 99
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 101
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_display_name"

    .line 107
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_size"

    .line 108
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 110
    new-instance v4, Lnet/usikkert/kouchat/net/FileToSend;

    new-instance v5, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;

    invoke-direct {v5, p1, p2}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils$UriInputStreamOpener;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    invoke-direct {v4, v5, v0, v2, v3}, Lnet/usikkert/kouchat/net/FileToSend;-><init>(Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_4
    throw p1
.end method

.method getFileFromFileUri(Landroid/net/Uri;)Lnet/usikkert/kouchat/net/FileToSend;
    .locals 1

    const-string v0, "File uri can not be null"

    .line 130
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1


    const-string v9, "133e41248af44ae39b5263dfc45e14f4"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V


    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    new-instance p1, Lnet/usikkert/kouchat/net/FileToSend;

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/net/FileToSend;-><init>(Ljava/io/File;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lnet/usikkert/kouchat/net/FileToSend;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0, p1, p2}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;->getFileFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;->getFileFromFileUri(Landroid/net/Uri;)Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method
