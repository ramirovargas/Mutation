.class public Lnet/usikkert/kouchat/misc/WaitingList;
.super Ljava/lang/Object;
.source "WaitingList.java"


# instance fields
.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/WaitingList;->users:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addWaitingUser(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/WaitingList;->users:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isWaitingUser(I)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/WaitingList;->users:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeWaitingUser(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/WaitingList;->users:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
