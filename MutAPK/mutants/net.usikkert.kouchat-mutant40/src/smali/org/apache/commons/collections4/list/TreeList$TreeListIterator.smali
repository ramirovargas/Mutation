.class Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;
.super Ljava/lang/Object;
.source "TreeList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections4/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private currentIndex:I

.field private expectedModCount:I

.field private next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections4/list/TreeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/TreeList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList<",
            "TE;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections4/list/TreeList;

    .line 1018
    invoke-static {p1}, Lorg/apache/commons/collections4/list/TreeList;->access$500(Lorg/apache/commons/collections4/list/TreeList;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->expectedModCount:I

    .line 1019
    invoke-static {p1}, Lorg/apache/commons/collections4/list/TreeList;->access$600(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections4/list/TreeList;->access$600(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 1020
    iput p2, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    const/4 p1, -0x1

    .line 1021
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1111
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->checkModCount()V

    .line 1112
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections4/list/TreeList;

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections4/list/TreeList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 1113
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 p1, -0x1

    .line 1114
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    .line 1115
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    .line 1116
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->expectedModCount:I

    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections4/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList;->access$700(Lorg/apache/commons/collections4/list/TreeList;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 1033
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1038
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections4/list/TreeList;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1057
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1042
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->checkModCount()V

    .line 1043
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_1

    .line 1047
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections4/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList;->access$600(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 1049
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 1051
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    .line 1052
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->next()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1077
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->checkModCount()V

    .line 1062
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Already at start of list."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections4/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList;->access$600(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->previous()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 1070
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1071
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 1072
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1081
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 1085
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->checkModCount()V

    .line 1086
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1089
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections4/list/TreeList;

    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/list/TreeList;->remove(I)Ljava/lang/Object;

    .line 1090
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    if-eq v0, v2, :cond_1

    .line 1092
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->nextIndex:I

    :cond_1
    const/4 v0, 0x0

    .line 1096
    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 1097
    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 1098
    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->currentIndex:I

    .line 1099
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->expectedModCount:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1103
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->checkModCount()V

    .line 1104
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 1105
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1107
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setValue(Ljava/lang/Object;)V

    return-void
.end method
