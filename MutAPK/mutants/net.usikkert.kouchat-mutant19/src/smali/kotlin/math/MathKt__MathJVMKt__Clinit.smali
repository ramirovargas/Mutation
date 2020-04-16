.class final synthetic Lkotlin/math/MathKt__MathJVMKt__Clinit;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field private static volatile $$clinitSync:I


# direct methods
.method static $$clinitTrigger()V
    .locals 1

    sget v0, Lkotlin/math/MathKt__MathJVMKt__Clinit;->$$clinitSync:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lkotlin/math/MathKt__MathJVMKt;->$$clinit()V

    return-void
.end method
