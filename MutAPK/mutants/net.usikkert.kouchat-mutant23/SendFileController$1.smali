.class Lnet/usikkert/kouchat/android/controller/SendFileController$1;
.super Ljava/lang/Object;
.source "SendFileController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/SendFileController;->onCreate(Landroid/os/Bundle;)V
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

    .line 119
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$1;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-direct/range {p0 .. p0}, Lnet/usikkert/kouchat/android/controller/SendFileController$1;->delay()V
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$1;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->finish()V

    return-void
.end method
