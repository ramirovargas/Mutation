.class public Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;
.super Ljava/lang/Object;
.source "DefaultPrivateMessageResponder.java"

# interfaces
.implements Lnet/usikkert/kouchat/net/PrivateMessageResponder;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final controller:Lnet/usikkert/kouchat/misc/Controller;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final msgController:Lnet/usikkert/kouchat/misc/MessageController;

.field private final ui:Lnet/usikkert/kouchat/ui/UserInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Controller can not be null"

    .line 66
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UserInterface can not be null"

    .line 67
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 68
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    .line 71
    iput-object p2, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    .line 73
    invoke-virtual {p3}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    .line 74
    invoke-interface {p2}, Lnet/usikkert/kouchat/ui/UserInterface;->getMessageController()Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    return-void
.end method


# virtual methods
.method public messageArrived(ILjava/lang/String;I)V
    .locals 3

    .line 88
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNewUser(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 89
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object p3, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " while away: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object p3, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which is away: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatPort()I

    move-result v0

    if-nez v0, :cond_2

    .line 96
    sget-object p3, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which has no reply port: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0, p1, p2, p3}, Lnet/usikkert/kouchat/misc/MessageController;->showPrivateUserMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object p3

    invoke-interface {p3}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object p3

    invoke-interface {p3}, Lnet/usikkert/kouchat/ui/PrivateChatWindow;->isFocused()Z

    move-result p3

    if-nez p3, :cond_4

    .line 102
    :cond_3
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->changeNewMessage(IZ)V

    .line 105
    :cond_4
    iget-object p3, p0, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p3, p1, p2}, Lnet/usikkert/kouchat/ui/UserInterface;->notifyPrivateMessageArrived(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_5
    sget-object p2, Lnet/usikkert/kouchat/net/DefaultPrivateMessageResponder;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
