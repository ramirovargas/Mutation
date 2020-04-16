.class public interface abstract Lnet/usikkert/kouchat/net/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/usikkert/kouchat/net/FileTransfer$Direction;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getId()I
.end method

.method public abstract getPercent()I
.end method

.method public abstract getSpeed()J
.end method

.method public abstract getTransferred()J
.end method

.method public abstract getUser()Lnet/usikkert/kouchat/misc/User;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isTransferred()Z
.end method

.method public abstract registerListener(Lnet/usikkert/kouchat/event/FileTransferListener;)V
.end method
