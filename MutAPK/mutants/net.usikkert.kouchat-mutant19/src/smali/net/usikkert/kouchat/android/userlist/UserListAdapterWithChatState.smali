.class public Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;
.super Lnet/usikkert/kouchat/android/userlist/UserListAdapter;
.source "UserListAdapterWithChatState.java"


# instance fields
.field private dot:Landroid/graphics/drawable/Drawable;

.field private envelope:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;-><init>(Landroid/content/Context;)V

    const-string v0, "Context can not be null"

    .line 56
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->envelope:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->dot:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private showIfAway(Landroid/widget/TextView;Lnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 127
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private showIfCurrentlyWriting(Landroid/widget/TextView;Lnet/usikkert/kouchat/misc/User;)V
    .locals 1

    .line 119
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->isWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " *"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showIfMe(Landroid/widget/TextView;Lnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 111
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->isMe()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method private showIfNewPrivateMessage(Landroid/widget/ImageView;Lnet/usikkert/kouchat/misc/User;)V
    .locals 0

    .line 103
    invoke-virtual {p2}, Lnet/usikkert/kouchat/misc/User;->isNewPrivMsg()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 104
    iget-object p2, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->envelope:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p2, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 78
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    .line 82
    invoke-direct {p0, p3, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->showIfNewPrivateMessage(Landroid/widget/ImageView;Lnet/usikkert/kouchat/misc/User;)V

    .line 83
    invoke-direct {p0, v0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->showIfMe(Landroid/widget/TextView;Lnet/usikkert/kouchat/misc/User;)V

    .line 84
    invoke-direct {p0, v0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->showIfCurrentlyWriting(Landroid/widget/TextView;Lnet/usikkert/kouchat/misc/User;)V

    .line 85
    invoke-direct {p0, v0, p1}, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->showIfAway(Landroid/widget/TextView;Lnet/usikkert/kouchat/misc/User;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    invoke-super {p0}, Lnet/usikkert/kouchat/android/userlist/UserListAdapter;->onDestroy()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->envelope:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object v0, p0, Lnet/usikkert/kouchat/android/userlist/UserListAdapterWithChatState;->dot:Landroid/graphics/drawable/Drawable;

    return-void
.end method
