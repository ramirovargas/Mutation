.class public Lnet/usikkert/kouchat/misc/CommandHistory;
.super Ljava/lang/Object;
.source "CommandHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/usikkert/kouchat/misc/CommandHistory$Direction;
    }
.end annotation


# static fields
.field private static final MAX_COMMANDS:I = 0x32


# instance fields
.field private cursor:I

.field private direction:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

.field private final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    .line 67
    sget-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->MIDDLE:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->direction:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 82
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_2

    .line 90
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    :cond_2
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 95
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    iput p1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    .line 98
    :cond_3
    sget-object p1, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->MIDDLE:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->direction:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    return-void
.end method

.method public goDown()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 131
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 132
    iget v1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 133
    iget v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    .line 134
    sget-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->DOWN:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->direction:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    .line 135
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    iget v1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_0
    sget-object v1, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->MIDDLE:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    iput-object v1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->direction:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public goUp()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 110
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->direction:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    sget-object v1, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->MIDDLE:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    if-lez v0, :cond_0

    .line 112
    iget v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    .line 115
    :cond_0
    sget-object v0, Lnet/usikkert/kouchat/misc/CommandHistory$Direction;->UP:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->direction:Lnet/usikkert/kouchat/misc/CommandHistory$Direction;

    .line 116
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->history:Ljava/util/List;

    iget v1, p0, Lnet/usikkert/kouchat/misc/CommandHistory;->cursor:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method
