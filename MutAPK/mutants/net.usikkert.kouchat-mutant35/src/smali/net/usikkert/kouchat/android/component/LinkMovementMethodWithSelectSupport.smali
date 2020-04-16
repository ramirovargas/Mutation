.class public Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMovementMethodWithSelectSupport.java"


# static fields
.field private static instance:Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 55
    sget-object v0, Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;->instance:Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;

    invoke-direct {v0}, Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;-><init>()V

    sput-object v0, Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;->instance:Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;

    .line 59
    :cond_0
    sget-object v0, Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;->instance:Lnet/usikkert/kouchat/android/component/LinkMovementMethodWithSelectSupport;

    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
