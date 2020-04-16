.class public interface abstract Lnet/usikkert/kouchat/net/FileToSend$InputStreamOpener;
.super Ljava/lang/Object;
.source "FileToSend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/usikkert/kouchat/net/FileToSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputStreamOpener"
.end annotation


# virtual methods
.method public abstract open()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
