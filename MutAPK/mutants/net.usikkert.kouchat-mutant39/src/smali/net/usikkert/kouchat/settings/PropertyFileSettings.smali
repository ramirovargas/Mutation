.class public final enum Lnet/usikkert/kouchat/settings/PropertyFileSettings;
.super Ljava/lang/Enum;
.source "PropertyFileSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/usikkert/kouchat/settings/PropertyFileSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum BALLOONS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum BROWSER:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum LOGGING:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum LOOK_AND_FEEL:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum NETWORK_INTERFACE:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum NICK_NAME:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum OWN_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum SMILEYS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum SOUND:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

.field public static final enum SYS_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 34
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "NICK_NAME"

    const-string v2, "nick"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NICK_NAME:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 35
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "OWN_COLOR"

    const-string v2, "owncolor"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->OWN_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 36
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "SYS_COLOR"

    const-string v2, "syscolor"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SYS_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 37
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "LOGGING"

    const-string v2, "logging"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOGGING:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 38
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "BALLOONS"

    const-string v2, "balloons"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BALLOONS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 39
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "BROWSER"

    const-string v2, "browser"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BROWSER:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 40
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "LOOK_AND_FEEL"

    const-string v2, "lookAndFeel"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOOK_AND_FEEL:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 41
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "NETWORK_INTERFACE"

    const-string v2, "networkInterface"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NETWORK_INTERFACE:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 42
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "SOUND"

    const-string v2, "sound"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SOUND:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    .line 43
    new-instance v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const-string v1, "SMILEYS"

    const-string v2, "smileys"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SMILEYS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    const/16 v0, 0xa

    .line 32
    new-array v0, v0, [Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NICK_NAME:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v3

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->OWN_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v4

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SYS_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v5

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOGGING:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v6

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BALLOONS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v7

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BROWSER:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v8

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOOK_AND_FEEL:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v9

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NETWORK_INTERFACE:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v10

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SOUND:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v11

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SMILEYS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    aput-object v1, v0, v12

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->$VALUES:[Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/usikkert/kouchat/settings/PropertyFileSettings;
    .locals 1

    .line 32
    const-class v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    return-object p0
.end method

.method public static values()[Lnet/usikkert/kouchat/settings/PropertyFileSettings;
    .locals 1

    .line 32
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->$VALUES:[Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, [Lnet/usikkert/kouchat/settings/PropertyFileSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->key:Ljava/lang/String;

    return-object v0
.end method
