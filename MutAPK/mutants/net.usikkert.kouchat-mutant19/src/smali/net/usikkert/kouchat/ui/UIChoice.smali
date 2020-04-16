.class public final enum Lnet/usikkert/kouchat/ui/UIChoice;
.super Ljava/lang/Enum;
.source "UIChoice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/usikkert/kouchat/ui/UIChoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/usikkert/kouchat/ui/UIChoice;

.field public static final enum CONSOLE:Lnet/usikkert/kouchat/ui/UIChoice;

.field public static final enum SWING:Lnet/usikkert/kouchat/ui/UIChoice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lnet/usikkert/kouchat/ui/UIChoice;

    const-string v1, "SWING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/ui/UIChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/usikkert/kouchat/ui/UIChoice;->SWING:Lnet/usikkert/kouchat/ui/UIChoice;

    .line 40
    new-instance v0, Lnet/usikkert/kouchat/ui/UIChoice;

    const-string v1, "CONSOLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lnet/usikkert/kouchat/ui/UIChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/usikkert/kouchat/ui/UIChoice;->CONSOLE:Lnet/usikkert/kouchat/ui/UIChoice;

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lnet/usikkert/kouchat/ui/UIChoice;

    sget-object v1, Lnet/usikkert/kouchat/ui/UIChoice;->SWING:Lnet/usikkert/kouchat/ui/UIChoice;

    aput-object v1, v0, v2

    sget-object v1, Lnet/usikkert/kouchat/ui/UIChoice;->CONSOLE:Lnet/usikkert/kouchat/ui/UIChoice;

    aput-object v1, v0, v3

    sput-object v0, Lnet/usikkert/kouchat/ui/UIChoice;->$VALUES:[Lnet/usikkert/kouchat/ui/UIChoice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/usikkert/kouchat/ui/UIChoice;
    .locals 1

    .line 30
    const-class v0, Lnet/usikkert/kouchat/ui/UIChoice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/usikkert/kouchat/ui/UIChoice;

    return-object p0
.end method

.method public static values()[Lnet/usikkert/kouchat/ui/UIChoice;
    .locals 1

    .line 30
    sget-object v0, Lnet/usikkert/kouchat/ui/UIChoice;->$VALUES:[Lnet/usikkert/kouchat/ui/UIChoice;

    invoke-virtual {v0}, [Lnet/usikkert/kouchat/ui/UIChoice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/usikkert/kouchat/ui/UIChoice;

    return-object v0
.end method
