.class public Lnet/usikkert/kouchat/misc/DayTimer;
.super Ljava/util/TimerTask;
.source "DayTimer.java"


# static fields
.field private static final NOTIFY_HOUR:I = 0x0

.field private static final TIMER_INTERVAL:J = 0x36ee80L


# instance fields
.field private done:Z

.field private final msgController:Lnet/usikkert/kouchat/misc/MessageController;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/ui/UserInterface;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 68
    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->getMessageController()Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/DayTimer;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    .line 69
    new-instance p1, Ljava/util/Timer;

    const-string v0, "DayTimer"

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/DayTimer;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-boolean v1, p0, Lnet/usikkert/kouchat/misc/DayTimer;->done:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "EEEE, d MMMM yyyy"

    .line 101
    invoke-static {v0, v1}, Lnet/usikkert/kouchat/util/Tools;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/DayTimer;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Day changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/DayTimer;->done:Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 106
    iget-boolean v0, p0, Lnet/usikkert/kouchat/misc/DayTimer;->done:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lnet/usikkert/kouchat/misc/DayTimer;->done:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startTimer()V
    .locals 5

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 77
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 78
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 80
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/DayTimer;->timer:Ljava/util/Timer;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v1, p0, v2, v3, v4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    return-void
.end method

.method public stopTimer()V
    .locals 1

    .line 87
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/DayTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
