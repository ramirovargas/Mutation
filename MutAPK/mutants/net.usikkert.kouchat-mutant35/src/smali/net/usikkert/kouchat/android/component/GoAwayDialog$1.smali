.class Lnet/usikkert/kouchat/android/component/GoAwayDialog$1;
.super Ljava/lang/Object;
.source "GoAwayDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/component/GoAwayDialog;->createGoAwayDialog(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/view/View;Landroid/widget/EditText;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/component/GoAwayDialog;

.field final synthetic val$goAwayDialogInput:Landroid/widget/EditText;

.field final synthetic val$ui:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/component/GoAwayDialog;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/widget/EditText;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lnet/usikkert/kouchat/android/component/GoAwayDialog$1;->this$0:Lnet/usikkert/kouchat/android/component/GoAwayDialog;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/component/GoAwayDialog$1;->val$ui:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iput-object p3, p0, Lnet/usikkert/kouchat/android/component/GoAwayDialog$1;->val$goAwayDialogInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/GoAwayDialog$1;->val$ui:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    iget-object p2, p0, Lnet/usikkert/kouchat/android/component/GoAwayDialog$1;->val$goAwayDialogInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->goAway(Ljava/lang/String;)V

    return-void
.end method
