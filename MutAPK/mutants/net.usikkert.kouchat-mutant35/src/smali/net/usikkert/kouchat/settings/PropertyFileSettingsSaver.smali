.class public Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;
.super Ljava/lang/Object;
.source "PropertyFileSettingsSaver.java"

# interfaces
.implements Lnet/usikkert/kouchat/settings/SettingsSaver;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

.field private final errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

.field private final ioTools:Lnet/usikkert/kouchat/util/IOTools;

.field private final propertyTools:Lnet/usikkert/kouchat/util/PropertyTools;

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/message/CoreMessages;Lnet/usikkert/kouchat/misc/ErrorHandler;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lnet/usikkert/kouchat/util/IOTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/IOTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    .line 51
    new-instance v0, Lnet/usikkert/kouchat/util/PropertyTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/PropertyTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->propertyTools:Lnet/usikkert/kouchat/util/PropertyTools;

    const-string v0, "Settings can not be null"

    .line 59
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Core messages can not be null"

    .line 60
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Error handler can not be null"

    .line 61
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 64
    iput-object p2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    .line 65
    iput-object p3, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    return-void
.end method


# virtual methods
.method public saveSettings()V
    .locals 9

    .line 73
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 74
    iget-object v1, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 76
    sget-object v2, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NICK_NAME:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/usikkert/kouchat/util/Tools;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->OWN_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->getOwnColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SYS_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->getSysColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOGGING:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->isLogging()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SOUND:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->isSound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BROWSER:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->getBrowser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/usikkert/kouchat/util/Tools;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SMILEYS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->isSmileys()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOOK_AND_FEEL:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->getLookAndFeel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/usikkert/kouchat/util/Tools;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BALLOONS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->isBalloons()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NETWORK_INTERFACE:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/settings/Settings;->getNetworkInterface()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/usikkert/kouchat/util/Tools;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 88
    :try_start_0
    iget-object v3, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->ioTools:Lnet/usikkert/kouchat/util/IOTools;

    sget-object v4, Lnet/usikkert/kouchat/Constants;->APP_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/usikkert/kouchat/util/IOTools;->createFolder(Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->propertyTools:Lnet/usikkert/kouchat/util/PropertyTools;

    sget-object v4, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->SETTINGS_FILE:Ljava/lang/String;

    iget-object v5, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v6, "core.settings.file.comment"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "KouChat"

    aput-object v8, v7, v1

    .line 90
    invoke-virtual {v5, v6, v7}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v3, v4, v0, v5}, Lnet/usikkert/kouchat/util/PropertyTools;->saveProperties(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    sget-object v3, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Failed to save settings"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    iget-object v3, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->errorHandler:Lnet/usikkert/kouchat/misc/ErrorHandler;

    iget-object v4, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsSaver;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v5, "core.settings.errorPopup.saveFailed"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v4, v5, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/usikkert/kouchat/misc/ErrorHandler;->showError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
