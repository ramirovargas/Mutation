.class public Lnet/usikkert/kouchat/android/notification/MessageNotificationService;
.super Ljava/lang/Object;
.source "MessageNotificationService.java"


# static fields
.field private static final MAX_MESSAGES:I = 0x5

.field private static final MESSAGE_NOTIFICATION_ID:I = 0x5f5e100


# instance fields
.field private final context:Landroid/content/Context;

.field private messageCount:I

.field private final messages:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final privateMessageCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/usikkert/kouchat/misc/User;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final privateMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/usikkert/kouchat/misc/User;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationManager:Landroid/app/NotificationManager;

    .line 74
    new-instance p2, Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    invoke-direct {p2, p1, p3}, Lnet/usikkert/kouchat/android/notification/NotificationHelper;-><init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)V

    iput-object p2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    .line 75
    new-instance p1, Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messages:Ljava/util/Collection;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessages:Ljava/util/Map;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    return-void
.end method

.method private addMainChatMessageToList(Ljava/lang/CharSequence;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messages:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    iget p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messageCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messageCount:I

    return-void
.end method

.method private addPrivateMessageToList(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    .line 148
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 156
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private cancelPrivateChatNotifications()V
    .locals 3

    .line 174
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/misc/User;

    .line 177
    iget-object v2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->getNotificationIdForUser(Lnet/usikkert/kouchat/misc/User;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createIntentForMainChat()Landroid/app/PendingIntent;
    .locals 4

    .line 219
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const-class v3, Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createIntentForPrivateChat(Lnet/usikkert/kouchat/misc/User;)Landroid/app/PendingIntent;
    .locals 3

    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const-class v2, Lnet/usikkert/kouchat/android/controller/PrivateChatController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "userCode"

    .line 224
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openPrivateChat "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createMainChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 130
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private fillMainChatInbox()Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .locals 3

    .line 188
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 190
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messages:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 191
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const v2, 0x7f0d0035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    return-object v0
.end method

.method private fillPrivateChatInbox(Lnet/usikkert/kouchat/misc/User;)Landroid/support/v4/app/NotificationCompat$Style;
    .locals 2

    .line 200
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 201
    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 204
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const v1, 0x7f0d0037

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    :cond_1
    return-object v0
.end method

.method private getNotificationIdForUser(Lnet/usikkert/kouchat/misc/User;)I
    .locals 1

    .line 215
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result p1

    const v0, 0x5f5e100

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public isMainChatActivity()Z
    .locals 1

    .line 231
    iget v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messageCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivateChatActivity()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyNewMainChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 4

    .line 81
    invoke-direct {p0, p1, p2}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->createMainChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 82
    invoke-direct {p0, p2}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->addMainChatMessageToList(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->chooseMainChatChannel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0d0036

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const v0, 0x7f0d0033

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 88
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 89
    iget p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messageCount:I

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const p1, 0x7f060065

    .line 90
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 91
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->fillMainChatInbox()Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 92
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->createIntentForMainChat()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p1, 0x2

    .line 93
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string p1, "msg"

    .line 94
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 96
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 97
    sget-object p1, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->MAIN_CHAT:Lnet/usikkert/kouchat/android/notification/NotificationGroup;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/notification/NotificationGroup;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 100
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    invoke-virtual {p1, v1}, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->setFeedbackEffects(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 102
    iget-object p1, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationManager:Landroid/app/NotificationManager;

    const p2, 0x5f5e100

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public notifyNewPrivateChatMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    .locals 5

    .line 106
    invoke-direct {p0, p1, p2}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->addPrivateMessageToList(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d0038

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 111
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 113
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const p2, 0x7f060065

    .line 114
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->fillPrivateChatInbox(Lnet/usikkert/kouchat/misc/User;)Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 116
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->createIntentForPrivateChat(Lnet/usikkert/kouchat/misc/User;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p2, 0x2

    .line 117
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string p2, "msg"

    .line 118
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationHelper:Lnet/usikkert/kouchat/android/notification/NotificationHelper;

    invoke-virtual {p2, v1}, Lnet/usikkert/kouchat/android/notification/NotificationHelper;->setFeedbackEffects(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 126
    iget-object p2, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->getNotificationIdForUser(Lnet/usikkert/kouchat/misc/User;)I

    move-result p1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public resetAllNotifications()V
    .locals 2

    .line 163
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationManager:Landroid/app/NotificationManager;

    const v1, 0x5f5e100

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 164
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->cancelPrivateChatNotifications()V

    .line 166
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messages:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 167
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->messageCount:I

    .line 170
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public resetPrivateChatNotification(Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->privateMessageCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/notification/MessageNotificationService;->getNotificationIdForUser(Lnet/usikkert/kouchat/misc/User;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
