.class public Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;
.super Lnet/usikkert/kouchat/android/userlist/UserListAdapter;
.source "UserListAdapterWithoutMe.java"


# instance fields
.field private me:Lnet/usikkert/kouchat/misc/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;-><init>(Landroid/content/Context;)V

    const-string v0, "Context can not be null"

    .line 44
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Me can not be null"

    .line 45
    invoke-static {p2, p1}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;->me:Lnet/usikkert/kouchat/misc/User;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 63
    invoke-super {p0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;->getItem(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;->getPosition(Ljava/lang/Object;)I

    move-result v0

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 55
    invoke-super {p0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    return-object p1

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    invoke-super {p0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->onDestroy()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;->me:Lnet/usikkert/kouchat/misc/User;

    return-void
.end method
