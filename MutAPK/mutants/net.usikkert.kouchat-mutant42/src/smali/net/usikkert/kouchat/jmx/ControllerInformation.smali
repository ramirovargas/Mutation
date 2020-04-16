.class public Lnet/usikkert/kouchat/jmx/ControllerInformation;
.super Ljava/lang/Object;
.source "ControllerInformation.java"

# interfaces
.implements Lnet/usikkert/kouchat/jmx/ControllerInformationMBean;


# instance fields
.field private final controller:Lnet/usikkert/kouchat/misc/Controller;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/misc/Controller;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Controller can not be null"

    .line 44
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lnet/usikkert/kouchat/jmx/ControllerInformation;->controller:Lnet/usikkert/kouchat/misc/Controller;

    return-void
.end method


# virtual methods
.method public getBeanName()Ljava/lang/String;
    .locals 1

    const-string v0, "Controller"

    return-object v0
.end method

.method public logOff()V
    .locals 2

    .line 61
    iget-object v0, p0, Lnet/usikkert/kouchat/jmx/ControllerInformation;->controller:Lnet/usikkert/kouchat/misc/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->logOff(Z)V

    return-void
.end method

.method public logOn()V
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/usikkert/kouchat/jmx/ControllerInformation;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->logOn()V

    return-void
.end method
