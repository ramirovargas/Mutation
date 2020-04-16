.class public Lnet/usikkert/kouchat/settings/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static final LOGGING:Lnet/usikkert/kouchat/settings/Setting;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lnet/usikkert/kouchat/settings/Setting;

    const-string v1, "LOGGING"

    invoke-direct {v0, v1}, Lnet/usikkert/kouchat/settings/Setting;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/Setting;->LOGGING:Lnet/usikkert/kouchat/settings/Setting;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lnet/usikkert/kouchat/settings/Setting;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    check-cast p1, Lnet/usikkert/kouchat/settings/Setting;

    .line 62
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Setting;->name:Ljava/lang/String;

    iget-object p1, p1, Lnet/usikkert/kouchat/settings/Setting;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 67
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Setting;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
