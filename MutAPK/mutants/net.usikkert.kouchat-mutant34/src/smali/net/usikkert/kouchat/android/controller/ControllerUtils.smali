.class public Lnet/usikkert/kouchat/android/controller/ControllerUtils;
.super Ljava/lang/Object;
.source "ControllerUtils.java"


# static fields
.field public static final ONE_SECOND:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeLinksClickable(Landroid/widget/TextView;)V
    .locals 1

    .line 63
    invoke-static {}, Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public removeReferencesToTextViewFromText(Landroid/widget/TextView;)V
    .locals 4

    .line 89
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    .line 90
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/NoCopySpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/NoCopySpan;

    .line 92
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollTextViewToBottom(Landroid/widget/TextView;Landroid/widget/ScrollView;)V
    .locals 1

    .line 49
    new-instance v0, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;

    invoke-direct {v0, p0, p2, p1}, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;-><init>(Lnet/usikkert/kouchat/android/controller/ControllerUtils;Landroid/widget/ScrollView;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
