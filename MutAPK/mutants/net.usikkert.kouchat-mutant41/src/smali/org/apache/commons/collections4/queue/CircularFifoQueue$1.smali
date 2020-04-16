.class Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;
.super Ljava/lang/Object;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/queue/CircularFifoQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field final synthetic this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iget-object p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->index:I

    const/4 p1, -0x1

    .line 364
    iput p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 365
    iget-object p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$100(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 368
    iget-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->isFirst:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v1

    if-eq v0, v1, :cond_0

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

    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->isFirst:Z

    .line 376
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 377
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$300(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->index:I

    .line 378
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 7

    .line 382
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 387
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 388
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 389
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    return-void

    .line 393
    :cond_1
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 394
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 396
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    iget-object v6, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v6}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v2, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 399
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 400
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$500(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 401
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v3

    iget-object v5, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v5}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v2, v3

    .line 405
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$300(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    goto :goto_0

    .line 410
    :cond_4
    :goto_1
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 411
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$202(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    .line 412
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 413
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0, v4}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$102(Lorg/apache/commons/collections4/queue/CircularFifoQueue;Z)Z

    .line 414
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->this$0:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->index:I

    return-void
.end method
