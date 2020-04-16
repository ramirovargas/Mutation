.class Lnet/usikkert/kouchat/android/component/ComeBackDialog$1;
.super Ljava/lang/Object;
.source "ComeBackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/component/ComeBackDialog;->createComeBackDialog(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/view/View;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/component/ComeBackDialog;

.field final synthetic val$ui:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/component/ComeBackDialog;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lnet/usikkert/kouchat/android/component/ComeBackDialog$1;->this$0:Lnet/usikkert/kouchat/android/component/ComeBackDialog;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/component/ComeBackDialog$1;->val$ui:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/ComeBackDialog$1;->val$ui:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->comeBack()V

    return-void
.end method
