.class public Lnet/usikkert/kouchat/android/controller/SettingsFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "SettingsFragment.DIALOG"


# instance fields
.field private androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

.field private nickNameKey:Ljava/lang/String;

.field private notificationLightKey:Ljava/lang/String;

.field private notificationSoundKey:Ljava/lang/String;

.field private notificationVibrationKey:Ljava/lang/String;

.field private ownColorKey:Ljava/lang/String;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

.field private systemColorKey:Ljava/lang/String;

.field private wakeLockKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/usikkert/kouchat/android/controller/SettingsFragment;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 51
    iget-object p0, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p0
.end method

.method static synthetic access$002(Lnet/usikkert/kouchat/android/controller/SettingsFragment;Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;)Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    return-object p1
.end method

.method static synthetic access$102(Lnet/usikkert/kouchat/android/controller/SettingsFragment;Lnet/usikkert/kouchat/android/settings/AndroidSettings;)Lnet/usikkert/kouchat/android/settings/AndroidSettings;
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    return-object p1
.end method

.method private createChatServiceIntent()Landroid/content/Intent;
    .locals 3

    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lnet/usikkert/kouchat/android/service/ChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 239
    new-instance v0, Lnet/usikkert/kouchat/android/controller/SettingsFragment$1;

    invoke-direct {v0, p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment$1;-><init>(Lnet/usikkert/kouchat/android/controller/SettingsFragment;)V

    return-object v0
.end method

.method private setValueAsSummary(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 227
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    .line 229
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setValueAsSummary(Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->setValueAsSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->serviceConnection:Landroid/content/ServiceConnection;

    .line 76
    invoke-direct {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->createChatServiceIntent()Landroid/content/Intent;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const/high16 p1, 0x7f100000

    .line 82
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->addPreferencesFromResource(I)V

    const p1, 0x7f0d0059

    .line 84
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->nickNameKey:Ljava/lang/String;

    const p1, 0x7f0d006c

    .line 85
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->wakeLockKey:Ljava/lang/String;

    const p1, 0x7f0d0065

    .line 86
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->ownColorKey:Ljava/lang/String;

    const p1, 0x7f0d0068

    .line 87
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->systemColorKey:Ljava/lang/String;

    const p1, 0x7f0d005c

    .line 89
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->notificationLightKey:Ljava/lang/String;

    const p1, 0x7f0d0060

    .line 90
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->notificationSoundKey:Ljava/lang/String;

    const p1, 0x7f0d0063

    .line 91
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->notificationVibrationKey:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->nickNameKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->setValueAsSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 204
    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    .line 209
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    .line 210
    iput-object v0, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->serviceConnection:Landroid/content/ServiceConnection;

    .line 212
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onDestroy()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SettingsFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    instance-of v0, p1, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;->newInstance(Ljava/lang/String;)Lnet/usikkert/kouchat/android/component/HoloColorPickerPreferenceDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p1, p0, v0}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 181
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SettingsFragment.DIALOG"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 199
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->nickNameKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->androidUserInterface:Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/android/chatwindow/AndroidUserInterface;->changeNickName(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 192
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 193
    invoke-virtual {p0}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->nickNameKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->setValueAsSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->wakeLockKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/TwoStatePreference;

    .line 135
    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {p1}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setWakeLockEnabled(Z)V

    goto/16 :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->ownColorKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p0, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;

    .line 140
    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->getPersistedColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setOwnColor(I)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->systemColorKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p0, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;

    .line 145
    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/android/component/HoloColorPickerPreference;->getPersistedColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setSysColor(I)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->notificationLightKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 149
    invoke-virtual {p0, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/TwoStatePreference;

    .line 150
    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {p1}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setNotificationLightEnabled(Z)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->notificationSoundKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 154
    invoke-virtual {p0, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/TwoStatePreference;

    .line 155
    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {p1}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setNotificationSoundEnabled(Z)V

    goto :goto_0

    .line 158
    :cond_5
    iget-object p1, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->notificationVibrationKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 159
    invoke-virtual {p0, p2}, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/TwoStatePreference;

    .line 160
    iget-object p2, p0, Lnet/usikkert/kouchat/android/controller/SettingsFragment;->settings:Lnet/usikkert/kouchat/android/settings/AndroidSettings;

    invoke-virtual {p1}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lnet/usikkert/kouchat/android/settings/AndroidSettings;->setNotificationVibrationEnabled(Z)V

    :cond_6
    :goto_0
    return-void
.end method
