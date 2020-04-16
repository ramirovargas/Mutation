.class public Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;
.super Landroid/support/v7/preference/PreferenceDialogFragmentCompat;
.source "HoloColorPickerPreferenceDialog.java"

# interfaces
.implements Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;


# instance fields
.field private currentColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method private getColorPickerPreference()Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;
    .locals 2

    .line 56
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "key"

    .line 57
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;

    invoke-direct {p0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f07002c

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/larswerkman/holocolorpicker/ColorPicker;

    const v1, 0x7f07002e

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/larswerkman/holocolorpicker/ValueBar;

    const v2, 0x7f07002d

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/larswerkman/holocolorpicker/SaturationBar;

    .line 80
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->getColorPickerPreference()Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;

    move-result-object v2

    invoke-virtual {v2}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->getPersistedColor()I

    move-result v2

    .line 82
    invoke-virtual {v0, p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOnColorChangedListener(Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->addValueBar(Lcom/larswerkman/holocolorpicker/ValueBar;)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->addSaturationBar(Lcom/larswerkman/holocolorpicker/SaturationBar;)V

    .line 85
    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setColor(I)V

    .line 86
    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOldCenterColor(I)V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 0

    .line 109
    iput p1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->currentColor:I

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object p1

    iget v0, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->currentColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->getColorPickerPreference()Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;

    move-result-object p1

    iget v0, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->currentColor:I

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistColor(I)V

    :cond_0
    return-void
.end method
