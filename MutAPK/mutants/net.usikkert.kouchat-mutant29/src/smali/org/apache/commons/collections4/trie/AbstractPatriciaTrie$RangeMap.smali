.class abstract Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;
.super Ljava/util/AbstractMap;
.source "AbstractPatriciaTrie.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RangeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V
    .locals 0

    .line 1659
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V
    .locals 0

    .line 1659
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1696
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1700
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method protected abstract createRangeMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1732
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->entrySet:Ljava/util/Set;

    .line 1734
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1718
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getFromKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method protected abstract getToKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1750
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToKey is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1753
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getFromKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isFromInclusive()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isToInclusive()Z

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->createRangeMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method protected inFromRange(Ljava/lang/Object;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 1787
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getFromKey()Ljava/lang/Object;

    move-result-object v0

    .line 1788
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isFromInclusive()Z

    move-result v1

    .line 1790
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    if-ltz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method protected inRange(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1767
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getFromKey()Ljava/lang/Object;

    move-result-object v0

    .line 1768
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getToKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inFromRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inToRange(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method protected inRange2(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1777
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getFromKey()Ljava/lang/Object;

    move-result-object v0

    .line 1778
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getToKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1780
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inFromRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inToRange(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method protected inToRange(Ljava/lang/Object;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 1801
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getToKey()Ljava/lang/Object;

    move-result-object v0

    .line 1802
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isToInclusive()Z

    move-result v1

    .line 1804
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    if-gtz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method protected abstract isFromInclusive()Z
.end method

.method protected abstract isToInclusive()Z
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1723
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1726
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1705
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1709
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1738
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FromKey is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1742
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1743
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToKey is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1746
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isFromInclusive()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isToInclusive()Z

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->createRangeMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1757
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromKey is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1760
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isFromInclusive()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getToKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->isToInclusive()Z

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->createRangeMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
