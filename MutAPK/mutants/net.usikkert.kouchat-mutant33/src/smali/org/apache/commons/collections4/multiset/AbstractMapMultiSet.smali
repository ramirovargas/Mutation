.class public abstract Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.super Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.source "AbstractMapMultiSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MapBasedMultiSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    return p0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I
    .locals 2

    .line 41
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-gez p2, :cond_0

    .line 220
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Occurrences must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    if-eqz v0, :cond_1

    .line 224
    iget v1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_3

    .line 227
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    .line 228
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    invoke-direct {v2, p2}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    :cond_2
    iget p1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    add-int/2addr p1, p2

    iput p1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    :cond_3
    :goto_1
    return v1
.end method

.method public clear()V
    .locals 1

    .line 244
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    .line 245
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 316
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V

    return-object v0
.end method

.method protected createUniqueSetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 306
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 465
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 469
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 470
    iget-object v4, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    new-instance v5, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    invoke-direct {v5, v3}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;-><init>(I)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 449
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    iget v1, v1, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 539
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/MultiSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 542
    :cond_1
    check-cast p1, Lorg/apache/commons/collections4/MultiSet;

    .line 543
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 546
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 547
    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    if-eqz p1, :cond_0

    .line 121
    iget p1, p1, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 557
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 558
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 559
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 560
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    iget v3, v3, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MapBasedMultiSetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MapBasedMultiSetIterator;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 3

    if-gez p2, :cond_0

    .line 252
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Occurrences must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 259
    :cond_1
    iget v1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    if-lez p2, :cond_3

    .line 261
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    .line 262
    iget v2, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    if-ge p2, v2, :cond_2

    .line 263
    iget p1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    .line 264
    iget p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    goto :goto_0

    .line 266
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    iget p2, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    :cond_3
    :goto_0
    return v1
.end method

.method protected setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    return-void
.end method

.method public size()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 483
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 485
    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 487
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 488
    iget v3, v3, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 489
    aput-object v4, v0, v2

    add-int/lit8 v3, v3, -0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size()I

    move-result v0

    .line 510
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 512
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 519
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 520
    iget v2, v2, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 524
    aput-object v3, p1, v0

    add-int/lit8 v2, v2, -0x1

    move v0, v4

    goto :goto_0

    .line 527
    :cond_2
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 528
    aput-object v2, p1, v0

    move v0, v1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method protected uniqueElements()I
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
