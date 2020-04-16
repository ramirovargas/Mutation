.class public final Lnet/usikkert/kouchat/android/app/KouChatApp;
.super Landroid/app/Application;
.source "KouChatApp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lnet/usikkert/kouchat/android/app/KouChatApp;",
        "Landroid/app/Application;",
        "()V",
        "onCreate",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/notification/NotificationChannelSettings;->setupNotificationChannels()V

    :cond_0
    return-void
.end method
