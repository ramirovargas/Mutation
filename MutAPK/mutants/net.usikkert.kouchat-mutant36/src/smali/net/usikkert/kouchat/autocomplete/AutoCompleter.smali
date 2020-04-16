.class public Lnet/usikkert/kouchat/autocomplete/AutoCompleter;
.super Ljava/lang/Object;
.source "AutoCompleter.java"


# instance fields
.field private final autoCompleteLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;",
            ">;"
        }
    .end annotation
.end field

.field private lastCompletedLine:Ljava/lang/String;

.field private lastCompletedWord:Ljava/lang/String;

.field private lastWord:Ljava/lang/String;

.field private newCaretPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastCompletedLine:Ljava/lang/String;

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastCompletedWord:Ljava/lang/String;

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastWord:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->autoCompleteLists:Ljava/util/List;

    return-void
.end method

.method private continueLastSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastCompletedWord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastCompletedLine:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findNextSuggestionPosition(ZLjava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 153
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 154
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    if-le p1, v1, :cond_2

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    :cond_4
    return p1
.end method

.method private findStartPosition(Ljava/lang/String;I)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    const/16 v0, 0x20

    .line 219
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method private findStopPosition(Ljava/lang/String;I)I
    .locals 1

    const/16 v0, 0x20

    .line 202
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :cond_0
    return p2
.end method

.method private getAutoCompleteList(Ljava/lang/String;)Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;
    .locals 3

    .line 239
    iget-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->autoCompleteLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;

    .line 240
    invoke-interface {v1, p1}, Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;->acceptsWord(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAutoCompleteSuggestions([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 259
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 260
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addAutoCompleteList(Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->autoCompleteLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public completeWord(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 95
    iget-object v1, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->autoCompleteLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 96
    invoke-direct {p0, p1, p2}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->findStopPosition(Ljava/lang/String;I)I

    move-result v1

    .line 97
    invoke-direct {p0, p1, p2}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->findStartPosition(Ljava/lang/String;I)I

    move-result p2

    .line 98
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 101
    invoke-direct {p0, v2, p1}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->continueLastSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iget-object v4, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastWord:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 110
    :goto_0
    invoke-direct {p0, v4}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->getAutoCompleteList(Ljava/lang/String;)Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 114
    invoke-interface {v5}, Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;->getWordList()[Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-direct {p0, v5, v4}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->getAutoCompleteSuggestions([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 116
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 117
    invoke-direct {p0, v3, v4, v2}, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->findNextSuggestionPosition(ZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->newCaretPosition:I

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    iput-object p1, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastCompletedLine:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastCompletedWord:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 127
    iput-object v2, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->lastWord:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public getNewCaretPosition()I
    .locals 1

    .line 274
    iget v0, p0, Lnet/usikkert/kouchat/autocomplete/AutoCompleter;->newCaretPosition:I

    return v0
.end method
