.class public Lnet/usikkert/kouchat/android/userlist/UserComparator;
.super Ljava/lang/Object;
.source "UserComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/usikkert/kouchat/misc/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    check-cast p2, Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p0, p1, p2}, Lnet/usikkert/kouchat/android/userlist/UserComparator;->compare(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/misc/User;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/misc/User;)I
    .locals 0

    .line 38
    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/misc/User;->compareTo(Lnet/usikkert/kouchat/misc/User;)I

    move-result p1

    return p1
.end method
