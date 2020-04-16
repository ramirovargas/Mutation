.class Lnet/usikkert/kouchat/android/controller/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/SettingsFragment;->createServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/SettingsFragment;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/SettingsFragment;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment$1;->this$0:Lnet/usikkert/kouchat/android/controller/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 242
    check-cast p2, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;

    .line 243
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment$1;->this$0:Lnet/usikkert/kouchat/android/controller/SettingsFragment;

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/service/ChatServiceBinder;->getAndroidUserInterface()Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->access$002(Lnet/usikkert/kouchat/android/controller/SettingsFragment;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 244
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment$1;->this$0:Lnet/usikkert/kouchat/android/controller/SettingsFragment;

    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment$1;->this$0:Lnet/usikkert/kouchat/android/controller/SettingsFragment;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->access$000(Lnet/usikkert/kouchat/android/controller/SettingsFragment;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    invoke-virtual {p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getSettings()Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->access$102(Lnet/usikkert/kouchat/android/controller/SettingsFragment;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
