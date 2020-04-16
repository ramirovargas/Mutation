.class public Lnet/usikkert/kouchat/util/LogInitializer;
.super Ljava/lang/Object;
.source "LogInitializer.java"


# static fields
.field private static final MAIN_PACKAGE:Ljava/lang/String; = "net.usikkert.kouchat"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Lnet/usikkert/kouchat/util/LogInitializer;->initHandlers()V

    .line 50
    invoke-virtual {p0}, Lnet/usikkert/kouchat/util/LogInitializer;->initParentLoggers()V

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lnet/usikkert/kouchat/util/LogInitializer;->activateDebug()V

    :cond_0
    return-void
.end method


# virtual methods
.method public activateDebug()V
    .locals 2

    const-string v0, "net.usikkert.kouchat"

    .line 96
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 97
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method public initHandlers()V
    .locals 5

    const-string v0, ""

    .line 82
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 84
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    instance-of v4, v3, Ljava/util/logging/ConsoleHandler;

    if-eqz v4, :cond_0

    .line 86
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v0}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public initParentLoggers()V
    .locals 1

    const-string v0, "net.usikkert.kouchat"

    .line 62
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v0, "net.usikkert.kouchat.misc"

    .line 63
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v0, "net.usikkert.kouchat.net"

    .line 64
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v0, "net.usikkert.kouchat.ui"

    .line 65
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v0, "net.usikkert.kouchat.ui.console"

    .line 66
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v0, "net.usikkert.kouchat.ui.swing"

    .line 67
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v0, "net.usikkert.kouchat.util"

    .line 68
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method
