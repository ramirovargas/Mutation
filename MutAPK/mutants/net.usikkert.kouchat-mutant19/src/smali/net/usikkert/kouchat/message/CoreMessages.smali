.class public Lnet/usikkert/kouchat/message/CoreMessages;
.super Ljava/lang/Object;
.source "CoreMessages.java"

# interfaces
.implements Lnet/usikkert/kouchat/message/Messages;


# static fields
.field private static final CORE:Ljava/lang/String; = "messages.core"


# instance fields
.field private final messages:Lnet/usikkert/kouchat/message/PropertyFileMessages;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lnet/usikkert/kouchat/message/PropertyFileMessages;

    const-string v1, "messages.core"

    invoke-direct {v0, v1}, Lnet/usikkert/kouchat/message/PropertyFileMessages;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/message/CoreMessages;->messages:Lnet/usikkert/kouchat/message/PropertyFileMessages;

    return-void
.end method


# virtual methods
.method public varargs getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/PropertyKey;
            resourceBundle = "messages.core"
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lnet/usikkert/kouchat/message/CoreMessages;->messages:Lnet/usikkert/kouchat/message/PropertyFileMessages;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/message/PropertyFileMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasMessage(Ljava/lang/String;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lnet/usikkert/kouchat/message/CoreMessages;->messages:Lnet/usikkert/kouchat/message/PropertyFileMessages;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/message/PropertyFileMessages;->hasMessage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
