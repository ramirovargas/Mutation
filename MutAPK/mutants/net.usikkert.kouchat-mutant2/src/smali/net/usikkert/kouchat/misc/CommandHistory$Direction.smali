.class final enum Lnet/usikkert/kouchat/misc/CommandHistory$Direction;
.super Ljava/lang/Enum;
.source "CommandHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/usikkert/kouchat/misc/CommandHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/usikkert/kouchat/misc/CommandHistory$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

.field public static final enum DOWN:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

.field public static final enum MIDDLE:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

.field public static final enum UP:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->UP:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    .line 49
    new-instance v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    const-string v1, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->MIDDLE:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    .line 50
    new-instance v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    const-string v1, "DOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->DOWN:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    sget-object v1, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->UP:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->MIDDLE:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->DOWN:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->$VALUES:[Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/CommandHistory$Direction;
    .locals 1

    .line 47
    const-class v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    return-object p0
.end method

.method public static values()[Lnet/usikkert/kouchat/misc/CommandHistory$Direction;
    .locals 1

    .line 47
    sget-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->$VALUES:[Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    invoke-virtual {v0}, [Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    return-object v0
.end method
