.class public Lnet/usikkert/kouchat/android/userlist/UserListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lnet/usikkert/kouchat/misc/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final comparator:Lnet/usikkert/kouchat/android/userlist/UserComparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f090021

    const v1, 0x7f07005c

    .line 43
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const-string v0, "Context can not be null"

    .line 45
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lnet/usikkert/kouchat/android/userlist/UserComparator;

    invoke-direct {p1}, Lnet/usikkert/kouchat/android/userlist/UserComparator;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->comparator:Lnet/usikkert/kouchat/android/userlist/UserComparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->add(Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method public add(Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    const-string v0, "User can not be null"

    .line 56
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->sort()V

    return-void
.end method

.method public addUsers(Lnet/usikkert/kouchat/misc/UserList;)V
    .locals 2

    const-string v0, "UserList can not be null"

    .line 75
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-interface {p1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    invoke-interface {p1, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->add(Lnet/usikkert/kouchat/misc/User;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->clear()V

    return-void
.end method

.method public sort()V
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->comparator:Lnet/usikkert/kouchat/android/userlist/UserComparator;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->sort(Ljava/util/Comparator;)V

    return-void
.end method
