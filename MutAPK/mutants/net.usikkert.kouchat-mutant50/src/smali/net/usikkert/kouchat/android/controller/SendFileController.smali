.class public Lnet/usikkert/kouchat/android/controller/SendFileController;
.super Landroid/app/Activity;
.source "SendFileController.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/UserListListener;


# instance fields
.field private androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

.field private androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field private fileToSend:Lnet/usikkert/kouchat/net/FileToSend;

.field private line2TextView:Landroid/widget/TextView;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private userList:Lnet/usikkert/kouchat/misc/UserList;

.field private userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

.field private userListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    return-void
.end method

.method static synthetic access$000(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/net/FileToSend;
    .locals 0

    .line 59
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->fileToSend:Lnet/usikkert/kouchat/net/FileToSend;

    return-object p0
.end method

.method static synthetic access$100(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p0
.end method

.method static synthetic access$102(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 59
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p1
.end method

.method static synthetic access$200(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/android/userlist/UserListAdapter;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;
    .locals 0

    .line 59
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lnet/usikkert/kouchat/android/controller/SendFileController;)Landroid/widget/ListView;
    .locals 0

    .line 59
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/misc/UserList;
    .locals 0

    .line 59
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    return-object p0
.end method

.method static synthetic access$402(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/misc/UserList;)Lnet/usikkert/kouchat/misc/UserList;
    .locals 0

    .line 59
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    return-object p1
.end method

.method static synthetic access$500(Lnet/usikkert/kouchat/android/controller/SendFileController;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->selectTextForLine2()V

    return-void
.end method

.method static synthetic access$600(Lnet/usikkert/kouchat/android/controller/SendFileController;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->registerUserListClickListener()V

    return-void
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 160
    new-instance v0, Lnet/usikkert/kouchat/android/controller/SendFileController$3;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/SendFileController$3;-><init>(Lnet/usikkert/kouchat/android/controller/SendFileController;)V

    return-object v0
.end method

.method private registerUserListClickListener()V
    .locals 2

    .line 149
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListView:Landroid/widget/ListView;

    new-instance v1, Lnet/usikkert/kouchat/android/controller/SendFileController$2;

    invoke-direct {v1, p0}, Lnet/usikkert/kouchat/android/controller/SendFileController$2;-><init>(Lnet/usikkert/kouchat/android/controller/SendFileController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private selectTextForLine2()V
    .locals 2

    .line 212
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->line2TextView:Landroid/widget/TextView;

    const v1, 0x7f0d0055

    invoke-virtual {p0, v1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->line2TextView:Landroid/widget/TextView;

    const v1, 0x7f0d0056

    invoke-virtual {p0, v1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x3

    .line 76
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->requestWindowFeature(I)Z

    const v0, 0x7f090046

    .line 77
    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060056

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 80
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.STREAM"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 88
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;->getFileFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object v1

    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->fileToSend:Lnet/usikkert/kouchat/net/FileToSend;

    const v1, 0x7f070084

    .line 90
    invoke-virtual {p0, v1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070085

    .line 91
    invoke-virtual {p0, v2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->line2TextView:Landroid/widget/TextView;

    const v2, 0x7f070086

    .line 92
    invoke-virtual {p0, v2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListView:Landroid/widget/ListView;

    .line 95
    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->fileToSend:Lnet/usikkert/kouchat/net/FileToSend;

    if-nez v2, :cond_2

    const v0, 0x7f0d0054

    .line 96
    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->line2TextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->line2TextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0d0053

    const/4 v2, 0x2

    .line 109
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->fileToSend:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {v4}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->fileToSend:Lnet/usikkert/kouchat/net/FileToSend;

    invoke-virtual {v3}, Lnet/usikkert/kouchat/net/FileToSend;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/usikkert/kouchat/util/Tools;->byteToString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->line2TextView:Landroid/widget/TextView;

    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lnet/usikkert/kouchat/android/service/ChatService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 115
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_0
    const p1, 0x7f070083

    .line 118
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 119
    new-instance v0, Lnet/usikkert/kouchat/android/controller/SendFileController$1;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/SendFileController$1;-><init>(Lnet/usikkert/kouchat/android/controller/SendFileController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v0, p0}, Lnet/usikkert/kouchat/misc/UserList;->removeUserListListener(Lnet/usikkert/kouchat/event/UserListListener;)V

    .line 131
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->onDestroy()V

    .line 132
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/SendFileController;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    .line 136
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 138
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 139
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    .line 140
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->line2TextView:Landroid/widget/TextView;

    .line 141
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->userListView:Landroid/widget/ListView;

    .line 142
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->fileToSend:Lnet/usikkert/kouchat/net/FileToSend;

    .line 143
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SendFileController;->androidFileUtils:Lnet/usikkert/kouchat/android/filetransfer/AndroidFileUtils;

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public userAdded(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 184
    new-instance p1, Lnet/usikkert/kouchat/android/controller/SendFileController$4;

    invoke-direct {p1, p0, p2}, Lnet/usikkert/kouchat/android/controller/SendFileController$4;-><init>(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/misc/User;)V

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userChanged(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 194
    new-instance p1, Lnet/usikkert/kouchat/android/controller/SendFileController$5;

    invoke-direct {p1, p0}, Lnet/usikkert/kouchat/android/controller/SendFileController$5;-><init>(Lnet/usikkert/kouchat/android/controller/SendFileController;)V

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userRemoved(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 203
    new-instance p1, Lnet/usikkert/kouchat/android/controller/SendFileController$6;

    invoke-direct {p1, p0, p2}, Lnet/usikkert/kouchat/android/controller/SendFileController$6;-><init>(Lnet/usikkert/kouchat/android/controller/SendFileController;Lnet/usikkert/kouchat/misc/User;)V

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
