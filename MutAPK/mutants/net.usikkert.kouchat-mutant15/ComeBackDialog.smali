.class public Lnet/usikkert/kouchat/android/component/ComeBackDialog;
.super Ljava/lang/Object;
.source "ComeBackDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 44
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AndroidUserInterface can not be null"

    .line 45
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09001d

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070030

    .line 50

    const/4 v1, 0x0


    .line 52
    invoke-direct {p0, p2, p1, v1}, Lnet/usikkert/kouchat/android/component/ComeBackDialog;->setComeBackMessage(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 54
    invoke-direct {p0, p2, p1, v0}, Lnet/usikkert/kouchat/android/component/ComeBackDialog;->createComeBackDialog(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/view/View;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private createComeBackDialog(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/view/View;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    .line 67
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const p2, 0x7f0d0021

    .line 70
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const p2, 0x7f060056

    .line 71
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 73
    new-instance p2, Lnet/usikkert/kouchat/android/component/ComeBackDialog$1;

    invoke-direct {p2, p0, p1}, Lnet/usikkert/kouchat/android/component/ComeBackDialog$1;-><init>(Lnet/usikkert/kouchat/android/component/ComeBackDialog;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    .line 80
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private setComeBackMessage(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f0d0023

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
