.class public Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;
.super Ljava/lang/Object;
.source "ReceiveFileDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setTextSize(Landroid/app/Activity;Landroid/support/v7/app/AlertDialog;)V
    .locals 1

    const v0, 0x102000b

    .line 122
    invoke-virtual {p2, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05007e

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setupSharedDialogDetails(Landroid/app/Activity;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2

    .line 106
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0026

    .line 108
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f060056

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 111
    new-instance v1, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$4;

    invoke-direct {v1, p0, p1}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$4;-><init>(Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    return-object v0
.end method


# virtual methods
.method public showMissingFileDialog(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "Activity can not be null"

    .line 89
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->setupSharedDialogDetails(Landroid/app/Activity;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0025

    .line 93
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x104000a

    .line 95
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$3;

    invoke-direct {v2, p0, p1}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$3;-><init>(Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 102
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->setTextSize(Landroid/app/Activity;Landroid/support/v7/app/AlertDialog;)V

    return-void
.end method

.method public showReceiveFileDialog(Landroid/app/Activity;Lnet/usikkert/kouchat/net/FileReceiver;)V
    .locals 4

    const-string v0, "Activity can not be null"

    .line 53
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FileReceiver can not be null"

    .line 54
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->setupSharedDialogDetails(Landroid/app/Activity;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 60
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 61
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileReceiver;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/usikkert/kouchat/util/Tools;->byteToString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f0d0024

    .line 58
    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0d001f

    .line 63
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$1;

    invoke-direct {v2, p0, p2, p1}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$1;-><init>(Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;Lnet/usikkert/kouchat/net/FileReceiver;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0d0051

    .line 70
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;

    invoke-direct {v2, p0, p2, p1}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog$2;-><init>(Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;Lnet/usikkert/kouchat/net/FileReceiver;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    .line 78
    invoke-direct {p0, p1, p2}, Lnet/usikkert/kouchat/android/component/ReceiveFileDialog;->setTextSize(Landroid/app/Activity;Landroid/support/v7/app/AlertDialog;)V

    return-void
.end method
