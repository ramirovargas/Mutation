.class public Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;
.super Lorg/apache/commons/collections4/collection/SynchronizedCollection;
.source "SynchronizedMultiSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet$SynchronizedSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/SynchronizedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/MultiSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337965L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/MultiSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/MultiSet;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public static synchronizedMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;-><init>(Lorg/apache/commons/collections4/MultiSet;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->add(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 80
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiSet;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 142
    new-instance v2, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet$SynchronizedSet;

    iget-object v3, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/MultiSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->remove(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->setCount(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    .line 134
    new-instance v2, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet$SynchronizedSet;

    iget-object v3, p0, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;->lock:Ljava/lang/Object;

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
