.class public Lnet/usikkert/kouchat/android/smiley/Smiley;
.super Ljava/lang/Object;
.source "Smiley.java"


# instance fields
.field private final code:Ljava/lang/String;

.field private final endPosition:I

.field private final startPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Code can not be empty"

    .line 39
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lnet/usikkert/kouchat/android/smiley/Smiley;->code:Ljava/lang/String;

    .line 42
    iput p2, p0, Lnet/usikkert/kouchat/android/smiley/Smiley;->startPosition:I

    .line 43
    iput p3, p0, Lnet/usikkert/kouchat/android/smiley/Smiley;->endPosition:I

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/usikkert/kouchat/android/smiley/Smiley;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPosition()I
    .locals 1

    .line 55
    iget v0, p0, Lnet/usikkert/kouchat/android/smiley/Smiley;->endPosition:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 51
    iget v0, p0, Lnet/usikkert/kouchat/android/smiley/Smiley;->startPosition:I

    return v0
.end method
