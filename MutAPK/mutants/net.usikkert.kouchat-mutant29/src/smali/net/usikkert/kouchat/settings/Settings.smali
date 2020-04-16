.class public Lnet/usikkert/kouchat/settings/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private alwaysLog:Z

.field private balloons:Z

.field private browser:Ljava/lang/String;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/usikkert/kouchat/event/SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private logLocation:Ljava/lang/String;

.field private logging:Z

.field private lookAndFeel:Ljava/lang/String;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private networkInterface:Ljava/lang/String;

.field private noPrivateChat:Z

.field private ownColor:I

.field private smileys:Z

.field private sound:Z

.field private sysColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lnet/usikkert/kouchat/settings/MeFactory;

    invoke-direct {v0}, Lnet/usikkert/kouchat/settings/MeFactory;-><init>()V

    .line 98
    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/MeFactory;->createMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object v0

    iput-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->me:Lnet/usikkert/kouchat/misc/User;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->listeners:Ljava/util/List;

    const-string v0, ""

    .line 100
    iput-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->browser:Ljava/lang/String;

    const v0, -0xf3f3be

    .line 101
    iput v0, p0, Lnet/usikkert/kouchat/settings/Settings;->ownColor:I

    const v0, -0xffb900

    .line 102
    iput v0, p0, Lnet/usikkert/kouchat/settings/Settings;->sysColor:I

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->sound:Z

    .line 104
    iput-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->smileys:Z

    const-string v0, ""

    .line 105
    iput-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->lookAndFeel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSettingsListener(Lnet/usikkert/kouchat/event/SettingsListener;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected fireSettingChanged(Lnet/usikkert/kouchat/settings/Setting;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/event/SettingsListener;

    .line 269
    invoke-interface {v1, p1}, Lnet/usikkert/kouchat/event/SettingsListener;->settingChanged(Lnet/usikkert/kouchat/settings/Setting;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBrowser()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->browser:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLocation()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->logLocation:Ljava/lang/String;

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->logLocation:Ljava/lang/String;

    invoke-static {v0}, Lnet/usikkert/kouchat/util/Tools;->appendSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    sget-object v0, Lnet/usikkert/kouchat/Constants;->APP_LOG_FOLDER:Ljava/lang/String;

    return-object v0
.end method

.method public getLookAndFeel()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->lookAndFeel:Ljava/lang/String;

    return-object v0
.end method

.method public getMe()Lnet/usikkert/kouchat/misc/User;
    .locals 1

    .line 125
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->me:Lnet/usikkert/kouchat/misc/User;

    return-object v0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->networkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnColor()I
    .locals 1

    .line 134
    iget v0, p0, Lnet/usikkert/kouchat/settings/Settings;->ownColor:I

    return v0
.end method

.method public getSysColor()I
    .locals 1

    .line 152
    iget v0, p0, Lnet/usikkert/kouchat/settings/Settings;->sysColor:I

    return v0
.end method

.method public isAlwaysLog()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->alwaysLog:Z

    return v0
.end method

.method public isBalloons()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->balloons:Z

    return v0
.end method

.method public isLogging()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->alwaysLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 192
    :cond_0
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->logging:Z

    return v0
.end method

.method public isNoPrivateChat()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->noPrivateChat:Z

    return v0
.end method

.method public isSmileys()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->smileys:Z

    return v0
.end method

.method public isSound()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->sound:Z

    return v0
.end method

.method public removeSettingsListener(Lnet/usikkert/kouchat/event/SettingsListener;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlwaysLog(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lnet/usikkert/kouchat/settings/Settings;->alwaysLog:Z

    return-void
.end method

.method public setBalloons(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lnet/usikkert/kouchat/settings/Settings;->balloons:Z

    return-void
.end method

.method public setBrowser(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lnet/usikkert/kouchat/settings/Settings;->browser:Ljava/lang/String;

    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 116
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/Settings;->me:Lnet/usikkert/kouchat/misc/User;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KouChat v1.1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/User;->setClient(Ljava/lang/String;)V

    return-void
.end method

.method public setLogLocation(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lnet/usikkert/kouchat/settings/Settings;->logLocation:Ljava/lang/String;

    return-void
.end method

.method public setLogging(Z)V
    .locals 1

    .line 202
    iget-boolean v0, p0, Lnet/usikkert/kouchat/settings/Settings;->logging:Z

    if-eq v0, p1, :cond_0

    .line 203
    iput-boolean p1, p0, Lnet/usikkert/kouchat/settings/Settings;->logging:Z

    .line 204
    sget-object p1, Lnet/usikkert/kouchat/settings/Setting;->LOGGING:Lnet/usikkert/kouchat/settings/Setting;

    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/settings/Settings;->fireSettingChanged(Lnet/usikkert/kouchat/settings/Setting;)V

    :cond_0
    return-void
.end method

.method public setLookAndFeel(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lnet/usikkert/kouchat/settings/Settings;->lookAndFeel:Ljava/lang/String;

    return-void
.end method

.method public setNetworkInterface(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lnet/usikkert/kouchat/settings/Settings;->networkInterface:Ljava/lang/String;

    return-void
.end method

.method public setNoPrivateChat(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lnet/usikkert/kouchat/settings/Settings;->noPrivateChat:Z

    return-void
.end method

.method public setOwnColor(I)V
    .locals 0

    .line 143
    iput p1, p0, Lnet/usikkert/kouchat/settings/Settings;->ownColor:I

    return-void
.end method

.method public setSmileys(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lnet/usikkert/kouchat/settings/Settings;->smileys:Z

    return-void
.end method

.method public setSound(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lnet/usikkert/kouchat/settings/Settings;->sound:Z

    return-void
.end method

.method public setSysColor(I)V
    .locals 0

    .line 161
    iput p1, p0, Lnet/usikkert/kouchat/settings/Settings;->sysColor:I

    return-void
.end method
