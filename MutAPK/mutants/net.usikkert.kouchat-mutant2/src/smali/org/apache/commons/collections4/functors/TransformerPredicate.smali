.class public final Lorg/apache/commons/collections4/functors/TransformerPredicate;
.super Ljava/lang/Object;
.source "TransformerPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections4/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x216ad0af7d27feb5L


# instance fields
.field private final iTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public static transformerPredicate(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 49
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The transformer to call must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/TransformerPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/TransformerPredicate;-><init>(Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Lorg/apache/commons/collections4/FunctorException;

    const-string v0, "Transformer must return an instanceof Boolean, it was a null object"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method
