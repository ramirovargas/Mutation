.class public Lnet/usikkert/kouchat/misc/MessageController;
.super Ljava/lang/Object;
.source "MessageController.java"


# instance fields
.field private final cLog:Lnet/usikkert/kouchat/misc/ChatLogger;

.field private final chat:Lnet/usikkert/kouchat/ui/ChatWindow;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;

.field private final ui:Lnet/usikkert/kouchat/ui/UserInterface;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/ui/ChatWindow;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChatWindow can not be null"

    .line 55
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UserInterface can not be null"

    .line 56
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 57
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 58
    invoke-static {p4, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/MessageController;->chat:Lnet/usikkert/kouchat/ui/ChatWindow;

    .line 61
    iput-object p2, p0, Lnet/usikkert/kouchat/misc/MessageController;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    .line 62
    iput-object p3, p0, Lnet/usikkert/kouchat/misc/MessageController;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 64
    invoke-virtual {p3}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/MessageController;->me:Lnet/usikkert/kouchat/misc/User;

    .line 65
    new-instance p1, Lnet/usikkert/kouchat/misc/ChatLogger;

    invoke-direct {p1, p3, p4}, Lnet/usikkert/kouchat/misc/ChatLogger;-><init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/misc/ErrorHandler;)V

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/MessageController;->cLog:Lnet/usikkert/kouchat/misc/ChatLogger;

    return-void
.end method


# virtual methods
.method public showOwnMessage(Ljava/lang/String;)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/usikkert/kouchat/util/Tools;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/MessageController;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/MessageController;->chat:Lnet/usikkert/kouchat/ui/ChatWindow;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/MessageController;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/Settings;->getOwnColor()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lnet/usikkert/kouchat/ui/ChatWindow;->appendToChat(Ljava/lang/String;I)V

    .line 109
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/MessageController;->cLog:Lnet/usikkert/kouchat/misc/ChatLogger;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/ChatLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public showPrivateOwnMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/MessageController;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/ui/UserInterface;->createPrivChat(Lnet/usikkert/kouchat/misc/User;)V

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/usikkert/kouchat/util/Tools;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/MessageController;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/MessageController;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/Settings;->getOwnColor()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->appendToPrivateChat(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatLogger()Lnet/usikkert/kouchat/misc/ChatLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/misc/ChatLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public showPrivateSystemMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/usikkert/kouchat/util/Tools;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " *** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/MessageController;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/Settings;->getSysColor()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->appendToPrivateChat(Ljava/lang/String;I)V

    .line 163
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatLogger()Lnet/usikkert/kouchat/misc/ChatLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/misc/ChatLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public showPrivateUserMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;I)V
    .locals 2

    .line 123
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/MessageController;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0, p1}, Lnet/usikkert/kouchat/ui/UserInterface;->createPrivChat(Lnet/usikkert/kouchat/misc/User;)V

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/usikkert/kouchat/util/Tools;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->appendToPrivateChat(Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatLogger()Lnet/usikkert/kouchat/misc/ChatLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/misc/ChatLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public showSystemMessage(Ljava/lang/String;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/usikkert/kouchat/util/Tools;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " *** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/MessageController;->chat:Lnet/usikkert/kouchat/ui/ChatWindow;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/MessageController;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/Settings;->getSysColor()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lnet/usikkert/kouchat/ui/ChatWindow;->appendToChat(Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/MessageController;->cLog:Lnet/usikkert/kouchat/misc/ChatLogger;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/ChatLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public showUserMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/usikkert/kouchat/util/Tools;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lnet/usikkert/kouchat/misc/MessageController;->chat:Lnet/usikkert/kouchat/ui/ChatWindow;

    invoke-interface {p2, p1, p3}, Lnet/usikkert/kouchat/ui/ChatWindow;->appendToChat(Ljava/lang/String;I)V

    .line 81
    iget-object p2, p0, Lnet/usikkert/kouchat/misc/MessageController;->cLog:Lnet/usikkert/kouchat/misc/ChatLogger;

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/misc/ChatLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 170
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/MessageController;->cLog:Lnet/usikkert/kouchat/misc/ChatLogger;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/ChatLogger;->close()V

    return-void
.end method
