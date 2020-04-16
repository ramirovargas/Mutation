.class public Lnet/usikkert/kouchat/jmx/JMXBeanLoader;
.super Ljava/lang/Object;
.source "JMXBeanLoader.java"


# instance fields
.field private final jmxBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/jmx/JMXBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/net/ConnectionWorker;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Controller can not be null"

    .line 61
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ConnectionWorker can not be null"

    .line 62
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 63
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 64
    invoke-static {p4, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 66
    new-array v0, v0, [Lnet/usikkert/kouchat/jmx/JMXBean;

    new-instance v1, Lnet/usikkert/kouchat/jmx/NetworkInformation;

    invoke-direct {v1, p2, p3, p4}, Lnet/usikkert/kouchat/jmx/NetworkInformation;-><init>(Lnet/usikkert/kouchat/net/ConnectionWorker;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    const/4 p2, 0x0

    aput-object v1, v0, p2

    new-instance p2, Lnet/usikkert/kouchat/jmx/ControllerInformation;

    invoke-direct {p2, p1}, Lnet/usikkert/kouchat/jmx/ControllerInformation;-><init>(Lnet/usikkert/kouchat/misc/Controller;)V

    const/4 p1, 0x1

    aput-object p2, v0, p1

    new-instance p1, Lnet/usikkert/kouchat/jmx/GeneralInformation;

    invoke-direct {p1, p3}, Lnet/usikkert/kouchat/jmx/GeneralInformation;-><init>(Lnet/usikkert/kouchat/settings/Settings;)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/jmx/JMXBeanLoader;->jmxBeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getJMXBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/jmx/JMXBean;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lnet/usikkert/kouchat/jmx/JMXBeanLoader;->jmxBeans:Ljava/util/List;

    return-object v0
.end method
