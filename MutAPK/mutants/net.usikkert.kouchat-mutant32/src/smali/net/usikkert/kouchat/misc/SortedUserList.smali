.class public Lnet/usikkert/kouchat/misc/SortedUserList;
.super Ljava/lang/Object;
.source "SortedUserList.java"

# interfaces
.implements Lnet/usikkert/kouchat/misc/UserList;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/event/UserListListener;",
            ">;"
        }
    .end annotation
.end field

.field private final userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/misc/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->listeners:Ljava/util/List;

    return-void
.end method

.method private fireUserAdded(ILnet/usikkert/kouchat/misc/User;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/UserListListener;

    .line 174
    invoke-interface {v1, p1, p2}, Lnet/usikkert/kouchat/event/UserListListener;->userAdded(ILnet/usikkert/kouchat/misc/User;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireUserChanged(ILnet/usikkert/kouchat/misc/User;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/UserListListener;

    .line 185
    invoke-interface {v1, p1, p2}, Lnet/usikkert/kouchat/event/UserListListener;->userChanged(ILnet/usikkert/kouchat/misc/User;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireUserRemoved(ILnet/usikkert/kouchat/misc/User;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/UserListListener;

    .line 196
    invoke-interface {v1, p1, p2}, Lnet/usikkert/kouchat/event/UserListListener;->userRemoved(ILnet/usikkert/kouchat/misc/User;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lnet/usikkert/kouchat/misc/User;)Z
    .locals 2

    const-string v0, "User can not be null"

    .line 63
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 69
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lnet/usikkert/kouchat/misc/SortedUserList;->fireUserAdded(ILnet/usikkert/kouchat/misc/User;)V

    :cond_0
    return v0
.end method

.method public addUserListListener(Lnet/usikkert/kouchat/event/UserListListener;)V
    .locals 1

    const-string v0, "UserListListener can not be null"

    .line 143
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/event/UserListListener;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->listeners:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Lnet/usikkert/kouchat/misc/User;)I
    .locals 1

    const-string v0, "User can not be null"

    .line 92
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(Lnet/usikkert/kouchat/misc/User;)Z
    .locals 2

    const-string v0, "User can not be null"

    .line 102
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-direct {p0, v0, p1}, Lnet/usikkert/kouchat/misc/SortedUserList;->fireUserRemoved(ILnet/usikkert/kouchat/misc/User;)V

    :cond_0
    return v1
.end method

.method public removeUserListListener(Lnet/usikkert/kouchat/event/UserListListener;)V
    .locals 1

    const-string v0, "UserListListener can not be null"

    .line 153
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(ILnet/usikkert/kouchat/misc/User;)Lnet/usikkert/kouchat/misc/User;
    .locals 1

    const-string v0, "User can not be null"

    .line 121
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    .line 124
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lnet/usikkert/kouchat/misc/SortedUserList;->fireUserChanged(ILnet/usikkert/kouchat/misc/User;)V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 135
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/SortedUserList;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
