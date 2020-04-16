.class Lnet/usikkert/kouchat/android/controller/SendFileController$1;
.super Ljava/lang/Object;
.source "SendFileController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/SendFileController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/SendFileController;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$1;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$1;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->finish()V

    return-void
.end method
