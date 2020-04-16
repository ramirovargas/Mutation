.class Lnet/usikkert/kouchat/android/controller/SendFileController$2;
.super Ljava/lang/Object;
.source "SendFileController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/usikkert/kouchat/android/controller/SendFileController;->registerUserListClickListener()V
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

    .line 149
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$2;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/misc/User;

    .line 153
    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$2;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p2}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$100(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    move-result-object p2

    iget-object p3, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$2;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-static {p3}, Lnet/usikkert/kouchat/android/controller/SendFileController;->access$000(Lnet/usikkert/kouchat/android/controller/SendFileController;)Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V

    .line 154
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SendFileController$2;->this$0:Lnet/usikkert/kouchat/android/controller/SendFileController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/controller/SendFileController;->finish()V

    return-void
.end method
