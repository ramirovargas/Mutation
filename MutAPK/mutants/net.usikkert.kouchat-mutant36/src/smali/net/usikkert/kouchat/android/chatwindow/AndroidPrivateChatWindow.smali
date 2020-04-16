.class public Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;
.super Ljava/lang/Object;
.source "AndroidPrivateChatWindow.java"

# interfaces
.implements Lnet/usikkert/kouchat/ui/PrivateChatWindow;


# instance fields
.field private final messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

.field private privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

.field private final user:Lnet/usikkert/kouchat/misc/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 45
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "User can not be null"

    .line 46
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    .line 50
    new-instance p2, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    invoke-direct {p2, p1}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    return-void
.end method

.method private createSubtitle()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private createTitle()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " (Offline)"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " (Away)"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendToPrivateChat(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "Private message can not be empty"

    .line 66
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->styleAndAppend(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    if-eqz p2, :cond_0

    .line 71
    iget-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->appendToPrivateChat(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public clearChatText()V
    .locals 0

    return-void
.end method

.method public getChatText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getUser()Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 77
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->user:Lnet/usikkert/kouchat/misc/User;

    return-object v0
.end method

.method public isFocused()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerPrivateChatController(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)V
    .locals 1

    const-string v0, "Private chat controller can not be null"

    .line 54
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    .line 57
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->messageStyler:Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->getHistory()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->updatePrivateChat(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoggedOff()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->updateTitle()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    return-void
.end method

.method public unregisterPrivateChatController()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    return-void
.end method

.method public updateAwayState()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->updateTitle()V

    return-void
.end method

.method public updateTitle()V
    .locals 3

    .line 142
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->createTitle()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->createSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->privateChatController:Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-virtual {v2, v0, v1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->updateTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateUserInformation()V
    .locals 0

    return-void
.end method
