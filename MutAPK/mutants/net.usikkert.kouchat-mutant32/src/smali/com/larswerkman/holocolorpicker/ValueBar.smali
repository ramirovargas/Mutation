.class public Lcom/larswerkman/holocolorpicker/ValueBar;
.super Landroid/view/View;
.source "ValueBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_DEFAULT:Z = true

.field private static final ORIENTATION_HORIZONTAL:Z = true

.field private static final ORIENTATION_VERTICAL:Z = false

.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

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

.field private mPosToSatFactor:F

.field private mPreferredBarLength:I

.field private mSatToPosFactor:F

.field private oldChangedListenerValue:I

.field private onValueChangedListener:Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 171
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 125
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 125
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 p1, 0x0

    .line 177
    invoke-direct {p0, p2, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    const/4 p1, 0x3

    .line 125
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 182
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/ValueBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private calculateColor(I)V
    .locals 4

    .line 466
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 469
    :cond_0
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    if-le p1, v1, :cond_1

    .line 470
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    :cond_1
    :goto_0
    const/4 v1, 0x3

    .line 472
    new-array v1, v1, [F

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    aget v2, v2, v0

    aput v2, v1, v0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    aput v0, v1, v2

    const/4 v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPosToSatFactor:F

    int-to-float p1, p1

    mul-float v3, v3, p1

    sub-float/2addr v2, v3

    aput v2, v1, v0

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 188
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->getContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    .line 193
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_length:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_length:I

    .line 194
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    .line 195
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPreferredBarLength:I

    .line 196
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_pointer_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_radius:I

    .line 198
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerRadius:I

    .line 199
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_pointer_halo_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_halo_radius:I

    .line 201
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 199
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    .line 202
    sget p2, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars_bar_orientation_horizontal:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mOrientation:Z

    .line 205
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    .line 208
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 210
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 212
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 213
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 217
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    const p2, -0x7e0100

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float p1, p2, p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPosToSatFactor:F

    .line 220
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    return v0
.end method

.method public getOnValueChangedListener()Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->onValueChangedListener:Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 324
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mOrientation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 326
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    goto :goto_0

    .line 329
    :cond_0
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    .line 330
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    .line 334
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 336
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 225
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPreferredBarLength:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 230
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mOrientation:Z

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
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 251
    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    .line 252
    iget-boolean p2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mOrientation:Z

    if-nez p2, :cond_3

    .line 253
    iget p2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/larswerkman/holocolorpicker/ValueBar;->setMeasuredDimension(II)V

    goto :goto_2

    .line 257
    :cond_3
    iget p2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 516
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    .line 518
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 519
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "color"

    .line 521
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    const-string v0, "value"

    .line 522
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setValue(F)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 501
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    .line 504
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "color"

    .line 505
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const/4 v0, 0x3

    .line 507
    new-array v0, v0, [F

    .line 508
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const-string v2, "value"

    const/4 v3, 0x2

    .line 509
    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 22

    move-object/from16 v0, p0

    .line 264
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 268
    iget-boolean v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mOrientation:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 269
    iget v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v4, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v1, v4

    .line 270
    iget v4, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    .line 271
    iget v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, p1, v5

    iput v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    .line 272
    iget-object v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v6, v6

    iget v7, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v8, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v9, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v10, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 278
    :cond_0
    iget v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    .line 279
    iget v4, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v4, v5

    .line 280
    iget v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, p2, v5

    iput v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    .line 281
    iget-object v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v7, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    div-int/2addr v7, v3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v7, v7

    iget v8, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v9, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    div-int/2addr v9, v3

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v10, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 288
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 289
    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v7, v6

    const/4 v8, 0x0

    int-to-float v9, v1

    int-to-float v10, v4

    new-array v11, v3, [I

    const/4 v1, 0x0

    const/16 v4, 0xff

    iget-object v6, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    .line 291
    invoke-static {v4, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    aput v4, v11, v1

    const/high16 v1, -0x1000000

    aput v1, v11, v2

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    goto :goto_1

    .line 294
    :cond_1
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v15, v5

    const/16 v16, 0x0

    int-to-float v1, v1

    int-to-float v4, v4

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v2

    move/from16 v17, v1

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    const v1, -0x7e0100

    .line 298
    iget-object v2, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 301
    :goto_1
    iget-object v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 302
    iget v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iput v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPosToSatFactor:F

    .line 303
    iget v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    const/4 v1, 0x3

    .line 305
    new-array v1, v1, [F

    .line 306
    iget v2, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 309
    iget v2, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v2, v2

    iget v4, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    aget v1, v1, v3

    mul-float v4, v4, v1

    sub-float/2addr v2, v4

    iget v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 310
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    goto :goto_2

    .line 313
    :cond_2
    iget v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iput v1, v0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        -0x7e0100
        -0x1000000
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 345
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mOrientation:Z

    if-ne v0, v1, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 352
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 365
    :pswitch_0
    iget-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mIsMovingPointer:Z

    if-eqz p1, :cond_6

    .line 367
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    .line 369
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 370
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 371
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 374
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    goto :goto_1

    .line 377
    :cond_2
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_4

    .line 378
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 379
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    .line 380
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_3

    .line 382
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 383
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 385
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    goto :goto_1

    .line 386
    :cond_4
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    .line 387
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    const/high16 p1, -0x1000000

    .line 388
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    .line 389
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_5

    .line 391
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 392
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    .line 397
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->onValueChangedListener:Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->oldChangedListenerValue:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    if-eq p1, v0, :cond_7

    .line 398
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->onValueChangedListener:Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-interface {p1, v0}, Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;->onValueChanged(I)V

    .line 399
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->oldChangedListenerValue:I

    goto :goto_2

    :pswitch_1
    const/4 p1, 0x0

    .line 403
    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mIsMovingPointer:Z

    goto :goto_2

    .line 354
    :pswitch_2
    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mIsMovingPointer:Z

    .line 356
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_7

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_7

    .line 358
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 359
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 360
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    :cond_7
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 12

    .line 418
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mOrientation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 419
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v2

    .line 420
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    goto :goto_0

    .line 423
    :cond_0
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    .line 424
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v2, v3

    .line 427
    :goto_0
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 428
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v5, v4

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, v2

    const/4 v0, 0x2

    new-array v9, v0, [I

    const/4 v0, 0x0

    aput p1, v9, v0

    const/high16 p1, -0x1000000

    aput p1, v9, v1

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    .line 431
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 432
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 433
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_1

    .line 435
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 436
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    invoke-virtual {p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->hasOpacityBar()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->onValueChangedListener:Lcom/larswerkman/holocolorpicker/ValueBar$OnValueChangedListener;

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 448
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 449
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 451
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 452
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 455
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    return-void
.end method
