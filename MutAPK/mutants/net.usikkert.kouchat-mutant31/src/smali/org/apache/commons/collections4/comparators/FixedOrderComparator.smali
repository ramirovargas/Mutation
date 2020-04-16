.class public Lorg/apache/commons/collections4/comparators/FixedOrderComparator;
.super Ljava/lang/Object;
.source "FixedOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1262551aae85061L


# instance fields
.field private counter:I

.field private isLocked:Z

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez p1, :cond_0

    .line 114
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez p1, :cond_0

    .line 95
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_0
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 98
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    iget v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 205
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not known to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 207
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected checkLocked()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify a FixedOrderComparator after a comparison"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 230
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 233
    :cond_1
    :goto_0
    sget-object v3, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$1;->$SwitchMap$org$apache$commons$collections4$comparators$FixedOrderComparator$UnknownObjectBehavior:[I

    iget-object v4, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v4}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 243
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown unknownObjectBehavior: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    .line 240
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to compare unknown object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    if-nez v1, :cond_3

    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :cond_4
    :goto_2
    return v0

    :pswitch_2
    if-nez v1, :cond_6

    if-nez v2, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    :cond_6
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 287
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    check-cast p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;

    .line 289
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    iget-object v3, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez v2, :cond_3

    iget-object p1, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iget-object v3, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    iget v3, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    iget-boolean v3, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iget-object p1, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-ne v2, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    return v1
.end method

.method public getUnknownObjectBehavior()Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 260
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x275

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x25

    .line 261
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x25

    .line 262
    iget v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x25

    .line 263
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    return v2
.end method

.method public isLocked()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    return v0
.end method

.method public setUnknownObjectBehavior(Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    if-nez p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Unknown object behavior must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-void
.end method
