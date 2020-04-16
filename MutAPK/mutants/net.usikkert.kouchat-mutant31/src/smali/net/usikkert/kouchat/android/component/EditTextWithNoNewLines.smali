.class public Lnet/usikkert/kouchat/android/component/EditTextWithNoNewLines;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "EditTextWithNoNewLines.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/android/component/EditTextWithNoNewLines;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f020088

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lnet/usikkert/kouchat/android/component/EditTextWithNoNewLines;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Lnet/usikkert/kouchat/android/component/NoNewLineTextWatcher;

    invoke-direct {p1}, Lnet/usikkert/kouchat/android/component/NoNewLineTextWatcher;-><init>()V

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/EditTextWithNoNewLines;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
