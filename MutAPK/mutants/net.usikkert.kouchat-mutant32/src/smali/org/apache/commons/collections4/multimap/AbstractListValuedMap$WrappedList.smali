.class Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;
.super Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;
.source "AbstractListValuedMap.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    .line 111
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->createCollection()Ljava/util/List;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->createCollection()Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->key:Ljava/lang/Object;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p1

    .line 140
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 199
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 203
    invoke-static {v0, p1}, Lorg/apache/commons/collections4/ListUtils;->isEqualList(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getMapping()Ljava/util/Collection;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMapping()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->hashCodeForList(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 152
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->key:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->key:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    :cond_0
    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
