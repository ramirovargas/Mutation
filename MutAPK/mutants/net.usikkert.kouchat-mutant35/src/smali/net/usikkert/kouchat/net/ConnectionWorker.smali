.class public Lnet/usikkert/kouchat/net/ConnectionWorker;
.super Ljava/lang/Object;
.source "ConnectionWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final SLEEP_DOWN:I = 0x3a98

.field private static final SLEEP_UP:I = 0xea60


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/event/NetworkConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private networkInterface:Ljava/net/NetworkInterface;

.field private networkUp:Z

.field private final networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

.field private final osNetworkInfo:Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;

.field private run:Z

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;

.field private worker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-direct {v0}, Lnet/usikkert/kouchat/net/NetworkUtils;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    const-string v0, "Settings can not be null"

    .line 86
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 87
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->listeners:Ljava/util/List;

    .line 92
    new-instance v0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;

    invoke-direct {v0, p1, p2}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;-><init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->osNetworkInfo:Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;

    return-void
.end method

.method private isNewNetworkInterface(Ljava/net/NetworkInterface;)Z
    .locals 2

    .line 196
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0, p1, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->sameNetworkInterface(Ljava/net/NetworkInterface;Ljava/net/NetworkInterface;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private declared-synchronized notifyBeforeNetworkUp()V
    .locals 2

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/NetworkConnectionListener;

    .line 204
    invoke-interface {v1}, Lnet/usikkert/kouchat/event/NetworkConnectionListener;->beforeNetworkCameUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 202
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyNetworkDown(Z)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 229
    :try_start_0
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUp:Z

    .line 231
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/NetworkConnectionListener;

    .line 232
    invoke-interface {v1, p1}, Lnet/usikkert/kouchat/event/NetworkConnectionListener;->networkWentDown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 228
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized notifyNetworkUp(Z)V
    .locals 2

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->notifyBeforeNetworkUp()V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUp:Z

    .line 218
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/NetworkConnectionListener;

    .line 219
    invoke-interface {v1, p1}, Lnet/usikkert/kouchat/event/NetworkConnectionListener;->networkCameUp(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 213
    monitor-exit p0

    throw p1
.end method

.method private selectNetworkInterface()Ljava/net/NetworkInterface;
    .locals 6

    .line 283
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/NetworkUtils;->findFirstUsableNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "No usable network interface detected."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    iget-object v2, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 291
    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->getNetworkInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v2, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->isUsable(Ljava/net/NetworkInterface;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    sget-object v0, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using saved network interface: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    .line 295
    invoke-virtual {v4, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 299
    :cond_1
    sget-object v2, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved network interface \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v5}, Lnet/usikkert/kouchat/settings/Settings;->getNetworkInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is invalid: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    .line 300
    invoke-virtual {v5, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->osNetworkInfo:Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->getOperatingSystemNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v2, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->isUsable(Ljava/net/NetworkInterface;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    sget-object v0, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using operating system\'s choice of network interface: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    .line 306
    invoke-virtual {v4, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 310
    :cond_2
    sget-object v2, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The operating system suggested the following invalid network interface: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    .line 311
    invoke-virtual {v4, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 312
    sget-object v1, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding operating system\'s choice of network interface with: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    .line 313
    invoke-virtual {v4, v0}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized updateNetwork()Z
    .locals 8

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->selectNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkUtils;->isUsable(Ljava/net/NetworkInterface;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 152
    sget-object v0, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Network is down"

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUp:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/net/ConnectionWorker;->notifyNetworkDown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    monitor-exit p0

    return v2

    .line 162
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->isNewNetworkInterface(Ljava/net/NetworkInterface;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    if-nez v1, :cond_2

    const-string v1, "[null]"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    sget-object v4, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changing network from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 165
    iput-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    .line 167
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUp:Z

    if-eqz v0, :cond_3

    .line 168
    invoke-direct {p0, v3}, Lnet/usikkert/kouchat/net/ConnectionWorker;->notifyNetworkDown(Z)V

    .line 169
    invoke-direct {p0, v3}, Lnet/usikkert/kouchat/net/ConnectionWorker;->notifyNetworkUp(Z)V

    goto :goto_1

    .line 173
    :cond_3
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/net/ConnectionWorker;->notifyNetworkUp(Z)V

    goto :goto_1

    .line 178
    :cond_4
    iget-boolean v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUp:Z

    if-nez v1, :cond_5

    .line 179
    sget-object v1, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is up again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 180
    iput-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    .line 181
    invoke-direct {p0, v2}, Lnet/usikkert/kouchat/net/ConnectionWorker;->notifyNetworkUp(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_5
    :goto_1
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    .line 147
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkNetwork()V
    .locals 1

    .line 136
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public getCurrentNetworkInterface()Ljava/net/NetworkInterface;
    .locals 2

    .line 324
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    iget-object v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    .line 325
    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->getUpdatedNetworkInterface(Ljava/net/NetworkInterface;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 331
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 349
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isNetworkUp()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUp:Z

    return v0
.end method

.method public registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 100
    sget-object v0, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Network is starting"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 102
    :goto_0
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->run:Z

    if-eqz v0, :cond_2

    .line 103
    invoke-direct {p0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->updateNetwork()Z

    move-result v0

    .line 105
    iget-boolean v1, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->run:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    const-wide/32 v0, 0xea60

    .line 111
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x3a98

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :goto_1
    sget-object v1, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    :goto_2
    sget-object v0, Lnet/usikkert/kouchat/net/ConnectionWorker;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Network is stopping"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkUp:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->notifyNetworkDown(Z)V

    :cond_3
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->networkInterface:Ljava/net/NetworkInterface;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->run:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->run:Z

    .line 251
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ConnectionWorker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    .line 252
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 248
    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->run:Z

    .line 262
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lnet/usikkert/kouchat/net/ConnectionWorker;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
