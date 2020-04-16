.class public Lnet/usikkert/kouchat/net/SimpleReceiverListener;
.super Ljava/lang/Object;
.source "SimpleReceiverListener.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/ReceiverListener;


# instance fields
.field private final expectedMessage:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->expectedMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->message:Ljava/lang/String;

    return-object v0
.end method

.method public messageArrived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->expectedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->expectedMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iput-object p1, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->message:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->ipAddress:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->message:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lnet/usikkert/kouchat/net/SimpleReceiverListener;->ipAddress:Ljava/lang/String;

    return-void
.end method
