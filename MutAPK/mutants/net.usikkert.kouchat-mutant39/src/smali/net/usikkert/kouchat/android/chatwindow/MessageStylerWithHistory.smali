.class public Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;
.super Ljava/lang/Object;
.source "MessageStylerWithHistory.java"


# instance fields
.field private final history:Landroid/text/SpannableStringBuilder;

.field private final smileyLocator:Lnet/usikkert/kouchat/android/smiley/SmileyLocator;

.field private final smileyMap:Lnet/usikkert/kouchat/android/smiley/SmileyMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 54
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;

    invoke-direct {v0, p1}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->smileyMap:Lnet/usikkert/kouchat/android/smiley/SmileyMap;

    .line 57
    new-instance p1, Lnet/usikkert/kouchat/android/smiley/SmileyLocator;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->smileyMap:Lnet/usikkert/kouchat/android/smiley/SmileyMap;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getSmileyCodes()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/usikkert/kouchat/android/smiley/SmileyLocator;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->smileyLocator:Lnet/usikkert/kouchat/android/smiley/SmileyLocator;

    .line 58
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->history:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private addColor(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;)V
    .locals 1

    .line 94
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p3, v0, p2, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private addLinks(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    return-void
.end method

.method private addSmileys(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .line 102
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->smileyLocator:Lnet/usikkert/kouchat/android/smiley/SmileyLocator;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/android/smiley/SmileyLocator;->findSmileys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/usikkert/kouchat/android/smiley/Smiley;

    .line 105
    iget-object v1, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->smileyMap:Lnet/usikkert/kouchat/android/smiley/SmileyMap;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/smiley/Smiley;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getSmiley(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/smiley/Smiley;->getCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/smiley/Smiley;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lnet/usikkert/kouchat/android/smiley/Smiley;->getEndPosition()I

    move-result v0

    invoke-virtual {p2, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fixLineHeight(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 2

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 116
    new-instance v0, Lnet/usikkert/kouchat/android/component/DefaultLineHeightSpan;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/component/DefaultLineHeightSpan;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHistory()Ljava/lang/CharSequence;
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->history:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public styleAndAppend(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->addColor(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;)V

    .line 75
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->addSmileys(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 76
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->addLinks(Landroid/text/SpannableStringBuilder;)V

    .line 77
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->fixLineHeight(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 79
    iget-object p1, p0, Lnet/usikkert/kouchat/android/chatwindow/MessageStylerWithHistory;->history:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
