.class public final enum Lnet/usikkert/kouchat/android/notification/NotificationGroup;
.super Ljava/lang/Enum;
.source "NotificationGroup.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/usikkert/kouchat/android/notification/NotificationGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lnet/usikkert/kouchat/android/notification/NotificationGroup;",
        "",
        "(Ljava/lang/String;I)V",
        "SERVICE",
        "MAIN_CHAT",
        "FILE_TRANSFER",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/usikkert/kouchat/android/notification/NotificationGroup;

.field public static final enum FILE_TRANSFER:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

.field public static final enum MAIN_CHAT:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

.field public static final enum SERVICE:Lnet/usikkert/kouchat/android/notification/NotificationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    new-instance v1, Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    const-string v2, "SERVICE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/usikkert/kouchat/android/notification/NotificationGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->SERVICE:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    aput-object v1, v0, v3

    new-instance v1, Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    const-string v2, "MAIN_CHAT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/usikkert/kouchat/android/notification/NotificationGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->MAIN_CHAT:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    aput-object v1, v0, v3

    new-instance v1, Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    const-string v2, "FILE_TRANSFER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lnet/usikkert/kouchat/android/notification/NotificationGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->FILE_TRANSFER:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    aput-object v1, v0, v3

    sput-object v0, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->$VALUES:[Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lnet/usikkert/kouchat/android/notification/NotificationGroup;
    .locals 1

    const-class v0, Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    return-object p0
.end method

.method public static values()[Lnet/usikkert/kouchat/android/notification/NotificationGroup;
    .locals 1

    sget-object v0, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->$VALUES:[Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    invoke-virtual {v0}, [Lnet/usikkert/kouchat/android/notification/NotificationGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    return-object v0
.end method
