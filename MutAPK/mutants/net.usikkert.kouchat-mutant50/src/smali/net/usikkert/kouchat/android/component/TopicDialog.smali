.class public Lnet/usikkert/kouchat/android/component/TopicDialog;
.super Ljava/lang/Object;
.source "TopicDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 45
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AndroidUserInterface can not be null"

    .line 46
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090049

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700a2

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 53
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/android/component/TopicDialog;->blockNewLinesInTheInput(Landroid/widget/EditText;)V

    .line 54
    invoke-direct {p0, p2, v1}, Lnet/usikkert/kouchat/android/component/TopicDialog;->setCurrentTopicInTheInput(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/widget/EditText;)V

    .line 55
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/android/component/TopicDialog;->selectAllTheTextInTheInput(Landroid/widget/EditText;)V

    .line 57
    invoke-direct {p0, p2, p1, v0, v1}, Lnet/usikkert/kouchat/android/component/TopicDialog;->createTopicDialog(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/view/View;Landroid/widget/EditText;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/component/TopicDialog;->makeSoftwareKeyboardVisible(Landroid/support/v7/app/AlertDialog;)V

    .line 60
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private blockNewLinesInTheInput(Landroid/widget/EditText;)V
    .locals 1

    .line 64
    new-instance v0, Lnet/usikkert/kouchat/android/component/NoNewLineTextWatcher;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/component/NoNewLineTextWatcher;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private createTopicDialog(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/content/Context;Landroid/view/View;Landroid/widget/EditText;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    .line 77
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const p2, 0x7f0d0071

    .line 80
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const p2, 0x7f060056

    .line 81
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 83
    new-instance p2, Lnet/usikkert/kouchat/android/component/TopicDialog$1;

    invoke-direct {p2, p0, p1, p4}, Lnet/usikkert/kouchat/android/component/TopicDialog$1;-><init>(Lnet/usikkert/kouchat/android/component/TopicDialog;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/widget/EditText;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private makeSoftwareKeyboardVisible(Landroid/support/v7/app/AlertDialog;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private selectAllTheTextInTheInput(Landroid/widget/EditText;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method

.method private setCurrentTopicInTheInput(Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;Landroid/widget/EditText;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
