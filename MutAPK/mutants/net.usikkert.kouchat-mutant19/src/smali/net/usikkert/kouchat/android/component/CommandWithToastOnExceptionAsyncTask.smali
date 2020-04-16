.class public Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;
.super Landroid/os/AsyncTask;
.source "CommandWithToastOnExceptionAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final command:Lnet/usikkert/kouchat/android/component/Command;

.field private final context:Landroid/content/Context;

.field private exception:Lnet/usikkert/kouchat/misc/CommandException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/usikkert/kouchat/android/component/Command;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "Context can not be null"

    .line 54
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Command can not be null"

    .line 55
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->command:Lnet/usikkert/kouchat/android/component/Command;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 64
    :try_start_0
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->command:Lnet/usikkert/kouchat/android/component/Command;

    invoke-interface {p1}, Lnet/usikkert/kouchat/android/component/Command;->runCommand()V

    const/4 p1, 0x1

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 67
    iput-object p1, p0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->exception:Lnet/usikkert/kouchat/misc/CommandException;

    const/4 p1, 0x0

    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 74
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->exception:Lnet/usikkert/kouchat/misc/CommandException;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->context:Landroid/content/Context;

    iget-object v0, p0, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->exception:Lnet/usikkert/kouchat/misc/CommandException;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/CommandWithToastOnExceptionAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
