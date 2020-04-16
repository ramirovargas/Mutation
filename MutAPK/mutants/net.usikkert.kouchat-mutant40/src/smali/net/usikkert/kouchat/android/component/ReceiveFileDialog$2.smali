.class Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;
.super Ljava/lang/Object;
.source "ReceiveFileDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->showReceiveFileDialog(Landroid/app/Activity;Lnet/usikkert/kouchat/net/FileReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;Lnet/usikkert/kouchat/net/FileReceiver;Landroid/app/Activity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;->this$0:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;->val$fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

    iput-object p3, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;->val$fileReceiver:Lnet/usikkert/kouchat/net/FileReceiver;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->reject()V

    .line 73
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
