.class public interface abstract Lnet/usikkert/kouchat/ui/UserInterface;
.super Ljava/lang/Object;
.source "UserInterface.java"


# virtual methods
.method public abstract askFileSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract changeAway(Z)V
.end method

.method public abstract clearChat()V
.end method

.method public abstract createPrivChat(Lnet/usikkert/kouchat/misc/User;)V
.end method

.method public abstract getMessageController()Lnet/usikkert/kouchat/misc/MessageController;
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract notifyMessageArrived(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
.end method

.method public abstract notifyPrivateMessageArrived(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
.end method

.method public abstract quit()V
.end method

.method public abstract showFileSave(Lnet/usikkert/kouchat/net/FileReceiver;)V
.end method

.method public abstract showTopic()V
.end method

.method public abstract showTransfer(Lnet/usikkert/kouchat/net/FileReceiver;)V
.end method

.method public abstract showTransfer(Lnet/usikkert/kouchat/net/FileSender;)V
.end method
