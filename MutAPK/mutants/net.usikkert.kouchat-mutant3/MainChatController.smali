.class public Lnet/usikkert/kouchat/android/controller/MainChatController;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainChatController.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/UserListListener;


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field private chatServiceIntent:Landroid/content/Intent;

.field private controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

.field private destroyed:Z

.field private mainChatInput:Landroid/widget/EditText;

.field private mainChatScroll:Landroid/widget/ScrollView;

.field private mainChatUserList:Landroid/widget/ListView;

.field private mainChatView:Landroid/widget/TextView;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private textWatcher:Landroid/text/TextWatcher;

.field private userList:Lnet/usikkert/kouchat/misc/UserList;

.field private userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 86
    new-instance v0, Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    return-void
.end method

.method static synthetic access$000(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p0
.end method

.method static synthetic access$002(Lnet/usikkert/kouchat/android/controller/MainChatController;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 84
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p1
.end method

.method static synthetic access$100(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/misc/UserList;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    return-object p0
.end method

.method static synthetic access$102(Lnet/usikkert/kouchat/android/controller/MainChatController;Lnet/usikkert/kouchat/misc/UserList;)Lnet/usikkert/kouchat/misc/UserList;
    .locals 0

    .line 84
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    return-object p1
.end method

.method static synthetic access$200(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/userlist/UserListAdapter;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/EditText;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lnet/usikkert/kouchat/android/controller/MainChatController;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->destroyed:Z

    return p0
.end method

.method static synthetic access$500(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/widget/ScrollView;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$700(Lnet/usikkert/kouchat/android/controller/MainChatController;)Lnet/usikkert/kouchat/android/controller/ControllerUtils;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    return-object p0
.end method

.method static synthetic access$800(Lnet/usikkert/kouchat/android/controller/MainChatController;)Landroid/support/v7/app/ActionBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->actionBar:Landroid/support/v7/app/ActionBar;

    return-object p0
.end method

.method private createChatServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/usikkert/kouchat/android/service/ChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 133
    new-instance v0, Lnet/usikkert/kouchat/android/controller/MainChatController$1;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/MainChatController$1;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    return-object v0
.end method

.method private openKeyboard()V
    .locals 1

    .line 215
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private registerMainChatInputListener()V
    .locals 2

    .line 154
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    new-instance v1, Lnet/usikkert/kouchat/android/controller/MainChatController$2;

    invoke-direct {v1, p0}, Lnet/usikkert/kouchat/android/controller/MainChatController$2;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private registerMainChatTextListener()V
    .locals 2

    .line 170
    new-instance v0, Lnet/usikkert/kouchat/android/controller/MainChatController$3;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/MainChatController$3;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->textWatcher:Landroid/text/TextWatcher;

    .line 188
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private registerUserListClickListener()V
    .locals 2

    .line 192
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatUserList:Landroid/widget/ListView;

    new-instance v1, Lnet/usikkert/kouchat/android/controller/MainChatController$4;

    invoke-direct {v1, p0}, Lnet/usikkert/kouchat/android/controller/MainChatController$4;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setupMainChatUserList()V
    .locals 2

    .line 210
    new-instance v0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    .line 211
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatUserList:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showAboutDialog()Z
    .locals 1

    .line 343
    new-instance v0, Lnet/usikkert/kouchat/android/component/AboutDialog;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/component/AboutDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method private showAwayDialog()Z
    .locals 2

    .line 328
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->isAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Lnet/usikkert/kouchat/android/component/ComeBackDialog;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-direct {v0, p0, v1}, Lnet/usikkert/kouchat/android/component/ComeBackDialog;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Lnet/usikkert/kouchat/android/component/GoAwayDialog;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-direct {v0, p0, v1}, Lnet/usikkert/kouchat/android/component/GoAwayDialog;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private showSettingsDialog()Z
    .locals 2

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/usikkert/kouchat/android/controller/SettingsController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private showTopicDialog()Z
    .locals 2

    .line 338
    new-instance v0, Lnet/usikkert/kouchat/android/component/TopicDialog;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-direct {v0, p0, v1}, Lnet/usikkert/kouchat/android/component/TopicDialog;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    const/4 v0, 0x1

    return v0
.end method

.method private shutdownApplication()Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->finish()V

    .line 349
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->chatServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public appendToChat(Ljava/lang/CharSequence;)V
    .locals 1

    .line 364
    new-instance v0, Lnet/usikkert/kouchat/android/controller/MainChatController$5;

    invoke-direct {v0, p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController$5;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 320
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 324
    :cond_1
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public isVisible()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->visible:Z

    return v0
.end method

.method private delay()V
    .locals 2

    .line 332
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 336
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    invoke-direct/range {p0 .. p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->delay()V

    const p1, 0x7f090020

    .line 111
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->setContentView(I)V

    const p1, 0x7f070052

    .line 113
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    const p1, 0x7f07005a

    .line 114
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatUserList:Landroid/widget/ListView;

    const p1, 0x7f07005d

    .line 115
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatView:Landroid/widget/TextView;

    const p1, 0x7f070059

    .line 116
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatScroll:Landroid/widget/ScrollView;

    .line 117
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 119
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->registerMainChatInputListener()V

    .line 120
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->registerMainChatTextListener()V

    .line 121
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->registerUserListClickListener()V

    .line 122
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->makeLinksClickable(Landroid/widget/TextView;)V

    .line 123
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->setupMainChatUserList()V

    .line 124
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->openKeyboard()V

    .line 126
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->createChatServiceIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->chatServiceIntent:Landroid/content/Intent;

    .line 127
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->chatServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 129
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->chatServiceIntent:Landroid/content/Intent;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 277
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    .line 278
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->destroyed:Z

    .line 238
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    invoke-interface {v0, p0}, Lnet/usikkert/kouchat/misc/UserList;->removeUserListListener(Lnet/usikkert/kouchat/event/UserListListener;)V

    .line 240
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {v0, p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->unregisterMainChatController(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    .line 241
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->unbindService(Landroid/content/ServiceConnection;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->onDestroy()V

    .line 245
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 247
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatUserList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 248
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatUserList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->removeReferencesToTextViewFromText(Landroid/widget/TextView;)V

    .line 250
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->removeReferencesToTextViewFromText(Landroid/widget/TextView;)V

    .line 252
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 253
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userList:Lnet/usikkert/kouchat/misc/UserList;

    .line 255
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    .line 256
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->chatServiceIntent:Landroid/content/Intent;

    .line 257
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 258
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatInput:Landroid/widget/EditText;

    .line 259
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatUserList:Landroid/widget/ListView;

    .line 260
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatView:Landroid/widget/TextView;

    .line 261
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatScroll:Landroid/widget/ScrollView;

    .line 262
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->userListAdapter:Lnet/usikkert/kouchat/android/userlist/UserListAdapter;

    .line 263
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->textWatcher:Landroid/text/TextWatcher;

    .line 264
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 266
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 302
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 296
    :pswitch_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->showTopicDialog()Z

    move-result p1

    return p1

    .line 300
    :pswitch_1
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->showSettingsDialog()Z

    move-result p1

    return p1

    .line 292
    :pswitch_2
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->shutdownApplication()Z

    move-result p1

    return p1

    .line 294
    :pswitch_3
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->showAwayDialog()Z

    move-result p1

    return p1

    .line 298
    :pswitch_4
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->showAboutDialog()Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f070054
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->visible:Z

    .line 231
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->visible:Z

    .line 223
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->resetAllMessageNotifications()V

    :cond_0
    return-void
.end method

.method protected sendMessage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->sendMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateChat(Ljava/lang/CharSequence;)V
    .locals 3

    .line 389
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/MainChatController;->mainChatView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lnet/usikkert/kouchat/android/controller/MainChatController$6;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/MainChatController$6;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 405
    new-instance v0, Lnet/usikkert/kouchat/android/controller/MainChatController$7;

    invoke-direct {v0, p0, p1, p2}, Lnet/usikkert/kouchat/android/controller/MainChatController$7;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/MainChatController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userAdded(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 417
    new-instance p1, Lnet/usikkert/kouchat/android/controller/MainChatController$8;

    invoke-direct {p1, p0, p2}, Lnet/usikkert/kouchat/android/controller/MainChatController$8;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;Lnet/usikkert/kouchat/misc/User;)V

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userChanged(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 439
    new-instance p1, Lnet/usikkert/kouchat/android/controller/MainChatController$10;

    invoke-direct {p1, p0}, Lnet/usikkert/kouchat/android/controller/MainChatController$10;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;)V

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userRemoved(ILnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 428
    new-instance p1, Lnet/usikkert/kouchat/android/controller/MainChatController$9;

    invoke-direct {p1, p0, p2}, Lnet/usikkert/kouchat/android/controller/MainChatController$9;-><init>(Lnet/usikkert/kouchat/android/controller/MainChatController;Lnet/usikkert/kouchat/misc/User;)V

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/MainChatController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
