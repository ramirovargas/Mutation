.class public abstract Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractUntypedIteratorDecorator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TI;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TI;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
