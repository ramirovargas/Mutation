.class Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;
.super Ljava/lang/Object;
.source "ControllerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/ControllerUtils;->scrollTextViewToBottom(Landroid/widget/TextView;Landroid/widget/ScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lnet/usikkert/kouchat/android/controller/ControllerUtils;Landroid/widget/ScrollView;Landroid/widget/TextView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;->this$0:Lnet/usikkert/kouchat/android/controller/ControllerUtils;

    iput-object p2, p0, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;->val$scrollView:Landroid/widget/ScrollView;

    iput-object p3, p0, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;->val$scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lnet/usikkert/kouchat/android/controller/ControllerUtils$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method
