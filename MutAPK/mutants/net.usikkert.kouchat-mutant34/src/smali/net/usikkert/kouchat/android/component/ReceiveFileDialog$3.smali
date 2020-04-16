.class Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$3;
.super Ljava/lang/Object;
.source "ReceiveFileDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->showMissingFileDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;Landroid/app/Activity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$3;->this$0:Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 97
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
