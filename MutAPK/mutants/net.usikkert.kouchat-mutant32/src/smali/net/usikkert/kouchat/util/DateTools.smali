.class public Lnet/usikkert/kouchat/util/DateTools;
.super Ljava/lang/Object;
.source "DateTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentDateToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, p1}, Lnet/usikkert/kouchat/util/DateTools;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p1, p2}, Lnet/usikkert/kouchat/util/Tools;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public howLongFromNow(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/16 p1, 0x3e8

    .line 67
    div-long/2addr v2, p1

    const-wide/32 p1, 0x15180

    .line 73
    div-long p1, v2, p1

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const p2, 0x15180

    mul-int p2, p2, p1

    int-to-long v0, p2

    sub-long v4, v2, v0

    long-to-float p2, v4

    .line 74
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/lit16 p2, p2, 0xe10

    mul-int/lit16 v0, p2, 0xe10

    int-to-long v0, v0

    sub-long v2, v4, v0

    long-to-float v0, v2

    .line 75
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    int-to-long v4, v1

    sub-long v6, v2, v4

    long-to-float v1, v6

    .line 76
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " days, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/usikkert/kouchat/util/Tools;->getDoubleDigit(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->getDoubleDigit(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v1}, Lnet/usikkert/kouchat/util/Tools;->getDoubleDigit(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "0 days, 00:00:00"

    return-object p1
.end method
