.class Lnet/usikkert/kouchat/android/controller/SendFileController$3;
.super Ljava/lang/Object;
.source "SendFileController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/SendFileController;->createServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/SendFileController;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 163
    check-cast p2, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    .line 164
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->getAndroidUserInterface()Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$102(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 166
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    new-instance p2, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {v1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$100(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithoutMe;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/misc/User;)V

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$202(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/android/userlist/UserListAdapter;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    .line 167
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$300(Lnet/usikkert/kouchat/android/controller/SendFileController;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$200(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$100(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$402(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/misc/UserList;)Lnet/usikkert/kouchat/misc/UserList;

    .line 170
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$400(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p1

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-interface {p1, p2}, Lnet/usikkert/kouchat/misc/UserList;->addUserListListener(Lnet/usikkert/kouchat/event/UserListListener;)V

    .line 171
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$200(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    move-result-object p1

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$400(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/misc/UserList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->addUsers(Lnet/usikkert/kouchat/misc/UserList;)V

    .line 172
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$500(Lnet/usikkert/kouchat/android/controller/SendFileController;)V

    .line 174
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$600(Lnet/usikkert/kouchat/android/controller/SendFileController;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
