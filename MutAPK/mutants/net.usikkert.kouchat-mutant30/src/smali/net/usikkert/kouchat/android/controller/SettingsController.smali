.class public Lnet/usikkert/kouchat/android/controller/SettingsController;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingsController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private goBackToMainChat()Z
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/usikkert/kouchat/android/controller/MainChatController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/controller/SettingsController;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090047

    .line 52
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsController;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsController;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 61
    :cond_0
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/SettingsController;->goBackToMainChat()Z

    move-result p1

    return p1
.end method
