.class public Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;
.super Ljava/lang/Object;
.source "PassiveExpiringMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/PassiveExpiringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstantTimeToLiveExpirationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final timeToLiveMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 91
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 124
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->access$000(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    return-void
.end method


# virtual methods
.method public expirationTime(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .line 138
    iget-wide p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 p1, -0x1

    if-ltz v2, :cond_1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    .line 141
    iget-wide v4, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    sub-long v6, v2, v4

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    return-wide p1

    .line 148
    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    add-long v2, v0, p1

    return-wide v2

    :cond_1
    return-wide p1
.end method
