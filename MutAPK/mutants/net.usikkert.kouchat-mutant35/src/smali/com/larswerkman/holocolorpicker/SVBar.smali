.class public Lcom/larswerkman/holocolorpicker/SVBar;
.super Landroid/view/View;
.source "SVBar.java"


# static fields
.field private static final ORIENTATION_DEFAULT:Z = true

.field private static final ORIENTATION_HORIZONTAL:Z = true

.field private static final ORIENTATION_VERTICAL:Z = false

.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

.field private static final STATE_SATURATION:Ljava/lang/String; = "saturation"

.field private static final STATE_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mBarLength:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarPointerHaloPaint:Landroid/graphics/Paint;

.field private mBarPointerHaloRadius:I

.field private mBarPointerPaint:Landroid/graphics/Paint;

.field private mBarPointerPosition:I

.field private mBarPointerRadius:I

.field private mBarRect:Landroid/graphics/RectF;

.field private mBarThickness:I

.field private mColor:I

.field private mHSVColor:[F

.field private mIsMovingPointer:Z

.field private mOrientation:Z

.field private mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

.field private mPosToSVFactor:F

.field private mPreferredBarLength:I

.field private mSVToPosFactor:F

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 149
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 126
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 126
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 p1, 0x0

    .line 155
    invoke-direct {p0, p2, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 126
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 160
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private calculateColor(I)V
    .locals 6

    .line 461
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    sub-int/2addr p1, v0

    .line 462
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    if-ge p1, v0, :cond_0

    .line 463
    new-array v0, v3, [F

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    aget v3, v3, v5

    aput v3, v0, v5

    aput v4, v0, v2

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/2addr v3, v1

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float v2, v2, p1

    sub-float/2addr v4, v2

    aput v4, v0, v1

    .line 464
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 467
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    if-ge p1, v0, :cond_1

    .line 468
    new-array v0, v3, [F

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    aget v3, v3, v5

    aput v3, v0, v5

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    int-to-float p1, p1

    mul-float v3, v3, p1

    aput v3, v0, v2

    aput v4, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    goto :goto_0

    .line 471
    :cond_1
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    .line 472
    new-array p1, v3, [F

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    aget v0, v0, v5

    aput v0, p1, v5

    aput v4, p1, v2

    aput v4, p1, v1

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    goto :goto_0

    :cond_2
    if-gtz p1, :cond_3

    const/4 p1, -0x1

    .line 476
    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    goto :goto_0

    .line 477
    :cond_3
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    if-lt p1, v0, :cond_4

    const/high16 p1, -0x1000000

    .line 478
    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    :cond_4
    :goto_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 166
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 168
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_thickness:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_thickness:I

    .line 170
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    .line 171
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_length:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_length:I

    .line 172
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    .line 173
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPreferredBarLength:I

    .line 174
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_pointer_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_radius:I

    .line 176
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerRadius:I

    .line 177
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_pointer_halo_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_halo_radius:I

    .line 179
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 177
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    .line 180
    sget p2, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_orientation_horizontal:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mOrientation:Z

    .line 183
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    .line 186
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 188
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 190
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 191
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 194
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 195
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    const p2, -0x7e0100

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    .line 198
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 304
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mOrientation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 306
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    goto :goto_0

    .line 309
    :cond_0
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    .line 310
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    .line 314
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 316
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 203
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPreferredBarLength:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 208
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mOrientation:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 214
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_2

    .line 222
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 228
    :cond_2
    :goto_1
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 229
    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    .line 230
    iget-boolean p2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mOrientation:Z

    if-nez p2, :cond_3

    .line 231
    iget p2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/larswerkman/holocolorpicker/SVBar;->setMeasuredDimension(II)V

    goto :goto_2

    .line 235
    :cond_3
    iget p2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 524
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    .line 526
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 527
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "color"

    .line 529
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    const-string v0, "saturation"

    .line 530
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "saturation"

    .line 531
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->setSaturation(F)V

    goto :goto_0

    :cond_0
    const-string v0, "value"

    .line 533
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->setValue(F)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 506
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 508
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    .line 509
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "color"

    .line 510
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const/4 v0, 0x3

    .line 511
    new-array v0, v0, [F

    .line 512
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x1

    .line 513
    aget v3, v0, v2

    const/4 v4, 0x2

    aget v5, v0, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    const-string v3, "saturation"

    .line 514
    aget v0, v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    const-string v2, "value"

    .line 516
    aget v0, v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 23

    move-object/from16 v0, p0

    .line 242
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 246
    iget-boolean v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mOrientation:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 247
    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v4, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v1, v4

    .line 248
    iget v4, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    .line 249
    iget v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, p1, v5

    iput v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    .line 250
    iget-object v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v6, v6

    iget v7, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v8, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v9, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v10, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 256
    :cond_0
    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    .line 257
    iget v4, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v4, v5

    .line 258
    iget v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, p2, v5

    iput v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    .line 259
    iget-object v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v7, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    div-int/2addr v7, v3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v7, v7

    iget v8, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v9, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    div-int/2addr v9, v3

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v10, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 266
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/larswerkman/holocolorpicker/SVBar;->isInEditMode()Z

    move-result v5

    const/4 v6, 0x3

    if-nez v5, :cond_1

    .line 267
    new-instance v5, Landroid/graphics/LinearGradient;

    iget v7, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v8, v7

    const/4 v9, 0x0

    int-to-float v10, v1

    int-to-float v11, v4

    new-array v12, v6, [I

    const/4 v1, 0x0

    const/4 v4, -0x1

    aput v4, v12, v1

    iget-object v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    .line 269
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    aput v1, v12, v2

    const/high16 v1, -0x1000000

    aput v1, v12, v3

    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    goto :goto_1

    .line 272
    :cond_1
    new-instance v5, Landroid/graphics/LinearGradient;

    iget v7, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v7, v7

    const/16 v17, 0x0

    int-to-float v1, v1

    int-to-float v4, v4

    new-array v8, v6, [I

    fill-array-data v8, :array_0

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v15, v5

    move/from16 v16, v7

    move/from16 v18, v1

    move/from16 v19, v4

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    const v1, -0x7e0100

    .line 276
    iget-object v4, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 279
    :goto_1
    iget-object v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 280
    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v1, v5, v1

    iput v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    .line 281
    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v1, v5

    iput v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    .line 282
    new-array v1, v6, [F

    .line 283
    iget v4, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-static {v4, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 284
    aget v4, v1, v2

    aget v6, v1, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 285
    iget v4, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    aget v1, v1, v2

    mul-float v4, v4, v1

    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    goto :goto_2

    .line 288
    :cond_2
    iget v2, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    aget v1, v1, v3

    sub-float/2addr v5, v1

    mul-float v2, v2, v5

    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 289
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 292
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/larswerkman/holocolorpicker/SVBar;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    iget v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/2addr v1, v3

    iget v2, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    :cond_3
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x7e0100
        -0x1000000
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 321
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mOrientation:Z

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 332
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 345
    :pswitch_0
    iget-boolean p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mIsMovingPointer:Z

    if-eqz p1, :cond_6

    .line 347
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    .line 349
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 350
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 351
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 354
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto/16 :goto_1

    .line 357
    :cond_2
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_4

    .line 358
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    const/4 p1, -0x1

    .line 359
    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    .line 360
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 363
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto :goto_1

    .line 366
    :cond_4
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    .line 367
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    const/high16 p1, -0x1000000

    .line 368
    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    .line 369
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_5

    .line 371
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 372
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 374
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x0

    .line 379
    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mIsMovingPointer:Z

    goto :goto_1

    .line 334
    :pswitch_2
    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mIsMovingPointer:Z

    .line 336
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_6

    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6

    .line 338
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 339
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 340
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    :cond_6
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 11

    .line 432
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mOrientation:Z

    if-eqz v0, :cond_0

    .line 433
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    .line 434
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    goto :goto_0

    .line 436
    :cond_0
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    .line 437
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v1, v2

    .line 440
    :goto_0
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    invoke-static {p1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 441
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v4, v3

    const/4 v5, 0x0

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v0, 0x3

    new-array v8, v0, [I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, v8, v0

    const/4 v0, 0x1

    aput p1, v8, v0

    const/4 p1, 0x2

    const/high16 v0, -0x1000000

    aput v0, v8, p1

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    .line 444
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 445
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 446
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_1

    .line 448
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 449
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    invoke-virtual {p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->hasOpacityBar()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    .line 391
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    mul-float v0, v0, p1

    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 393
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 394
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 399
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 410
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 412
    iget p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 413
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 418
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    return-void
.end method
