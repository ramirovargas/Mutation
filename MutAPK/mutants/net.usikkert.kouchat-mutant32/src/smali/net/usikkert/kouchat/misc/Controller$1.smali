.class Lnet/usikkert/kouchat/misc/Controller$1;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/misc/Controller;-><init>(Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/settings/SettingsSaver;Lnet/usikkert/kouchat/message/CoreMessages;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/misc/Controller;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/misc/Controller;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/Controller$1;->this$0:Lnet/usikkert/kouchat/misc/Controller;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller$1;->this$0:Lnet/usikkert/kouchat/misc/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/Controller;->logOff(Z)V

    .line 120
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/Controller$1;->this$0:Lnet/usikkert/kouchat/misc/Controller;

    invoke-static {v0}, Lnet/usikkert/kouchat/misc/Controller;->access$000(Lnet/usikkert/kouchat/misc/Controller;)V

    return-void
.end method
