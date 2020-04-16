.class public Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "AbstractMapMultiSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UniqueSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected canRemove:Z

.field protected lastElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 340
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x0

    .line 329
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->lastElement:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->canRemove:Z

    .line 341
    iput-object p2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->parent:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 346
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->lastElement:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->canRemove:Z

    .line 348
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->lastElement:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 353
    iget-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->parent:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->lastElement:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 357
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 358
    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->parent:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->lastElement:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->remove(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->lastElement:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;->canRemove:Z

    return-void
.end method
