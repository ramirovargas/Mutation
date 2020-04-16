.class public Lcom/larswerkman/holocolorpicker/ColorPicker;
.super Landroid/view/View;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;,
        Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final STATE_ANGLE:Ljava/lang/String; = "angle"

.field private static final STATE_OLD_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

.field private static final STATE_SHOW_OLD_COLOR:Ljava/lang/String; = "showColor"


# instance fields
.field private mAngle:F

.field private mCenterHaloPaint:Landroid/graphics/Paint;

.field private mCenterNewColor:I

.field private mCenterNewPaint:Landroid/graphics/Paint;

.field private mCenterOldColor:I

.field private mCenterOldPaint:Landroid/graphics/Paint;

.field private mCenterRectangle:Landroid/graphics/RectF;

.field private mColor:I

.field private mColorCenterHaloRadius:I

.field private mColorCenterRadius:I

.field private mColorPointerHaloRadius:I

.field private mColorPointerRadius:I

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelRadius:I

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private mColorWheelThickness:I

.field private mHSV:[F

.field private mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

.field private mPointerColor:Landroid/graphics/Paint;

.field private mPointerHaloPaint:Landroid/graphics/Paint;

.field private mPreferredColorCenterHaloRadius:I

.field private mPreferredColorCenterRadius:I

.field private mPreferredColorWheelRadius:I

.field private mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

.field private mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

.field private mShowCenterOldColor:Z

.field private mSlopX:F

.field private mSlopY:F

.field private mTouchAnywhereOnColorWheelEnabled:Z

.field private mTranslationOffset:F

.field private mUserIsMovingPointer:Z

.field private mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

.field private oldChangedListenerColor:I

.field private oldSelectedListenerColor:I

.field private onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

.field private onColorSelectedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 57
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 241
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 116
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    const/4 v0, 0x3

    .line 201
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 211
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 216
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    const/4 v1, 0x1

    .line 223
    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTouchAnywhereOnColorWheelEnabled:Z

    .line 228
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 242
    invoke-direct {p0, v0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 116
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    const/4 v0, 0x3

    .line 201
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 211
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 216
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    const/4 v1, 0x1

    .line 223
    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTouchAnywhereOnColorWheelEnabled:Z

    .line 228
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 247
    invoke-direct {p0, p2, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 251
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 116
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    const/4 p1, 0x3

    .line 201
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 211
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 216
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTouchAnywhereOnColorWheelEnabled:Z

    .line 228
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 252
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private ave(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p3, p3, p2

    .line 464
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private calculateColor(F)I
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    :cond_0
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 482
    sget-object p1, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    .line 483
    sget-object p1, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    aget p1, p1, v0

    return p1

    :cond_1
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    .line 486
    sget-object p1, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    sget-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    .line 487
    sget-object p1, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    sget-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    return p1

    .line 490
    :cond_2
    sget-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int v0, p1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    .line 494
    sget-object v1, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    aget v1, v1, v0

    .line 495
    sget-object v2, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    .line 496
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result v2

    .line 497
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result v3

    .line 498
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result v4

    .line 499
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result p1

    .line 501
    invoke-static {v2, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    .line 502
    invoke-static {v2, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private calculatePointerPosition(F)[F
    .locals 6

    .line 688
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    double-to-float p1, v0

    .line 689
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/4 v1, 0x2

    .line 691
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    return-object v1
.end method

.method private colorToAngle(I)F
    .locals 2

    const/4 v0, 0x3

    .line 578
    new-array v0, v0, [F

    .line 579
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    .line 581
    aget p1, v0, p1

    neg-float p1, p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 324
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 326
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker_color_wheel_thickness:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->color_wheel_thickness:I

    .line 328
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 326
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelThickness:I

    .line 329
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker_color_wheel_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->color_wheel_radius:I

    .line 331
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 329
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    .line 332
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    .line 333
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker_color_center_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->color_center_radius:I

    .line 335
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    .line 336
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterRadius:I

    .line 337
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker_color_center_halo_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->color_center_halo_radius:I

    .line 339
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    .line 340
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterHaloRadius:I

    .line 341
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker_color_pointer_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->color_pointer_radius:I

    .line 343
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 341
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerRadius:I

    .line 344
    sget v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker_color_pointer_halo_radius:I

    sget v1, Lcom/larswerkman/holocolorpicker/R$dimen;->color_pointer_halo_radius:I

    .line 346
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 344
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    .line 348
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, -0x4036f025

    .line 350
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    .line 352
    new-instance p1, Landroid/graphics/SweepGradient;

    sget-object p2, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, p2, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 354
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    .line 355
    iget-object p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 356
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelThickness:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 359
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 360
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 363
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    .line 364
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    .line 367
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    .line 371
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    .line 375
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 378
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    .line 379
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    .line 380
    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mShowCenterOldColor:Z

    return-void
.end method


# virtual methods
.method public addOpacityBar(Lcom/larswerkman/holocolorpicker/OpacityBar;)V
    .locals 1

    .line 712
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 714
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    invoke-virtual {p1, p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 715
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    return-void
.end method

.method public addSVBar(Lcom/larswerkman/holocolorpicker/SVBar;)V
    .locals 1

    .line 700
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 702
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    invoke-virtual {p1, p0}, Lcom/larswerkman/holocolorpicker/SVBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 703
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    return-void
.end method

.method public addSaturationBar(Lcom/larswerkman/holocolorpicker/SaturationBar;)V
    .locals 1

    .line 719
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    .line 720
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    invoke-virtual {p1, p0}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 721
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    return-void
.end method

.method public addValueBar(Lcom/larswerkman/holocolorpicker/ValueBar;)V
    .locals 1

    .line 725
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 726
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    invoke-virtual {p1, p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 727
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    return-void
.end method

.method public changeOpacityBarColor(I)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    :cond_0
    return-void
.end method

.method public changeSaturationBarColor(I)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    :cond_0
    return-void
.end method

.method public changeValueBarColor(I)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    return v0
.end method

.method public getOldCenterColor()I
    .locals 1

    .line 761
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    return v0
.end method

.method public getOnColorChangedListener()Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method public getOnColorSelectedListener()Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorSelectedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;

    return-object v0
.end method

.method public getShowOldCenterColor()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mShowCenterOldColor:Z

    return v0
.end method

.method public getTouchAnywhereOnColorWheel()Z
    .locals 1

    .line 882
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTouchAnywhereOnColorWheelEnabled:Z

    return v0
.end method

.method public hasOpacityBar()Z
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSVBar()Z
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSaturationBar()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValueBar()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 388
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 391
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 393
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 396
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 401
    aget v1, v0, v1

    aget v0, v0, v3

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 405
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 407
    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mShowCenterOldColor:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 412
    iget-object v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x43340000    # 180.0f

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 422
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 424
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 425
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 426
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 427
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 435
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-ne v2, v4, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    .line 443
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 448
    :cond_3
    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 449
    invoke-virtual {p0, p1, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setMeasuredDimension(II)V

    int-to-float p2, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    .line 450
    iput p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    .line 453
    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelThickness:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    .line 454
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 457
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterRadius:I

    int-to-float p1, p1

    iget p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float p2, p2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    .line 458
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterHaloRadius:I

    int-to-float p1, p1

    iget p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float p2, p2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    .line 459
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    iget p2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 864
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    .line 866
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 867
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "angle"

    .line 869
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    const-string v0, "color"

    .line 870
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOldCenterColor(I)V

    const-string v0, "showColor"

    .line 871
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mShowCenterOldColor:Z

    .line 872
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result p1

    .line 873
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 874
    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 851
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 853
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    .line 854
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "angle"

    .line 855
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "color"

    .line 856
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "showColor"

    .line 857
    iget-boolean v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mShowCenterOldColor:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 586
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    sub-float/2addr v0, v2

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    sub-float/2addr v2, v3

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 669
    :pswitch_0
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorSelectedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->oldSelectedListenerColor:I

    if-eq p1, v0, :cond_9

    .line 670
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorSelectedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    invoke-interface {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;->onColorSelected(I)V

    .line 671
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->oldSelectedListenerColor:I

    goto/16 :goto_0

    .line 627
    :pswitch_1
    iget-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    if-eqz p1, :cond_4

    .line 628
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSlopY:F

    sub-float/2addr v2, p1

    float-to-double v2, v2

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSlopX:F

    sub-float/2addr v0, p1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    .line 629
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result p1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 633
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    .line 637
    :cond_0
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz p1, :cond_1

    .line 638
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    .line 641
    :cond_1
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-eqz p1, :cond_2

    .line 642
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    .line 645
    :cond_2
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    if-eqz p1, :cond_3

    .line 646
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {p1, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    .line 649
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    .line 653
    :cond_4
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    .line 658
    :pswitch_2
    iput-boolean v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 659
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 661
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorSelectedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->oldSelectedListenerColor:I

    if-eq p1, v0, :cond_5

    .line 662
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorSelectedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    invoke-interface {p1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;->onColorSelected(I)V

    .line 663
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->oldSelectedListenerColor:I

    .line 666
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    .line 595
    :pswitch_3
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object p1

    .line 596
    aget v4, p1, v3

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_6

    aget v4, p1, v3

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_6

    aget v4, p1, v1

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_6

    aget v4, p1, v1

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_6

    .line 600
    aget v3, p1, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSlopX:F

    .line 601
    aget p1, p1, v1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSlopY:F

    .line 602
    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 603
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    .line 606
    :cond_6
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_7

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_7

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_7

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_7

    iget-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mShowCenterOldColor:Z

    if-eqz p1, :cond_7

    .line 609
    iget-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 610
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getOldCenterColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setColor(I)V

    .line 611
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    :cond_7
    mul-float v0, v0, v0

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    float-to-double v4, v0

    .line 614
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    add-int/2addr p1, v0

    int-to-double v8, p1

    cmpg-double p1, v6, v8

    if-gtz p1, :cond_8

    .line 615
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    sub-int/2addr p1, v0

    int-to-double v6, p1

    cmpl-double p1, v4, v6

    if-ltz p1, :cond_8

    iget-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTouchAnywhereOnColorWheelEnabled:Z

    if-eqz p1, :cond_8

    .line 617
    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 618
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    .line 622
    :cond_8
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    :cond_9
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 4

    .line 526
    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->colorToAngle(I)F

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    .line 527
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    .line 533
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setOpacity(I)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 540
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v3}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    .line 545
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v0, v0, v1

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v3, v3, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/larswerkman/holocolorpicker/SVBar;->setSaturation(F)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v0, v0, v1

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v3, v3, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/larswerkman/holocolorpicker/SVBar;->setValue(F)V

    .line 552
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 554
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v3}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    .line 555
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setSaturation(F)V

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-nez v0, :cond_4

    .line 559
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 560
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    .line 561
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setValue(F)V

    goto :goto_1

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v0, :cond_5

    .line 563
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 564
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setValue(F)V

    .line 566
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    return-void
.end method

.method public setNewCenterColor(I)V
    .locals 1

    .line 736
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    .line 737
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 738
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    if-nez v0, :cond_0

    .line 739
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    .line 740
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->oldChangedListenerColor:I

    if-eq p1, v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 744
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->oldChangedListenerColor:I

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    return-void
.end method

.method public setOldCenterColor(I)V
    .locals 1

    .line 755
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    .line 756
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 757
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorSelectedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorSelectedListener;

    return-void
.end method

.method public setShowOldCenterColor(Z)V
    .locals 0

    .line 770
    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mShowCenterOldColor:Z

    .line 771
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    return-void
.end method

.method public setTouchAnywhereOnColorWheelEnabled(Z)V
    .locals 0

    .line 878
    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTouchAnywhereOnColorWheelEnabled:Z

    return-void
.end method
