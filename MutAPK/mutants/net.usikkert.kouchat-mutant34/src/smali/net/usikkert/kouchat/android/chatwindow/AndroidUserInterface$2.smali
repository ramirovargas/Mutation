.class Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$2;
.super Ljava/lang/Object;
.source "AndroidUserInterface.java"

# interfaces
.implements Lnet/usikkert/kouchat/android/component/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->goAway(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field final synthetic val$awayMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$2;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$2;->val$awayMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runCommand()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$2;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->access$100(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/Controller;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$2;->val$awayMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->goAway(Ljava/lang/String;)V

    return-void
.end method
