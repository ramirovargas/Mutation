.class public final Lcom/larswerkman/holocolorpicker/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larswerkman/holocolorpicker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ColorBars:[I

.field public static final ColorBars_bar_length:I = 0x0

.field public static final ColorBars_bar_orientation_horizontal:I = 0x1

.field public static final ColorBars_bar_pointer_halo_radius:I = 0x2

.field public static final ColorBars_bar_pointer_radius:I = 0x3

.field public static final ColorBars_bar_thickness:I = 0x4

.field public static final ColorPicker:[I

.field public static final ColorPicker_color_center_halo_radius:I = 0x0

.field public static final ColorPicker_color_center_radius:I = 0x1

.field public static final ColorPicker_color_pointer_halo_radius:I = 0x2

.field public static final ColorPicker_color_pointer_radius:I = 0x3

.field public static final ColorPicker_color_wheel_radius:I = 0x4

.field public static final ColorPicker_color_wheel_thickness:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars:[I

    const/4 v0, 0x6

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02003b
        0x7f02003c
        0x7f02003d
        0x7f02003e
        0x7f02003f
    .end array-data

    :array_1
    .array-data 4
        0x7f02005f
        0x7f020060
        0x7f020061
        0x7f020062
        0x7f020063
        0x7f020064
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
