.class public Lnet/usikkert/kouchat/misc/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/event/ErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/ErrorHandler;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addErrorListener(Lnet/usikkert/kouchat/event/ErrorListener;)V
    .locals 1

    const-string v0, "Error listener can not be null"

    .line 75
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ErrorHandler;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeErrorListener(Lnet/usikkert/kouchat/event/ErrorListener;)V
    .locals 1

    const-string v0, "Error listener can not be null"

    .line 86
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ErrorHandler;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public showCriticalError(Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ErrorHandler;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/ErrorListener;

    .line 65
    invoke-interface {v1, p1}, Lnet/usikkert/kouchat/event/ErrorListener;->criticalErrorReported(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/ErrorHandler;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/ErrorListener;

    .line 54
    invoke-interface {v1, p1}, Lnet/usikkert/kouchat/event/ErrorListener;->errorReported(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
