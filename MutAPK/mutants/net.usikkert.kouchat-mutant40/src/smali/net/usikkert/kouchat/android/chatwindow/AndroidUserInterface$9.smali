.class Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;
.super Ljava/lang/Object;
.source "AndroidUserInterface.java"

# interfaces
.implements Lnet/usikkert/kouchat/android/component/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field final synthetic val$file:Lnet/usikkert/kouchat/net/FileToSend;

.field final synthetic val$user:Lnet/usikkert/kouchat/misc/User;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;->val$user:Lnet/usikkert/kouchat/misc/User;

    iput-object p3, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;->val$file:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runCommand()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->access$000(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/CommandParser;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;->val$user:Lnet/usikkert/kouchat/misc/User;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$9;->val$file:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/misc/CommandParser;->sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V

    return-void
.end method
