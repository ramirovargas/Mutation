.class public Lnet/usikkert/kouchat/android/controller/PrivateChatController;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PrivateChatController.java"


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field private controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

.field private destroyed:Z

.field private privateChatInput:Landroid/widget/EditText;

.field private privateChatScroll:Landroid/widget/ScrollView;

.field private privateChatView:Landroid/widget/TextView;

.field private privateChatWindow:Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private user:Lnet/usikkert/kouchat/misc/User;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 55
    new-instance v0, Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    return-void
.end method

.method static synthetic access$002(Lnet/usikkert/kouchat/android/controller/PrivateChatController;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 53
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p1
.end method

.method static synthetic access$100(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->setupPrivateChatWithUser()V

    return-void
.end method

.method static synthetic access$200(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/widget/EditText;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->destroyed:Z

    return p0
.end method

.method static synthetic access$400(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/widget/ScrollView;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$600(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Lnet/usikkert/kouchat/android/controller/ControllerUtils;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    return-object p0
.end method

.method static synthetic access$700(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)Landroid/support/v7/app/ActionBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->actionBar:Landroid/support/v7/app/ActionBar;

    return-object p0
.end method

.method private createChatServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/usikkert/kouchat/android/service/ChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 180
    new-instance v0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$1;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController$1;-><init>(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)V

    return-object v0
.end method

.method private goBackToMainChat()Z
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private registerPrivateChatInputListener()V
    .locals 2

    .line 195
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    new-instance v1, Lnet/usikkert/kouchat/android/controller/PrivateChatController$2;

    invoke-direct {v1, p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController$2;-><init>(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private resetNewPrivateMessageIcon()V
    .locals 2

    .line 246
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->activatedPrivChat(Lnet/usikkert/kouchat/misc/User;)V

    return-void
.end method

.method private setPrivateChatWindow()V
    .locals 2

    .line 239
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->createPrivChat(Lnet/usikkert/kouchat/misc/User;)V

    .line 241
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->getPrivchat()Lnet/usikkert/kouchat/ui/PrivateChatWindow;

    move-result-object v0

    check-cast v0, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatWindow:Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    .line 242
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatWindow:Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    invoke-virtual {v0, p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->registerPrivateChatController(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)V

    return-void
.end method

.method private setTitle()V
    .locals 1

    .line 228
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatWindow:Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->updateTitle()V

    return-void
.end method

.method private setUser()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userCode"

    const/4 v2, -0x1

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 235
    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getUser(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    return-void
.end method

.method private setupPrivateChatWithUser()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->setUser()V

    .line 219
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->setPrivateChatWindow()V

    .line 221
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->setTitle()V

    .line 222
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->resetNewPrivateMessageIcon()V

    .line 223
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->registerPrivateChatInputListener()V

    :cond_0
    return-void
.end method


# virtual methods
.method public appendToPrivateChat(Ljava/lang/CharSequence;)V
    .locals 1

    .line 265
    new-instance v0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$4;

    invoke-direct {v0, p0, p1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController$4;-><init>(Lnet/usikkert/kouchat/android/controller/PrivateChatController;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 168
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 172
    :cond_1
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public isVisible()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->visible:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090042

    .line 77
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->setContentView(I)V

    const p1, 0x7f070069

    .line 79
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    const p1, 0x7f07006b

    .line 80
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatView:Landroid/widget/TextView;

    const p1, 0x7f07006a

    .line 81
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatScroll:Landroid/widget/ScrollView;

    .line 83
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->createChatServiceIntent()Landroid/content/Intent;

    move-result-object p1

    .line 84
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 85
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 87
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 88
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->makeLinksClickable(Landroid/widget/TextView;)V

    .line 91
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->destroyed:Z

    .line 98
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatWindow:Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatWindow:Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;->unregisterPrivateChatController()V

    .line 100
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 104
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->removeReferencesToTextViewFromText(Landroid/widget/TextView;)V

    .line 105
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Lnet/usikkert/kouchat/android/controller/ControllerUtils;->removeReferencesToTextViewFromText(Landroid/widget/TextView;)V

    .line 107
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 108
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatWindow:Lnet/usikkert/kouchat/android/chatwindow/AndroidPrivateChatWindow;

    .line 109
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    .line 111
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->controllerUtils:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    .line 112
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatView:Landroid/widget/TextView;

    .line 113
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatInput:Landroid/widget/EditText;

    .line 114
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatScroll:Landroid/widget/ScrollView;

    .line 115
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 116
    iput-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 118
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 145
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 143
    :cond_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->goBackToMainChat()Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->visible:Z

    .line 137
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->visible:Z

    .line 126
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->resetNewPrivateMessageIcon()V

    :cond_0
    return-void
.end method

.method protected sendPrivateMessage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->user:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0, p1, v1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->sendPrivateMessage(Ljava/lang/String;Lnet/usikkert/kouchat/misc/User;)V

    :cond_0
    return-void
.end method

.method public updatePrivateChat(Ljava/lang/CharSequence;)V
    .locals 3

    .line 250
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->privateChatView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController$3;-><init>(Lnet/usikkert/kouchat/android/controller/PrivateChatController;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 299
    new-instance v0, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;

    invoke-direct {v0, p0, p1, p2}, Lnet/usikkert/kouchat/android/controller/PrivateChatController$5;-><init>(Lnet/usikkert/kouchat/android/controller/PrivateChatController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/PrivateChatController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
