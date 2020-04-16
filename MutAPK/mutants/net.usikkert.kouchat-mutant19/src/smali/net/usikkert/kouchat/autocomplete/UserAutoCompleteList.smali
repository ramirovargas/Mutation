.class public Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;
.super Ljava/lang/Object;
.source "UserAutoCompleteList.java"

# interfaces
.implements Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;
.implements Lnet/usikkert/kouchat/event/UserListListener;


# instance fields
.field private final userList:Lnet/usikkert/kouchat/misc/UserList;

.field private users:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/misc/UserList;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->userList:Lnet/usikkert/kouchat/misc/UserList;

    .line 50
    invoke-interface {p1, p0}, Lnet/usikkert/kouchat/misc/UserList;->addUserListListener(Lnet/usikkert/kouchat/event/UserListListener;)V

    .line 51
    invoke-direct {p0}, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->updateWords()V

    return-void
.end method

.method private updateWords()V
    .locals 3

    .line 89
    iget-object v0, p0, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v0}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->users:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v1}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->users:[Ljava/lang/String;

    iget-object v2, p0, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v2, v0}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptsWord(Ljava/lang/String;)Z
    .locals 0

    .line 103
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getWordList()[Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->users:[Ljava/lang/String;

    return-object v0
.end method

.method public userAdded(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->updateWords()V

    return-void
.end method

.method public userChanged(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->updateWords()V

    return-void
.end method

.method public userRemoved(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lnet/usikkert/kouchat/autocomplete/UserAutoCompleteList;->updateWords()V

    return-void
.end method
