.class public final enum Lnet/usikkert/kouchat/net/FileTransfer$Direction;
.super Ljava/lang/Enum;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/usikkert/kouchat/net/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/usikkert/kouchat/net/FileTransfer$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/usikkert/kouchat/net/FileTransfer$Direction;

.field public static final enum RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

.field public static final enum SEND:Lnet/usikkert/kouchat/net/FileTransfer$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    const-string v1, "SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/usikkert/kouchat/net/FileTransfer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->SEND:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    .line 44
    new-instance v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    const-string v1, "RECEIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lnet/usikkert/kouchat/net/FileTransfer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    sget-object v1, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->SEND:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->RECEIVE:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->$VALUES:[Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/usikkert/kouchat/net/FileTransfer$Direction;
    .locals 1

    .line 42
    const-class v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    return-object p0
.end method

.method public static values()[Lnet/usikkert/kouchat/net/FileTransfer$Direction;
    .locals 1

    .line 42
    sget-object v0, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->$VALUES:[Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    invoke-virtual {v0}, [Lnet/usikkert/kouchat/net/FileTransfer$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    return-object v0
.end method
