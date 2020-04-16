.class public Lnet/usikkert/kouchat/android/smiley/SmileyMap;
.super Ljava/lang/Object;
.source "SmileyMap.java"


# instance fields
.field private final smileyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 68
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->loadSmileys(Landroid/content/res/Resources;)V

    return-void
.end method

.method private getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1
.end method

.method private loadSmileys(Landroid/content/res/Resources;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":)"

    const v2, 0x7f060061

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":("

    const v2, 0x7f06005f

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":p"

    const v2, 0x7f060063

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":D"

    const v2, 0x7f060062

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ";)"

    const v2, 0x7f060064

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":O"

    const v2, 0x7f06005e

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":@"

    const v2, 0x7f06005a

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":S"

    const v2, 0x7f06005b

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ";("

    const v2, 0x7f06005c

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, ":$"

    const v2, 0x7f06005d

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    const-string v1, "8)"

    const v2, 0x7f060060

    invoke-direct {p0, p1, v2}, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSmiley(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "Smiley code can not be empty"

    .line 82
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smiley with code \'%s\' does not exist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getSmileyCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/SmileyMap;->smileyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
