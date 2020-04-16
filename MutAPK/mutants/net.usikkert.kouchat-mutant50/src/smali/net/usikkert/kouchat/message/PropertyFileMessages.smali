.class public Lnet/usikkert/kouchat/message/PropertyFileMessages;
.super Ljava/lang/Object;
.source "PropertyFileMessages.java"

# interfaces
.implements Lnet/usikkert/kouchat/message/Messages;


# instance fields
.field private final bundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Base name can not be empty"

    .line 48
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/message/PropertyFileMessages;->bundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public varargs getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "Key can not be empty"

    .line 71
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lnet/usikkert/kouchat/message/PropertyFileMessages;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasMessage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Key can not be empty"

    .line 58
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lnet/usikkert/kouchat/message/PropertyFileMessages;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
