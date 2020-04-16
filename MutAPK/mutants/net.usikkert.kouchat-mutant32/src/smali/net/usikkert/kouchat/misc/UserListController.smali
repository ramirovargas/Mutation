.class public Lnet/usikkert/kouchat/misc/UserListController;
.super Ljava/lang/Object;
.source "UserListController.java"


# instance fields
.field private final userList:Lnet/usikkert/kouchat/misc/UserList;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/settings/Settings;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Settings can not be null"

    .line 49
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lnet/usikkert/kouchat/misc/SortedUserList;

    invoke-direct {v0}, Lnet/usikkert/kouchat/misc/SortedUserList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    .line 52
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/misc/UserList;->add(Lnet/usikkert/kouchat/misc/User;)Z

    return-void
.end method


# virtual methods
.method public changeAwayStatus(IZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 123
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 127
    invoke-virtual {v1, p2}, Lnet/usikkert/kouchat/misc/User;->setAway(Z)V

    .line 128
    invoke-virtual {v1, p3}, Lnet/usikkert/kouchat/misc/User;->setAwayMsg(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {p1, v0, v1}, Lnet/usikkert/kouchat/misc/UserList;->set(ILnet/usikkert/kouchat/misc/User;)Lnet/usikkert/kouchat/misc/User;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public changeNewMessage(IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 164
    invoke-virtual {v1, p2}, Lnet/usikkert/kouchat/misc/User;->setNewPrivMsg(Z)V

    .line 165
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {p1, v0, v1}, Lnet/usikkert/kouchat/misc/UserList;->set(ILnet/usikkert/kouchat/misc/User;)Lnet/usikkert/kouchat/misc/User;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public changeNickName(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 105
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 108
    invoke-virtual {v1, p2}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {p1, v0, v1}, Lnet/usikkert/kouchat/misc/UserList;->set(ILnet/usikkert/kouchat/misc/User;)Lnet/usikkert/kouchat/misc/User;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public changeWriting(IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 146
    invoke-virtual {v1, p2}, Lnet/usikkert/kouchat/misc/User;->setWriting(Z)V

    .line 147
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {p1, v0, v1}, Lnet/usikkert/kouchat/misc/UserList;->set(ILnet/usikkert/kouchat/misc/User;)Lnet/usikkert/kouchat/misc/User;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getUser(I)Lnet/usikkert/kouchat/misc/User;
    .locals 3

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;
    .locals 3

    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getUserList()Lnet/usikkert/kouchat/misc/UserList;
    .locals 1

    .line 241
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    return-object v0
.end method

.method public isNewUser(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 201
    :goto_0
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 202
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2, v1}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNickNameInUse(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 180
    :goto_0
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 181
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2, v1}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->isMe()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isTimeoutUsers()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 224
    :goto_0
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 225
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/UserListController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2, v1}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
