.class final Lorg/apache/commons/collections4/IterableUtils$4;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->collatedIterable(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/FluentIterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$a:Ljava/lang/Iterable;

.field final synthetic val$b:Ljava/lang/Iterable;

.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$4;->val$comparator:Ljava/util/Comparator;

    iput-object p2, p0, Lorg/apache/commons/collections4/IterableUtils$4;->val$a:Ljava/lang/Iterable;

    iput-object p3, p0, Lorg/apache/commons/collections4/IterableUtils$4;->val$b:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$4;->val$comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$4;->val$a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/IterableUtils$4;->val$b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/IteratorUtils;->collatedIterator(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
