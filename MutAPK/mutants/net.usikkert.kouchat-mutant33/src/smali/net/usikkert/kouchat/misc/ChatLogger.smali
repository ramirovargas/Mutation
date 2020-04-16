.class public Lnet/usikkert/kouchat/misc/ChatLogger;
.super Ljava/lang/Object;
.source "ChatLogger.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/SettingsListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final LOG_FILE_POSTFIX:Ljava/lang/String;


# instance fields
.field private final errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

.field private logFileName:Ljava/lang/String;

.field private final logFilePrefix:Ljava/lang/String;

.field private open:Z

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "yyyy.MM.dd-HH.mm.ss-SSS"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lnet/usikkert/kouchat/util/Tools;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG_FILE_POSTFIX:Ljava/lang/String;

    .line 53
    const-class v0, Lnet/usikkert/kouchat/misc/ChatLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Log file prefix can not be empty"

    .line 83
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 84
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 85
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->logFilePrefix:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 89
    iput-object p3, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    .line 91
    invoke-virtual {p2, p0}, Lnet/usikkert/kouchat/settings/Settings;->addSettingsListener(Lnet/usikkert/kouchat/event/SettingsListener;)V

    .line 93
    invoke-virtual {p2}, Lnet/usikkert/kouchat/settings/Settings;->isLogging()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/ChatLogger;->open()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    const-string v0, "kouchat"

    .line 70
    invoke-direct {p0, v0, p1, p2}, Lnet/usikkert/kouchat/misc/ChatLogger;-><init>(Ljava/lang/String;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3

    .line 159
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->open:Z

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 162
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 163
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    sget-object v0, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/ChatLogger;->close()V

    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 135
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->open:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 138
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 140
    sget-object v1, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped logging to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->logFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 144
    :try_start_1
    sget-object v2, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_0
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->open:Z

    goto :goto_2

    :goto_1
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->open:Z

    .line 149
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->open:Z

    return v0
.end method

.method public open()V
    .locals 5

    .line 103
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/ChatLogger;->close()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/Settings;->getLogLocation()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    sget-object v2, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating missing log directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create path for logging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->logFilePrefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG_FILE_POSTFIX:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->logFileName:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->logFileName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->writer:Ljava/io/BufferedWriter;

    .line 119
    iput-boolean v3, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->open:Z

    .line 121
    sget-object v0, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->logFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->settings:Lnet/usikkert/kouchat/settings/Settings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/usikkert/kouchat/settings/Settings;->setLogging(Z)V

    .line 127
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not initialize the logging:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/misc/ErrorHandler;->showError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public settingChanged(Lnet/usikkert/kouchat/settings/Setting;)V
    .locals 1

    .line 189
    sget-object v0, Lnet/usikkert/kouchat/settings/Setting;->LOGGING:Lnet/usikkert/kouchat/settings/Setting;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/settings/Setting;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    sget-object p1, Lnet/usikkert/kouchat/misc/ChatLogger;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Handling change in log setting"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/ChatLogger;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/settings/Settings;->isLogging()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/ChatLogger;->isOpen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/ChatLogger;->open()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/ChatLogger;->close()V

    :cond_1
    :goto_0
    return-void
.end method
