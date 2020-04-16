.class public Lnet/usikkert/kouchat/util/ByteCounter;
.super Ljava/lang/Object;
.source "ByteCounter.java"


# static fields
.field private static final ONE_SECOND:I = 0x3e8


# instance fields
.field private bytesCounted:J

.field private bytesPerSec:J

.field private previousTime:J

.field private timeCounted:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateFirstSecond(JJ)V
    .locals 14

    move-object v7, p0

    .line 147
    iget-wide v0, v7, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    sub-long v5, v0, p3

    .line 148
    iget-wide v0, v7, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    sub-long v8, v0, p1

    const-wide/16 v10, 0x3e8

    sub-long v12, v10, v5

    move-object v0, v7

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide v5, v12

    .line 150
    invoke-direct/range {v0 .. v6}, Lnet/usikkert/kouchat/util/ByteCounter;->getBytesAddedInTimeLeft(JJJ)J

    move-result-wide v0

    add-long v2, v8, v0

    .line 152
    iput-wide v2, v7, Lnet/usikkert/kouchat/util/ByteCounter;->bytesPerSec:J

    .line 153
    iget-wide v0, v7, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    rem-long/2addr v0, v10

    iput-wide v0, v7, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    .line 154
    iget-wide v0, v7, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    iget-wide v2, v7, Lnet/usikkert/kouchat/util/ByteCounter;->bytesPerSec:J

    sub-long v4, v0, v2

    iput-wide v4, v7, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    return-void
.end method

.method private calculateOnlyTimeSpent(JJ)V
    .locals 7

    const-wide/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 126
    invoke-direct/range {v0 .. v6}, Lnet/usikkert/kouchat/util/ByteCounter;->getBytesAddedInTimeLeft(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesPerSec:J

    const-wide/16 p1, 0x0

    .line 127
    iput-wide p1, p0, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    .line 128
    iput-wide p1, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    return-void
.end method

.method private getBytesAddedInTimeLeft(JJJ)J
    .locals 0

    long-to-double p5, p5

    long-to-double p3, p3

    .line 168
    invoke-static {p5, p6, p3, p4}, Lnet/usikkert/kouchat/util/Tools;->percent(DD)D

    move-result-wide p3

    long-to-double p1, p1

    .line 169
    invoke-static {p3, p4, p1, p2}, Lnet/usikkert/kouchat/util/Tools;->percentOf(DD)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1
.end method


# virtual methods
.method public addBytes(J)V
    .locals 2

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    invoke-virtual {p0, v0, v1}, Lnet/usikkert/kouchat/util/ByteCounter;->updateTimeSpent(J)J

    move-result-wide v0

    .line 78
    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/usikkert/kouchat/util/ByteCounter;->updateCounters(JJ)V

    return-void
.end method

.method public getBytesCounted()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    return-wide v0
.end method

.method public getBytesPerSec()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesPerSec:J

    return-wide v0
.end method

.method public getTimeCounted()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    return-wide v0
.end method

.method public prepare()V
    .locals 2

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->previousTime:J

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    .line 63
    iput-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesPerSec:J

    .line 64
    iput-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    return-void
.end method

.method protected updateCounters(JJ)V
    .locals 5

    .line 102
    iget-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    add-long v2, v0, p3

    iput-wide v2, p0, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    .line 103
    iget-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lnet/usikkert/kouchat/util/ByteCounter;->bytesCounted:J

    .line 105
    iget-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->timeCounted:J

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/usikkert/kouchat/util/ByteCounter;->calculateOnlyTimeSpent(JJ)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/usikkert/kouchat/util/ByteCounter;->calculateFirstSecond(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTimeSpent(J)J
    .locals 4

    .line 89
    iget-wide v0, p0, Lnet/usikkert/kouchat/util/ByteCounter;->previousTime:J

    sub-long v2, p1, v0

    .line 90
    iput-wide p1, p0, Lnet/usikkert/kouchat/util/ByteCounter;->previousTime:J

    return-wide v2
.end method
