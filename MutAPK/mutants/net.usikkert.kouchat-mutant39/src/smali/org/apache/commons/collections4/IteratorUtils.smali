.class public Lorg/apache/commons/collections4/IteratorUtils;
.super Ljava/lang/Object;
.source "IteratorUtils.java"


# static fields
.field private static final DEFAULT_TOSTRING_DELIMITER:Ljava/lang/String; = ", "

.field private static final DEFAULT_TOSTRING_PREFIX:Ljava/lang/String; = "["

.field private static final DEFAULT_TOSTRING_SUFFIX:Ljava/lang/String; = "]"

.field public static final EMPTY_ITERATOR:Lorg/apache/commons/collections4/ResettableIterator;

.field public static final EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections4/ResettableListIterator;

.field public static final EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections4/MapIterator;

.field public static final EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections4/OrderedIterator;

.field public static final EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections4/OrderedMapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections4/ResettableIterator;

    .line 89
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableListIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections4/ResettableListIterator;

    .line 95
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections4/OrderedIterator;

    .line 101
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections4/MapIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections4/MapIterator;

    .line 107
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedMapIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayIterator(Ljava/lang/Object;)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Lorg/apache/commons/collections4/iterators/ArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayIterator(Ljava/lang/Object;I)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 289
    new-instance v0, Lorg/apache/commons/collections4/iterators/ArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayIterator(Ljava/lang/Object;II)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 324
    new-instance v0, Lorg/apache/commons/collections4/iterators/ArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs arrayIterator([Ljava/lang/Object;)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 239
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;I)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;I)",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;II)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;II)",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;)Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 353
    new-instance v0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;I)Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 385
    new-instance v0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;II)Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 420
    new-instance v0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs arrayListIterator([Ljava/lang/Object;)Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 337
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;I)Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;I)",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 367
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;II)Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;II)",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 401
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Enumeration<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 993
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 995
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static asIterable(Ljava/util/Iterator;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1009
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1011
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/iterators/IteratorIterable;-><init>(Ljava/util/Iterator;Z)V

    return-object v0
.end method

.method public static asIterator(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 957
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Enumeration must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 959
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/EnumerationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static asIterator(Ljava/util/Enumeration;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "+TE;>;",
            "Ljava/util/Collection<",
            "-TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 975
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Enumeration must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 978
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Collection must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 980
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/iterators/EnumerationIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static asMultipleUseIterable(Ljava/util/Iterator;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1025
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1027
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorIterable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/iterators/IteratorIterable;-><init>(Ljava/util/Iterator;Z)V

    return-object v0
.end method

.method public static boundedIterator(Ljava/util/Iterator;J)Lorg/apache/commons/collections4/iterators/BoundedIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;J)",
            "Lorg/apache/commons/collections4/iterators/BoundedIterator<",
            "TE;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 438
    invoke-static {p0, v0, v1, p1, p2}, Lorg/apache/commons/collections4/IteratorUtils;->boundedIterator(Ljava/util/Iterator;JJ)Lorg/apache/commons/collections4/iterators/BoundedIterator;

    move-result-object p0

    return-object p0
.end method

.method public static boundedIterator(Ljava/util/Iterator;JJ)Lorg/apache/commons/collections4/iterators/BoundedIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;JJ)",
            "Lorg/apache/commons/collections4/iterators/BoundedIterator<",
            "TE;>;"
        }
    .end annotation

    .line 460
    new-instance v6, Lorg/apache/commons/collections4/iterators/BoundedIterator;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/iterators/BoundedIterator;-><init>(Ljava/util/Iterator;JJ)V

    return-object v6
.end method

.method public static chainedIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Iterator<",
            "+TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 550
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static chainedIterator(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 523
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static varargs chainedIterator([Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 536
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>([Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static collatedIterator(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "Ljava/util/Iterator<",
            "+TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 625
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 627
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static collatedIterator(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 576
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 578
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static varargs collatedIterator(Ljava/util/Comparator;[Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;[",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 600
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 602
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static contains(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1386
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->matchesAny(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static emptyIterator()Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 141
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->resettableEmptyIterator()Lorg/apache/commons/collections4/ResettableIterator;

    move-result-object v0

    return-object v0
.end method

.method public static emptyListIterator()Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 154
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyListIterator;->resettableEmptyListIterator()Lorg/apache/commons/collections4/ResettableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 181
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public static emptyOrderedIterator()Lorg/apache/commons/collections4/OrderedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/OrderedIterator<",
            "TE;>;"
        }
    .end annotation

    .line 167
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->emptyOrderedIterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object v0

    return-object v0
.end method

.method public static emptyOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->emptyOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public static filteredIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 735
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 738
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 740
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/iterators/FilterIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public static filteredListIterator(Ljava/util/ListIterator;Lorg/apache/commons/collections4/Predicate;)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 759
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ListIterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 762
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 764
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/iterators/FilterListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/FilterListIterator;-><init>(Ljava/util/ListIterator;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public static find(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1273
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p0, :cond_2

    .line 1277
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1278
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1279
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forEach(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1219
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Closure must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p0, :cond_1

    .line 1223
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1225
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static forEachButLast(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1244
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Closure must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p0, :cond_2

    .line 1247
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1248
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1249
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1250
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 1405
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->checkIndexBounds(I)V

    .line 1406
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1409
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1411
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1413
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1157
    invoke-static {}, Lorg/apache/commons/collections4/IteratorUtils;->emptyIterator()Lorg/apache/commons/collections4/ResettableIterator;

    move-result-object p0

    return-object p0

    .line 1159
    :cond_0
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 1160
    check-cast p0, Ljava/util/Iterator;

    return-object p0

    .line 1162
    :cond_1
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_2

    .line 1163
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 1165
    :cond_2
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1166
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 1168
    :cond_3
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_4

    .line 1169
    new-instance v0, Lorg/apache/commons/collections4/iterators/EnumerationIterator;

    check-cast p0, Ljava/util/Enumeration;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0

    .line 1171
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1172
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 1174
    :cond_5
    instance-of v0, p0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_6

    .line 1175
    new-instance v0, Lorg/apache/commons/collections4/iterators/NodeListIterator;

    check-cast p0, Lorg/w3c/dom/NodeList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/NodeListIterator;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object v0

    .line 1177
    :cond_6
    instance-of v0, p0, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_7

    .line 1178
    new-instance v0, Lorg/apache/commons/collections4/iterators/NodeListIterator;

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/NodeListIterator;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0

    .line 1180
    :cond_7
    instance-of v0, p0, Ljava/util/Dictionary;

    if-eqz v0, :cond_8

    .line 1181
    new-instance v0, Lorg/apache/commons/collections4/iterators/EnumerationIterator;

    check-cast p0, Ljava/util/Dictionary;

    invoke-virtual {p0}, Ljava/util/Dictionary;->elements()Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0

    .line 1182
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1183
    new-instance v0, Lorg/apache/commons/collections4/iterators/ArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1186
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "iterator"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1187
    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1188
    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_a

    return-object v0

    .line 1202
    :catch_0
    :cond_a
    invoke-static {p0}, Lorg/apache/commons/collections4/IteratorUtils;->singletonIterator(Ljava/lang/Object;)Lorg/apache/commons/collections4/ResettableIterator;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1302
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1306
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1307
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1308
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static isEmpty(Ljava/util/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1371
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static loopingIterator(Ljava/util/Collection;)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 783
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 785
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/LoopingIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/LoopingIterator;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static loopingListIterator(Ljava/util/List;)Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 802
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "List must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 804
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/LoopingListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/LoopingListIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static matchesAll(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1347
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p0, :cond_2

    .line 1351
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1353
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static matchesAny(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1329
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->indexOf(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nodeListIterator(Lorg/w3c/dom/Node;)Lorg/apache/commons/collections4/iterators/NodeListIterator;
    .locals 1

    if-nez p0, :cond_0

    .line 844
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Node must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 846
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/NodeListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/NodeListIterator;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public static nodeListIterator(Lorg/w3c/dom/NodeList;)Lorg/apache/commons/collections4/iterators/NodeListIterator;
    .locals 1

    if-nez p0, :cond_0

    .line 820
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "NodeList must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 822
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/NodeListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/NodeListIterator;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public static objectGraphIterator(Ljava/lang/Object;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 688
    new-instance v0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;-><init>(Ljava/lang/Object;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method public static peekingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 862
    invoke-static {p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->peekingIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/PeekingIterator;

    move-result-object p0

    return-object p0
.end method

.method public static pushbackIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 878
    invoke-static {p0}, Lorg/apache/commons/collections4/iterators/PushbackIterator;->pushbackIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/PushbackIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lorg/apache/commons/collections4/ResettableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lorg/apache/commons/collections4/ResettableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/apache/commons/collections4/iterators/SingletonIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/SingletonIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonListIterator(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 225
    new-instance v0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/SingletonListIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static size(Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1428
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static skippingIterator(Ljava/util/Iterator;J)Lorg/apache/commons/collections4/iterators/SkippingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;J)",
            "Lorg/apache/commons/collections4/iterators/SkippingIterator<",
            "TE;>;"
        }
    .end annotation

    .line 895
    new-instance v0, Lorg/apache/commons/collections4/iterators/SkippingIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/iterators/SkippingIterator;-><init>(Ljava/util/Iterator;J)V

    return-object v0
.end method

.method public static toArray(Ljava/util/Iterator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1060
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/16 v0, 0x64

    .line 1062
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object p0

    .line 1063
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1081
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 1084
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Array class must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v0, 0x64

    .line 1086
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object p0

    .line 1088
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 1089
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Ljava/util/Iterator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 1104
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1122
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 1125
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Estimated size must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1127
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1128
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toListIterator(Ljava/util/Iterator;)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1043
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1045
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1450
    invoke-static {}, Lorg/apache/commons/collections4/TransformerUtils;->stringValueTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "["

    const-string v3, "]"

    invoke-static {p0, v0, v1, v2, v3}, Lorg/apache/commons/collections4/IteratorUtils;->toString(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "["

    const-string v2, "]"

    .line 1472
    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/collections4/IteratorUtils;->toString(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1500
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "transformer may not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 1503
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "delimiter may not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p3, :cond_2

    .line 1506
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "prefix may not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez p4, :cond_3

    .line 1509
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "suffix may not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1511
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 1513
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1514
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1515
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1518
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_5

    .line 1519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1522
    :cond_5
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Iterator<",
            "TO;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 710
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 713
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Transformer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 715
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/iterators/TransformIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 475
    invoke-static {p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator<",
            "TE;>;)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 489
    invoke-static {p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->umodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 503
    invoke-static {p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object p0

    return-object p0
.end method

.method public static zippingIterator(Ljava/util/Iterator;Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/ZippingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/iterators/ZippingIterator<",
            "TE;>;"
        }
    .end annotation

    .line 912
    new-instance v0, Lorg/apache/commons/collections4/iterators/ZippingIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/iterators/ZippingIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static zippingIterator(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/ZippingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/iterators/ZippingIterator<",
            "TE;>;"
        }
    .end annotation

    .line 929
    new-instance v0, Lorg/apache/commons/collections4/iterators/ZippingIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ZippingIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static varargs zippingIterator([Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/ZippingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/iterators/ZippingIterator<",
            "TE;>;"
        }
    .end annotation

    .line 942
    new-instance v0, Lorg/apache/commons/collections4/iterators/ZippingIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/ZippingIterator;-><init>([Ljava/util/Iterator;)V

    return-object v0
.end method
