.class public Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "HoloColorPickerPreference.java"


# instance fields
.field private colorPreviewImage:Landroid/widget/ImageView;

.field private final defaultColor:I

.field private persistedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x1000000

    .line 47
    iput p1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->defaultColor:I

    const p1, 0x7f09001b

    .line 58
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f09001c

    .line 59
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->setWidgetLayoutResource(I)V

    const p1, 0x104000a

    .line 60
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 61
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method private updatePreviewColor()V
    .locals 2

    .line 139
    iget-object v0, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->colorPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 140
    iget v1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getPersistedColor()I
    .locals 1

    .line 132
    iget v0, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistedColor:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/support/v7/preference/DialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 111
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f07002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->colorPreviewImage:Landroid/widget/ImageView;

    .line 112
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->updatePreviewColor()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/high16 v0, -0x1000000

    .line 77
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, -0x1000000

    .line 92
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistedColor:I

    goto :goto_0

    .line 95
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistedColor:I

    :goto_0
    return-void
.end method

.method public persistColor(I)V
    .locals 0

    .line 121
    iput p1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistedColor:I

    .line 122
    iget p1, p0, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistedColor:I

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->persistInt(I)Z

    .line 123
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->updatePreviewColor()V

    return-void
.end method
