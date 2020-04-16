.class public Lnet/usikkert/kouchat/android/service/ChatService;
.super Landroid/app/Service;
.source "ChatService.java"


# instance fields
.field private androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field private chatServiceBinder:Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

.field private lockHandler:Lnet/usikkert/kouchat/android/service/LockHandler;

.field private notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 91
    iget-object p1, p0, Lnet/usikkert/kouchat/android/service/ChatService;->chatServiceBinder:Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 58
    new-instance v0, Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;-><init>()V

    .line 59
    new-instance v1, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;

    invoke-direct {v1}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;-><init>()V

    .line 60
    invoke-virtual {v1, p0, v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettingsLoader;->loadStoredSettings(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    .line 62
    new-instance v1, Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-direct {v1, p0, v0}, Lnet/usikkert/kouchat/android/notification/NotificationService;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    iput-object v1, p0, Lnet/usikkert/kouchat/android/service/ChatService;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    .line 63
    new-instance v1, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/service/ChatService;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-direct {v1, p0, v0, v2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;Lnet/usikkert/kouchat/android/notification/NotificationService;)V

    iput-object v1, p0, Lnet/usikkert/kouchat/android/service/ChatService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 65
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/ChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v2, "power"

    .line 66
    invoke-virtual {p0, v2}, Lnet/usikkert/kouchat/android/service/ChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 67
    new-instance v3, Lnet/usikkert/kouchat/android/service/LockHandler;

    iget-object v4, p0, Lnet/usikkert/kouchat/android/service/ChatService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-direct {v3, v4, v0, v1, v2}, Lnet/usikkert/kouchat/android/service/LockHandler;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Lnet/usikkert/kouchat/android/settings/AndroidSettings;Landroid/net/wifi/WifiManager;Landroid/os/PowerManager;)V

    iput-object v3, p0, Lnet/usikkert/kouchat/android/service/ChatService;->lockHandler:Lnet/usikkert/kouchat/android/service/LockHandler;

    .line 69
    new-instance v0, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/service/ChatService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-direct {v0, v1}, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;-><init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->chatServiceBinder:Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->logOff()V

    .line 97
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/NotificationService;->onDestroy()V

    .line 98
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->lockHandler:Lnet/usikkert/kouchat/android/service/LockHandler;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/service/LockHandler;->releaseAllLocks()V

    .line 99
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->chatServiceBinder:Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->onDestroy()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 102
    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    .line 103
    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->lockHandler:Lnet/usikkert/kouchat/android/service/LockHandler;

    .line 104
    iput-object v0, p0, Lnet/usikkert/kouchat/android/service/ChatService;->chatServiceBinder:Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 79
    iget-boolean p1, p0, Lnet/usikkert/kouchat/android/service/ChatService;->started:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 80
    iput-boolean p2, p0, Lnet/usikkert/kouchat/android/service/ChatService;->started:Z

    .line 81
    iget-object p1, p0, Lnet/usikkert/kouchat/android/service/ChatService;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->logOn()V

    :cond_0
    const/16 p1, 0x3e9

    .line 84
    iget-object p3, p0, Lnet/usikkert/kouchat/android/service/ChatService;->notificationService:Lnet/usikkert/kouchat/android/notification/NotificationService;

    invoke-virtual {p3}, Lnet/usikkert/kouchat/android/notification/NotificationService;->createServiceNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lnet/usikkert/kouchat/android/service/ChatService;->startForeground(ILandroid/app/Notification;)V

    return p2
.end method
