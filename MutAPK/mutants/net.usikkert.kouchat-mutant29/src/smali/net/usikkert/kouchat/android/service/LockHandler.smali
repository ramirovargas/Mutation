.class public Lnet/usikkert/kouchat/android/service/LockHandler;
.super Ljava/lang/Object;
.source "LockHandler.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/NetworkConnectionListener;
.implements Lnet/usikkert/kouchat/event/SettingsListener;


# static fields
.field public static final MULTICAST_LOCK:Ljava/lang/String; = "KouChat multicast lock"

.field public static final WAKE_LOCK:Ljava/lang/String; = "KouChat wake lock"

.field public static final WIFI_LOCK:Ljava/lang/String; = "KouChat wifi lock"


# instance fields
.field private final multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;

.field private final wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Lnet/usikkert/kouchat/android/settings/AndroidSettings;Landroid/net/wifi/WifiManager;Landroid/os/PowerManager;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidUserInterface can not be null"

    .line 69
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 70
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WifiManager can not be null"

    .line 71
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PowerManager can not be null"

    .line 72
    invoke-static {p4, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    const-string v0, "KouChat wake lock"

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p4, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p4

    iput-object p4, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p4, "KouChat wifi lock"

    const/4 v0, 0x3

    .line 77
    invoke-virtual {p3, v0, p4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p4

    iput-object p4, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const-string p4, "KouChat multicast lock"

    .line 78
    invoke-virtual {p3, p4}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p3

    iput-object p3, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 80
    invoke-virtual {p1, p0}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->registerNetworkConnectionListener(Lnet/usikkert/kouchat/event/NetworkConnectionListener;)V

    .line 81
    invoke-virtual {p2, p0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->addSettingsListener(Lnet/usikkert/kouchat/event/SettingsListener;)V

    return-void
.end method

.method private acquireMulticastLock()V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->multicastLockIsHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_0
    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->wakeLockIsHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private acquireWifiLock()V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->wifiLockIsHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_0
    return-void
.end method

.method private releaseMulticastLock()V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->multicastLockIsHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->wakeLockIsHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private releaseWifiLock()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->wifiLockIsHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireEnabledLocks()V
    .locals 1

    .line 145
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->isWakeLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->acquireWakeLock()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->acquireWifiLock()V

    .line 150
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->acquireMulticastLock()V

    return-void
.end method

.method public beforeNetworkCameUp()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->acquireEnabledLocks()V

    return-void
.end method

.method public multicastLockIsHeld()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public networkCameUp(Z)V
    .locals 0

    return-void
.end method

.method public networkWentDown(Z)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->releaseAllLocks()V

    return-void
.end method

.method public declared-synchronized releaseAllLocks()V
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->releaseMulticastLock()V

    .line 136
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->releaseWifiLock()V

    .line 137
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0

    throw v0
.end method

.method public settingChanged(Lnet/usikkert/kouchat/settings/Setting;)V
    .locals 1

    .line 120
    sget-object v0, Lnet/usikkert/kouchat/android/settings/AndroidSetting;->WAKE_LOCK:Lnet/usikkert/kouchat/android/settings/AndroidSetting;

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/settings/Setting;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->isWakeLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->acquireWakeLock()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/service/LockHandler;->releaseWakeLock()V

    :cond_1
    :goto_0
    return-void
.end method

.method public wakeLockIsHeld()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public wifiLockIsHeld()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lnet/usikkert/kouchat/android/service/LockHandler;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    return v0
.end method
