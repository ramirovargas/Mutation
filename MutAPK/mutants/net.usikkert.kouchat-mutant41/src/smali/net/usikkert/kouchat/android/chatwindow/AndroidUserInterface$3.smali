.class Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$3;
.super Ljava/lang/Object;
.source "AndroidUserInterface.java"

# interfaces
.implements Lnet/usikkert/kouchat/android/component/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->comeBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$3;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runCommand()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface$3;->this$0:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-static {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->access$100(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/misc/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->comeBack()V

    return-void
.end method
