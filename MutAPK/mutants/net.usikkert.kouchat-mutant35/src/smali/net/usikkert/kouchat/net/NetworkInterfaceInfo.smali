.class public Lnet/usikkert/kouchat/net/NetworkInterfaceInfo;
.super Ljava/lang/Object;
.source "NetworkInterfaceInfo.java"


# instance fields
.field private final networkInterface:Ljava/net/NetworkInterface;


# direct methods
.method public constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Network interface to wrap can not be null"

    .line 39
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lnet/usikkert/kouchat/net/NetworkInterfaceInfo;->networkInterface:Ljava/net/NetworkInterface;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkInterfaceInfo;->networkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkInterfaceInfo;->networkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 1

    .line 71
    iget-object v0, p0, Lnet/usikkert/kouchat/net/NetworkInterfaceInfo;->networkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method
