.class Lnet/usikkert/kouchat/android/controller/MainChatController$1;
.super Ljava/lang/Object;
.source "MainChatController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/MainChatController;->createServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 136
    check-cast p2, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    .line 138
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->getAndroidUserInterface()Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$002(Lnet/usikkert/kouchat/android/controller/MainChatController;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 139
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$000(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p1

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->registerMainChatController(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    .line 140
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$000(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->resetAllMessageNotifications()V

    .line 141
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$000(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->showTopic()V

    .line 143
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$000(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$102(Lnet/usikkert/kouchat/android/controller/MainChatController;Lnet/usikkert/kouchat/misc/UserList;)Lnet/usikkert/kouchat/misc/UserList;

    .line 144
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$100(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p1

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-interface {p1, p2}, Lnet/usikkert/kouchat/misc/UserList;->addUserListListener(Lnet/usikkert/kouchat/event/UserListListener;)V

    .line 145
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$200(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    move-result-object p1

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;->this$0:Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/MainChatController;->access$100(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->addUsers(Lnet/usikkert/kouchat/misc/UserList;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
