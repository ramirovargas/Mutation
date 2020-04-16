.class public Lnet/usikkert/kouchat/settings/MeFactory;
.super Ljava/lang/Object;
.source "MeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createNickName(I)Ljava/lang/String;
    .locals 2

    const-string v0, "user.name"

    .line 87
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, " "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lnet/usikkert/kouchat/util/Tools;->shorten(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 100
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createUniqueCode()I
    .locals 4

    .line 73
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x416312cfe0000000L    # 9999999.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    const v1, 0x989680

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public createMe()Lnet/usikkert/kouchat/misc/User;
    .locals 3

    .line 54
    invoke-direct {p0}, Lnet/usikkert/kouchat/settings/MeFactory;->createUniqueCode()I

    move-result v0

    .line 55
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/settings/MeFactory;->createNickName(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Lnet/usikkert/kouchat/misc/User;

    invoke-direct {v2, v1, v0}, Lnet/usikkert/kouchat/misc/User;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {v2, v0}, Lnet/usikkert/kouchat/misc/User;->setMe(Z)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lnet/usikkert/kouchat/misc/User;->setLastIdle(J)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lnet/usikkert/kouchat/misc/User;->setLogonTime(J)V

    const-string v0, "os.name"

    .line 62
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/usikkert/kouchat/misc/User;->setOperatingSystem(Ljava/lang/String;)V

    return-object v2
.end method
