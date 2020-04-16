.class public Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;
.super Ljava/lang/Object;
.source "PropertyFileSettingsLoader.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final SETTINGS_FILE:Ljava/lang/String;


# instance fields
.field private final propertyTools:Lnet/usikkert/kouchat/util/PropertyTools;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/usikkert/kouchat/Constants;->APP_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kouchat.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->SETTINGS_FILE:Ljava/lang/String;

    .line 49
    const-class v0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lnet/usikkert/kouchat/util/PropertyTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/PropertyTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->propertyTools:Lnet/usikkert/kouchat/util/PropertyTools;

    return-void
.end method

.method private setBalloons(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 121
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BALLOONS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setBalloons(Z)V

    return-void
.end method

.method private setBrowser(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 125
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->BROWSER:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/usikkert/kouchat/util/Tools;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private setLogging(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 117
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOGGING:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setLogging(Z)V

    return-void
.end method

.method private setLookAndFeel(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 129
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->LOOK_AND_FEEL:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/usikkert/kouchat/util/Tools;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setLookAndFeel(Ljava/lang/String;)V

    return-void
.end method

.method private setNetworkInterface(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 133
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NETWORK_INTERFACE:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setNetworkInterface(Ljava/lang/String;)V

    return-void
.end method

.method private setNickName(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p1

    .line 89
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->NICK_NAME:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 91
    invoke-static {p2}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/misc/User;->setNick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setOwnColor(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 98
    :try_start_0
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->OWN_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setOwnColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    sget-object p1, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Could not read setting for owncolor..."

    invoke-virtual {p1, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setSmileys(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 145
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SMILEYS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SMILEYS:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setSmileys(Z)V

    :cond_0
    return-void
.end method

.method private setSound(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 138
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SOUND:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SOUND:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setSound(Z)V

    :cond_0
    return-void
.end method

.method private setSysColor(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    .locals 1

    .line 108
    :try_start_0
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->SYS_COLOR:Lnet/usikkert/kouchat/settings/PropertyFileSettings;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettings;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/usikkert/kouchat/settings/Settings;->setSysColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    sget-object p1, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Could not read setting for syscolor..."

    invoke-virtual {p1, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public loadSettings(Lnet/usikkert/kouchat/settings/Settings;)V
    .locals 3

    const-string v0, "Settings can not be null"

    .line 61
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->propertyTools:Lnet/usikkert/kouchat/util/PropertyTools;

    sget-object v1, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->SETTINGS_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/util/PropertyTools;->loadProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 66
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setNickName(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 67
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setOwnColor(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 68
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setSysColor(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 69
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setLogging(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 70
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setBalloons(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 71
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setBrowser(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 72
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setLookAndFeel(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 73
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setNetworkInterface(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 74
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setSound(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V

    .line 75
    invoke-direct {p0, p1, v0}, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->setSmileys(Lnet/usikkert/kouchat/settings/Settings;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    sget-object v0, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :catch_1
    sget-object p1, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/usikkert/kouchat/settings/PropertyFileSettingsLoader;->SETTINGS_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", using default settings."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
