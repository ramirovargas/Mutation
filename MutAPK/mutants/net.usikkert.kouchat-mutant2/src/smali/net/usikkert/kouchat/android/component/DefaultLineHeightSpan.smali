.class public Lnet/usikkert/kouchat/android/component/DefaultLineHeightSpan;
.super Ljava/lang/Object;
.source "DefaultLineHeightSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 0

    .line 49
    invoke-virtual {p7, p6}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    return-void
.end method
