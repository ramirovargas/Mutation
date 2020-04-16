.class public interface abstract Lnet/usikkert/kouchat/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final APP_COPYRIGHT_YEARS:Ljava/lang/String; = "2006-2018"

.field public static final APP_FOLDER:Ljava/lang/String;

.field public static final APP_LICENSE_NAME:Ljava/lang/String; = "GNU LGPL v3"

.field public static final APP_LOG_FOLDER:Ljava/lang/String;

.field public static final APP_NAME:Ljava/lang/String; = "KouChat"

.field public static final APP_VERSION:Ljava/lang/String; = "1.1.1"

.field public static final APP_WEB:Ljava/lang/String; = "https://www.kouchat.net/"

.field public static final AUTHOR_MAIL:Ljava/lang/String; = "contact@kouchat.net"

.field public static final AUTHOR_NAME:Ljava/lang/String; = "Christian Ihle"

.field public static final FILE_FAQ:Ljava/lang/String; = "FAQ"

.field public static final FILE_LICENSE:Ljava/lang/String; = "COPYING"

.field public static final FILE_TIPS:Ljava/lang/String; = "TipsAndTricks.txt"

.field public static final MESSAGE_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final MESSAGE_MAX_BYTES:I = 0x1c2

.field public static final NETWORK_CHAT_PORT:I = 0x9e6c

.field public static final NETWORK_FILE_TRANSFER_PORT:I = 0x9f34

.field public static final NETWORK_IP:Ljava/lang/String; = "224.168.5.200"

.field public static final NETWORK_PACKET_SIZE:I = 0x200

.field public static final NETWORK_PRIVCHAT_PORT:I = 0x9ed0

.field public static final NETWORK_TEMP_IP:Ljava/lang/String; = "224.168.5.250"

.field public static final NETWORK_TEMP_PORT:I = 0xc382


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file.separator"

    .line 126
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KouChat"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file.separator"

    .line 127
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/Constants;->APP_FOLDER:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/usikkert/kouchat/Constants;->APP_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/Constants;->APP_LOG_FOLDER:Ljava/lang/String;

    return-void
.end method
