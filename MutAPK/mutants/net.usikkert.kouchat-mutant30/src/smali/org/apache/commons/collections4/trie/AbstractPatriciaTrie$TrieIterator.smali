.class abstract Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;
.super Ljava/lang/Object;
.source "AbstractPatriciaTrie.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TrieIterator"
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
.field protected current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V
    .locals 1

    .line 1534
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1526
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->expectedModCount:I

    const/4 v0, 0x0

    .line 1535
    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1541
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1526
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->expectedModCount:I

    .line 1542
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-void
.end method


# virtual methods
.method protected findNext(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1567
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 1

    .line 1571
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1549
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    if-eq v0, v1, :cond_0

    .line 1550
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1553
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_1

    .line 1555
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1558
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->findNext(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1559
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1575
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_0

    .line 1576
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1579
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    if-eq v0, v1, :cond_1

    .line 1580
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1583
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    .line 1584
    iput-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1585
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 1587
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->expectedModCount:I

    return-void
.end method
