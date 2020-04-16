.class Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bag/AbstractMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BagIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemCount:I

.field private final mods:I

.field private final parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bag/AbstractMapBag<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bag/AbstractMapBag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag<",
            "TE;>;)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    .line 195
    invoke-static {p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$000(Lorg/apache/commons/collections4/bag/AbstractMapBag;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    .line 197
    invoke-static {p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->mods:I

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 204
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->mods:I

    if-eq v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 213
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    .line 215
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    iget v0, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    :cond_1
    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    .line 218
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    .line 219
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 225
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->mods:I

    if-eq v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 228
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 232
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 233
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 237
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$210(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    return-void
.end method
