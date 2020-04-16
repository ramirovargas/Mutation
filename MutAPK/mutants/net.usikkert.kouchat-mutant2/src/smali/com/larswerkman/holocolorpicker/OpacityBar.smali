.class public Lcom/larswerkman/holocolorpicker/OpacityBar;
.super Landroid/view/View;
.source "OpacityBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_DEFAULT:Z = true

.field private static final ORIENTATION_HORIZONTAL:Z = true

.field private static final ORIENTATION_VERTICAL:Z = false

.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_OPACITY:Ljava/lang/String; = "opacity"

.field private static final STATE_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"


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

.field private mOpacToPosFactor:F

.field private mOrientation:Z

.field private mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

.field private mPosToOpacFactor:F

.field private mPreferredBarLength:I

.field private oldChangedListenerOpacity:I

.field private onOpacityChangedListener:Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 171
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 125
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 125
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 p1, 0x0

    .line 177
    invoke-direct {p0, p2, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 125
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 182
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private calculateColor(I)V
    .locals 2

    .line 476
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 479
    :cond_0
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    if-le p1, v1, :cond_1

    .line 480
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 483
    :cond_1
    :goto_0
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    int-to-float p1, p1

    mul-float v1, v1, p1

    .line 484
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    .line 483
    invoke-static {p1, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    .line 486
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v1, 0xfa

    if-le p1, v1, :cond_2

    .line 487
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    goto :goto_1

    .line 488
    :cond_2
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_3

    .line 489
    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    :cond_3
    :goto_1
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 188
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 190
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_thickness:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_thickness:I

    .line 192
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    .line 193
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_length:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_length:I

    .line 194
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 195
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPreferredBarLength:I

    .line 196
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_pointer_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_radius:I

    .line 198
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerRadius:I

    .line 199
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_pointer_halo_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_halo_radius:I

    .line 201
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 199
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    .line 202
    sget p2, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_orientation_horizontal:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOrientation:Z

    .line 205
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    .line 208
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 210
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget p2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 212
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 213
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 217
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    const p2, -0x7e0100

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float p1, p2, p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    .line 220
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    return v0
.end method

.method public getOnOpacityChangedListener()Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->onOpacityChangedListener:Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;

    return-object v0
.end method

.method public getOpacity()I
    .locals 3

    .line 459
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 460
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    const/16 v0, 0xff

    return v0

    :cond_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 323
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOrientation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 324
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 325
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    goto :goto_0

    .line 328
    :cond_0
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    .line 329
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    .line 333
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 335
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 225
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPreferredBarLength:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 230
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOrientation:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 236
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 237
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_2

    .line 244
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 250
    :cond_2
    :goto_1
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 251
    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 252
    iget-boolean p2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOrientation:Z

    if-nez p2, :cond_3

    .line 253
    iget p2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setMeasuredDimension(II)V

    goto :goto_2

    .line 257
    :cond_3
    iget p2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 529
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    .line 531
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 532
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "color"

    .line 534
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    const-string v0, "opacity"

    .line 535
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setOpacity(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 517
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 519
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    .line 520
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "color"

    .line 521
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v0, "opacity"

    .line 522
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getOpacity()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 22

    move-object/from16 v0, p0

    .line 264
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 268
    iget-boolean v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOrientation:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 269
    iget v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v4, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v1, v4

    .line 270
    iget v4, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    .line 271
    iget v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, p1, v5

    iput v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 272
    iget-object v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v6, v6

    iget v7, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v8, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v9, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v10, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 278
    :cond_0
    iget v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    .line 279
    iget v4, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v4, v5

    .line 280
    iget v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, p2, v5

    iput v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 281
    iget-object v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v7, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    div-int/2addr v7, v3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v7, v7

    iget v8, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v9, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    div-int/2addr v9, v3

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v10, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 288
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 289
    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v7, v6

    const/4 v8, 0x0

    int-to-float v9, v1

    int-to-float v10, v4

    new-array v11, v3, [I

    iget-object v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    const/4 v3, 0x0

    .line 291
    invoke-static {v3, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    aput v1, v11, v3

    const/16 v1, 0xff

    iget-object v3, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    .line 292
    invoke-static {v1, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    aput v1, v11, v2

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    goto :goto_1

    .line 295
    :cond_1
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v15, v5

    const/16 v16, 0x0

    int-to-float v1, v1

    int-to-float v4, v4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v2

    move/from16 v17, v1

    move/from16 v18, v4

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    const v1, -0x7e0100

    .line 298
    iget-object v2, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 301
    :goto_1
    iget-object v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 302
    iget v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v1, v2, v1

    iput v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    .line 303
    iget v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    const/4 v1, 0x3

    .line 305
    new-array v1, v1, [F

    .line 306
    iget v2, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    iget v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    iget v2, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    goto :goto_2

    .line 312
    :cond_2
    iget v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v2, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x81ff00
        -0x7e0100
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 340
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 344
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOrientation:Z

    if-ne v0, v1, :cond_0

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 351
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 364
    :pswitch_0
    iget-boolean p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mIsMovingPointer:Z

    if-eqz p1, :cond_6

    .line 366
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr p1, v3

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    .line 368
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 369
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 370
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_1

    .line 372
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    goto :goto_1

    .line 375
    :cond_2
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_4

    .line 376
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 377
    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    .line 378
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_3

    .line 380
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 382
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    goto :goto_1

    .line 383
    :cond_4
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    .line 384
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 385
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    .line 386
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_5

    .line 388
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    .line 393
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->onOpacityChangedListener:Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->oldChangedListenerOpacity:I

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getOpacity()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 394
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->onOpacityChangedListener:Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getOpacity()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;->onOpacityChanged(I)V

    .line 395
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getOpacity()I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->oldChangedListenerOpacity:I

    goto :goto_2

    .line 399
    :pswitch_1
    iput-boolean v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mIsMovingPointer:Z

    goto :goto_2

    .line 353
    :pswitch_2
    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mIsMovingPointer:Z

    .line 355
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_7

    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_7

    .line 357
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 358
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 359
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    :cond_7
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 12

    .line 414
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOrientation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 415
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v2

    .line 416
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    goto :goto_0

    .line 419
    :cond_0
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    .line 420
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v2, v3

    .line 423
    :goto_0
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 424
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v5, v4

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, v2

    const/4 v0, 0x2

    new-array v9, v0, [I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    const/4 v2, 0x0

    .line 426
    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    aput v0, v9, v2

    aput p1, v9, v1

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    .line 428
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 429
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 430
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_1

    .line 432
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    return-void
.end method

.method public setOnOpacityChangedListener(Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->onOpacityChangedListener:Lcom/larswerkman/holocolorpicker/OpacityBar$OnOpacityChangedListener;

    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    .line 443
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 445
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 446
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    return-void
.end method
