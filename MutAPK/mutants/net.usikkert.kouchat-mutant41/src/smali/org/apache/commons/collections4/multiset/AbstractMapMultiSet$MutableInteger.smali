.class public Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
.super Ljava/lang/Object;
.source "AbstractMapMultiSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MutableInteger"
.end annotation


# instance fields
.field protected value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 291
    instance-of v0, p1, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 294
    :cond_0
    check-cast p1, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    iget p1, p1, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 299
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    return v0
.end method
