.class public Lnet/usikkert/kouchat/jmx/NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkInformation.java"

# interfaces
.implements Lnet/usikkert/kouchat/jmx/NetworkInformationMBean;


# instance fields
.field private final connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

.field private final errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

.field private final networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/net/ConnectionWorker;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-direct {v0}, Lnet/usikkert/kouchat/net/NetworkUtils;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    const-string v0, "Connection worker can not be null"

    .line 61
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 62
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 63
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    .line 66
    iput-object p2, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 67
    iput-object p3, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 161
    iget-object v0, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->start()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 153
    iget-object v0, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->stop()V

    return-void
.end method

.method public getBeanName()Ljava/lang/String;
    .locals 1

    const-string v0, "Network"

    return-object v0
.end method

.method public showAllNetworks()[Ljava/lang/String;
    .locals 4

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v1, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 137
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No network interfaces detected."

    aput-object v2, v0, v1

    return-object v0

    .line 140
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 142
    iget-object v3, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v3, v2}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public showCurrentNetwork()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->connectionWorker:Lnet/usikkert/kouchat/net/ConnectionWorker;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/ConnectionWorker;->getCurrentNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No current network interface."

    return-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showOperatingSystemNetwork()Ljava/lang/String;
    .locals 3

    .line 89
    new-instance v0, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;

    iget-object v1, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->settings:Lnet/usikkert/kouchat/settings/Settings;

    iget-object v2, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;-><init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    .line 90
    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/OperatingSystemNetworkInfo;->getOperatingSystemNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No network interface detected."

    return-object v0

    .line 95
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showUsableNetworks()[Ljava/lang/String;
    .locals 6

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v1, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 109
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "No network interfaces detected."

    aput-object v1, v0, v2

    return-object v0

    .line 112
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 115
    iget-object v5, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v5, v4}, Lnet/usikkert/kouchat/net/NetworkUtils;->isUsable(Ljava/net/NetworkInterface;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lnet/usikkert/kouchat/jmx/NetworkInformation;->networkUtils:Lnet/usikkert/kouchat/net/NetworkUtils;

    invoke-virtual {v5, v4}, Lnet/usikkert/kouchat/net/NetworkUtils;->getNetworkInterfaceInfo(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 121
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "No usable network interfaces detected."

    aput-object v1, v0, v2

    return-object v0

    .line 124
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
