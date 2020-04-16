.class public Lnet/usikkert/kouchat/misc/CommandParser;
.super Ljava/lang/Object;
.source "CommandParser.java"


# static fields
.field private static final WHITESPACE:Ljava/lang/String; = "\\s"


# instance fields
.field private final controller:Lnet/usikkert/kouchat/misc/Controller;

.field private final coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

.field private final dateTools:Lnet/usikkert/kouchat/util/DateTools;

.field private final me:Lnet/usikkert/kouchat/misc/User;

.field private final msgController:Lnet/usikkert/kouchat/misc/MessageController;

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;

.field private final tList:Lnet/usikkert/kouchat/net/TransferList;

.field private final ui:Lnet/usikkert/kouchat/ui/UserInterface;


# direct methods
.method public constructor <init>(Lnet/usikkert/kouchat/misc/Controller;Lnet/usikkert/kouchat/ui/UserInterface;Lnet/usikkert/kouchat/settings/Settings;Lnet/usikkert/kouchat/message/CoreMessages;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lnet/usikkert/kouchat/util/DateTools;

    invoke-direct {v0}, Lnet/usikkert/kouchat/util/DateTools;-><init>()V

    iput-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->dateTools:Lnet/usikkert/kouchat/util/DateTools;

    const-string v0, "Controller can not be null"

    .line 75
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UserInterface can not be null"

    .line 76
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 77
    invoke-static {p3, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Core messages can not be null"

    .line 78
    invoke-static {p4, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    .line 81
    iput-object p2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    .line 82
    iput-object p3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->settings:Lnet/usikkert/kouchat/settings/Settings;

    .line 83
    iput-object p4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    .line 85
    invoke-interface {p2}, Lnet/usikkert/kouchat/ui/UserInterface;->getMessageController()Lnet/usikkert/kouchat/misc/MessageController;

    move-result-object p2

    iput-object p2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    .line 86
    invoke-virtual {p3}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object p2

    iput-object p2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    .line 87
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getTransferList()Lnet/usikkert/kouchat/net/TransferList;

    move-result-object p1

    iput-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    return-void
.end method

.method private appendTransferInfo(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/StringBuilder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "\n  "

    .line 682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-interface/range {p1 .. p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getId()I

    move-result v2

    .line 685
    invoke-interface/range {p1 .. p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-interface/range {p1 .. p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/usikkert/kouchat/util/Tools;->byteToString(J)Ljava/lang/String;

    move-result-object v4

    .line 687
    invoke-interface/range {p1 .. p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getPercent()I

    move-result v5

    .line 688
    invoke-interface/range {p1 .. p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getSpeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Lnet/usikkert/kouchat/util/Tools;->byteToString(J)Ljava/lang/String;

    move-result-object v6

    .line 689
    invoke-interface/range {p1 .. p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v7

    invoke-virtual {v7}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v7

    .line 691
    invoke-interface/range {p1 .. p1}, Lnet/usikkert/kouchat/net/FileTransfer;->getDirection()Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    move-result-object v8

    sget-object v9, Lnet/usikkert/kouchat/net/FileTransfer$Direction;->SEND:Lnet/usikkert/kouchat/net/FileTransfer$Direction;

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v10, 0x6

    if-ne v8, v9, :cond_0

    .line 692
    iget-object v8, v0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v9, "core.command.transfers.sendingFile"

    new-array v10, v10, [Ljava/lang/Object;

    .line 693
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v15

    aput-object v3, v10, v14

    aput-object v4, v10, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v12

    aput-object v6, v10, v11

    const/4 v2, 0x5

    aput-object v7, v10, v2

    .line 692
    invoke-virtual {v8, v9, v10}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 695
    :cond_0
    iget-object v8, v0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v9, "core.command.transfers.receivingFile"

    new-array v10, v10, [Ljava/lang/Object;

    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v15

    aput-object v3, v10, v14

    aput-object v4, v10, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v12

    aput-object v6, v10, v11

    const/4 v2, 0x5

    aput-object v7, v10, v2

    .line 695
    invoke-virtual {v8, v9, v10}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private cmdAbout()V
    .locals 6

    .line 191
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.about.systemMessage.about"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "KouChat"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "1.1.1"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Christian Ihle"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "contact@kouchat.net"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "https://www.kouchat.net/"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method private cmdAway(Ljava/lang/String;)V
    .locals 5

    .line 133
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.away.systemMessage.alreadyAway"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    .line 135
    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 134
    invoke-virtual {v0, v2, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.away.systemMessage.missingArgument"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->goAway(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private cmdBack()V
    .locals 4

    .line 161
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->comeBack()V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.back.systemMessage.notAway"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private cmdCancel(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\\s"

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 444
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 445
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.cancel.systemMessage.missingArguments"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 450
    aget-object v2, p1, v0

    .line 451
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v3, v2}, Lnet/usikkert/kouchat/misc/Controller;->getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;

    move-result-object v3

    if-nez v3, :cond_1

    .line 454
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.cancel.systemMessage.noSuchUser"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 459
    :cond_1
    iget-object v4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    if-ne v3, v4, :cond_2

    .line 460
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.cancel.systemMessage.userIsMe"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v4, 0x2

    .line 464
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lnet/usikkert/kouchat/misc/CommandParser;->parseFileTransferId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 467
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v5, "core.command.cancel.systemMessage.invalidFileId"

    new-array v0, v0, [Ljava/lang/Object;

    aget-object p1, p1, v4

    aput-object p1, v0, v1

    invoke-virtual {v3, v5, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 472
    :cond_3
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lnet/usikkert/kouchat/net/TransferList;->getFileTransfer(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileTransfer;

    move-result-object p1

    if-nez p1, :cond_4

    .line 475
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v6, "core.command.cancel.systemMessage.noSuchFileIdForUser"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-virtual {v3, v6, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 480
    :cond_4
    instance-of v3, p1, Lnet/usikkert/kouchat/net/FileReceiver;

    if-eqz v3, :cond_5

    .line 481
    move-object v3, p1

    check-cast v3, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 483
    invoke-virtual {v3}, Lnet/usikkert/kouchat/net/FileReceiver;->isAccepted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 484
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v5, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v6, "core.command.cancel.systemMessage.notStartedYet"

    new-array v4, v4, [Ljava/lang/Object;

    .line 485
    invoke-virtual {v3}, Lnet/usikkert/kouchat/net/FileReceiver;->getFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    aput-object v2, v4, v0

    .line 484
    invoke-virtual {v5, v6, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 490
    :cond_5
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/misc/CommandParser;->cancelFileTransfer(Lnet/usikkert/kouchat/net/FileTransfer;)V

    return-void
.end method

.method private cmdClear()V
    .locals 1

    .line 182
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0}, Lnet/usikkert/kouchat/ui/UserInterface;->clearChat()V

    return-void
.end method

.method private cmdHelp()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->showCommands()V

    return-void
.end method

.method private cmdMsg(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\\s"

    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 511
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 512
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v1, "core.command.msg.systemMessage.missingArguments"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 516
    aget-object v3, p1, v0

    .line 517
    iget-object v4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v4, v3}, Lnet/usikkert/kouchat/misc/Controller;->getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;

    move-result-object v4

    if-nez v4, :cond_1

    .line 520
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.msg.systemMessage.noSuchUser"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-virtual {v1, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 524
    :cond_1
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    if-ne v4, v3, :cond_2

    .line 525
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v1, "core.command.msg.systemMessage.userIsMe"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 528
    :cond_2
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v3}, Lnet/usikkert/kouchat/settings/Settings;->isNoPrivateChat()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v1, "core.command.msg.systemMessage.privateChatDisabled"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 533
    :cond_3
    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getPrivateChatPort()I

    move-result v3

    if-nez v3, :cond_4

    .line 534
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.msg.systemMessage.noPrivateChatPortNumber"

    new-array v0, v0, [Ljava/lang/Object;

    .line 535
    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 534
    invoke-virtual {v1, v3, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 541
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 548
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1, v4}, Lnet/usikkert/kouchat/misc/Controller;->sendPrivateMessage(Ljava/lang/String;Lnet/usikkert/kouchat/misc/User;)V

    .line 549
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0, v4, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showPrivateOwnMessage(Lnet/usikkert/kouchat/misc/User;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 553
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private cmdNick(Ljava/lang/String;)V
    .locals 5

    .line 567
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 568
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.nick.systemMessage.missingArgument"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "\\s"

    .line 572
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 573
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 575
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 576
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/Controller;->isNickInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.nick.systemMessage.nickInUse"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_1
    invoke-static {p1}, Lnet/usikkert/kouchat/util/Tools;->isValidNick(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 582
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.nick.systemMessage.nickInvalid"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_2
    :try_start_0
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/Controller;->changeMyNick(Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.nick.systemMessage.nickChanged"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    .line 590
    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 589
    invoke-virtual {v2, v3, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 591
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 595
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_3
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.nick.systemMessage.nickIdentical"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private cmdQuit()V
    .locals 1

    .line 672
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v0}, Lnet/usikkert/kouchat/ui/UserInterface;->quit()V

    return-void
.end method

.method private cmdReceive(Ljava/lang/String;)V
    .locals 8

    const-string v0, "\\s"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 325
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 326
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.receive.systemMessage.missingArguments"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 331
    aget-object v2, p1, v0

    .line 332
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v3, v2}, Lnet/usikkert/kouchat/misc/Controller;->getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;

    move-result-object v3

    if-nez v3, :cond_1

    .line 335
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.receive.systemMessage.noSuchUser"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 340
    :cond_1
    iget-object v4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    if-ne v3, v4, :cond_2

    .line 341
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.receive.systemMessage.userIsMe"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v4, 0x2

    .line 345
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lnet/usikkert/kouchat/misc/CommandParser;->parseFileTransferId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 348
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v5, "core.command.receive.systemMessage.invalidFileId"

    new-array v0, v0, [Ljava/lang/Object;

    aget-object p1, p1, v4

    aput-object p1, v0, v1

    invoke-virtual {v3, v5, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 353
    :cond_3
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceiver(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object p1

    if-nez p1, :cond_4

    .line 356
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v6, "core.command.receive.systemMessage.noSuchFileIdForUser"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-virtual {v3, v6, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 361
    :cond_4
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->isAccepted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 362
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v5, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v6, "core.command.receive.systemMessage.alreadyReceiving"

    new-array v4, v4, [Ljava/lang/Object;

    .line 363
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getFileName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object v2, v4, v0

    .line 362
    invoke-virtual {v5, v6, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 367
    :cond_5
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getFile()Ljava/io/File;

    move-result-object v2

    .line 369
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    invoke-static {v2}, Lnet/usikkert/kouchat/util/Tools;->getFileWithIncrementedName(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 371
    iget-object v5, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v6, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v7, "core.command.receive.systemMessage.renamingFile"

    new-array v4, v4, [Ljava/lang/Object;

    .line 372
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 371
    invoke-virtual {v6, v7, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1, v3}, Lnet/usikkert/kouchat/net/FileReceiver;->setFile(Ljava/io/File;)V

    .line 376
    :cond_6
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->accept()V

    return-void
.end method

.method private cmdReject(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\\s"

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 389
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 390
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.reject.systemMessage.missingArguments"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 395
    aget-object v2, p1, v0

    .line 396
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v3, v2}, Lnet/usikkert/kouchat/misc/Controller;->getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;

    move-result-object v3

    if-nez v3, :cond_1

    .line 399
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.reject.systemMessage.noSuchUser"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 404
    :cond_1
    iget-object v4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    if-ne v3, v4, :cond_2

    .line 405
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.reject.systemMessage.userIsMe"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v4, 0x2

    .line 409
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lnet/usikkert/kouchat/misc/CommandParser;->parseFileTransferId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 412
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v5, "core.command.reject.systemMessage.invalidFileId"

    new-array v0, v0, [Ljava/lang/Object;

    aget-object p1, p1, v4

    aput-object p1, v0, v1

    invoke-virtual {v3, v5, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 417
    :cond_3
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceiver(Lnet/usikkert/kouchat/misc/User;I)Lnet/usikkert/kouchat/net/FileReceiver;

    move-result-object p1

    if-nez p1, :cond_4

    .line 420
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v6, "core.command.reject.systemMessage.noSuchFileIdForUser"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-virtual {v3, v6, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 425
    :cond_4
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->isAccepted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 426
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v5, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v6, "core.command.reject.systemMessage.alreadyReceiving"

    new-array v4, v4, [Ljava/lang/Object;

    .line 427
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->getFileName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object v2, v4, v0

    .line 426
    invoke-virtual {v5, v6, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void

    .line 431
    :cond_5
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileReceiver;->reject()V

    return-void
.end method

.method private cmdSend(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\\s"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 268
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 269
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v1, "core.command.send.systemMessage.missingArguments"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 273
    aget-object v3, p1, v0

    .line 274
    iget-object v4, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v4, v3}, Lnet/usikkert/kouchat/misc/Controller;->getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;

    move-result-object v4

    .line 276
    iget-object v5, p0, Lnet/usikkert/kouchat/misc/CommandParser;->me:Lnet/usikkert/kouchat/misc/User;

    if-eq v4, v5, :cond_4

    if-nez v4, :cond_1

    .line 278
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.send.systemMessage.noSuchUser"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    .line 279
    invoke-virtual {v1, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 285
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 290
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    :try_start_0
    new-instance p1, Lnet/usikkert/kouchat/net/FileToSend;

    invoke-direct {p1, v1}, Lnet/usikkert/kouchat/net/FileToSend;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v4, p1}, Lnet/usikkert/kouchat/misc/CommandParser;->sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 298
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_3
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.send.systemMessage.noSuchFile"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 304
    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {v1, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_4
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v1, "core.command.send.systemMessage.userIsMe"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private cmdSlash(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    const-string v1, ""

    .line 708
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 711
    :try_start_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->sendChatMessage(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showOwnMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 716
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private cmdTopic(Ljava/lang/String;)V
    .locals 7

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.topic.systemMessage.noTopic"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->dateTools:Lnet/usikkert/kouchat/util/DateTools;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTime()J

    move-result-wide v3

    const-wide v3, 0x43b70d0L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V


    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.dateFormat.topic"

    new-array v5, v1, [Ljava/lang/Object;

    .line 108
    invoke-virtual {v3, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v0, v2, v3}, Lnet/usikkert/kouchat/util/DateTools;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.topic.systemMessage.topicIs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/Topic;->getNick()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x2

    aput-object v0, v5, p1

    .line 109
    invoke-virtual {v3, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/usikkert/kouchat/misc/CommandParser;->fixTopic(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/usikkert/kouchat/misc/CommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private cmdTransfers()V
    .locals 7

    .line 634
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/TransferList;->getFileSenders()Ljava/util/List;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v1}, Lnet/usikkert/kouchat/net/TransferList;->getFileReceivers()Ljava/util/List;

    move-result-object v1

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const-string v3, "\n"

    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v5, "core.command.transfers.sending"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/usikkert/kouchat/net/FileSender;

    .line 644
    invoke-direct {p0, v3, v2}, Lnet/usikkert/kouchat/misc/CommandParser;->appendTransferInfo(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 648
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "\n"

    .line 649
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.transfers.receiving"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/usikkert/kouchat/net/FileReceiver;

    .line 653
    invoke-direct {p0, v1, v2}, Lnet/usikkert/kouchat/misc/CommandParser;->appendTransferInfo(Lnet/usikkert/kouchat/net/FileTransfer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 657
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 658
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.transfers.systemMessage.noFileTransfers"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 661
    :cond_2
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v5, "core.command.transfers.systemMessage.activeFileTransfers"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private cmdUnknown(Ljava/lang/String;)V
    .locals 5

    .line 728
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.unknown.systemMessage.unknown"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method private cmdUsers()V
    .locals 7

    .line 613
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->getUserList()Lnet/usikkert/kouchat/misc/UserList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    .line 616
    :goto_0
    invoke-interface {v0}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_1

    .line 617
    invoke-interface {v0, v1}, Lnet/usikkert/kouchat/misc/UserList;->get(I)Lnet/usikkert/kouchat/misc/User;

    move-result-object v4

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-interface {v0}, Lnet/usikkert/kouchat/misc/UserList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_1
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.users.systemMessage.users"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-virtual {v1, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method private cmdWhois(Ljava/lang/String;)V
    .locals 9

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 215
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.whois.systemMessage.missingArgument"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "\\s"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 220
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/Controller;->getUser(Ljava/lang/String;)Lnet/usikkert/kouchat/misc/User;

    move-result-object v2

    if-nez v2, :cond_1

    .line 225
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.whois.systemMessage.noSuchUser"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v3, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :cond_1
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.whois.systemMessage.whois.away"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_2
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.whois.systemMessage.whois"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 238
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.whois.ipAddress"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getHostName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.whois.hostName"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getHostName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.whois.client"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getClient()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.whois.operatingSystem"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getOperatingSystem()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.whois.online"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lnet/usikkert/kouchat/misc/CommandParser;->dateTools:Lnet/usikkert/kouchat/util/DateTools;

    .line 247
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getLogonTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lnet/usikkert/kouchat/util/DateTools;->howLongFromNow(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 246
    invoke-virtual {p1, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->isAway()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.whois.awayMessage"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/usikkert/kouchat/misc/User;->getAwayMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v4, v0}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    :cond_4
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private parseFileTransferId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 495
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cancelFileTransfer(Lnet/usikkert/kouchat/net/FileTransfer;)V
    .locals 8

    .line 780
    invoke-interface {p1}, Lnet/usikkert/kouchat/net/FileTransfer;->cancel()V

    .line 782
    instance-of v0, p1, Lnet/usikkert/kouchat/net/FileSender;

    if-eqz v0, :cond_0

    .line 783
    check-cast p1, Lnet/usikkert/kouchat/net/FileSender;

    .line 786
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileSender;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileSender;->getFile()Lnet/usikkert/kouchat/net/FileToSend;

    move-result-object v0

    .line 788
    invoke-virtual {p1}, Lnet/usikkert/kouchat/net/FileSender;->getUser()Lnet/usikkert/kouchat/misc/User;

    move-result-object v1

    .line 790
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.cancel.systemMessage.cancelled"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 791
    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 790
    invoke-virtual {v3, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 792
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/net/TransferList;->removeFileSender(Lnet/usikkert/kouchat/net/FileSender;)V

    .line 793
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileToSend;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lnet/usikkert/kouchat/misc/Controller;->sendFileAbort(Lnet/usikkert/kouchat/misc/User;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fixTopic(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Controller;->getTopic()Lnet/usikkert/kouchat/misc/Topic;

    move-result-object v0

    .line 739
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 741
    invoke-virtual {v0}, Lnet/usikkert/kouchat/misc/Topic;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/Controller;->changeTopic(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 745
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.topic.systemMessage.topicChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_0
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v2, "core.command.topic.systemMessage.topicRemoved"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    .line 751
    :goto_0
    iget-object p1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {p1}, Lnet/usikkert/kouchat/ui/UserInterface;->showTopic()V

    :cond_1
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    .line 833
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 834
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 839
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic"

    .line 842
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdTopic(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "away"

    .line 844
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdAway(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "back"

    .line 846
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 847
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdBack()V

    goto/16 :goto_1

    :cond_3
    const-string v2, "clear"

    .line 848
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 849
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdClear()V

    goto/16 :goto_1

    :cond_4
    const-string v2, "about"

    .line 850
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 851
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdAbout()V

    goto/16 :goto_1

    :cond_5
    const-string v2, "help"

    .line 852
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 853
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdHelp()V

    goto/16 :goto_1

    :cond_6
    const-string v2, "whois"

    .line 854
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 855
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdWhois(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "send"

    .line 856
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 857
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdSend(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "receive"

    .line 858
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 859
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdReceive(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "reject"

    .line 860
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 861
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdReject(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string v2, "cancel"

    .line 862
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 863
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdCancel(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v2, "msg"

    .line 864
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 865
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdMsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string v2, "nick"

    .line 866
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 867
    invoke-direct {p0, v1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdNick(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string v1, "users"

    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 869
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdUsers()V

    goto :goto_1

    :cond_e
    const-string v1, "transfers"

    .line 870
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 871
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdTransfers()V

    goto :goto_1

    :cond_f
    const-string v1, "quit"

    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 873
    invoke-direct {p0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdQuit()V

    goto :goto_1

    :cond_10
    const-string v1, "/"

    .line 874
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 875
    invoke-direct {p0, p1}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdSlash(Ljava/lang/String;)V

    goto :goto_1

    .line 877
    :cond_11
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdUnknown(Ljava/lang/String;)V

    goto :goto_1

    .line 882
    :cond_12
    invoke-direct {p0, v0}, Lnet/usikkert/kouchat/misc/CommandParser;->cmdUnknown(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/usikkert/kouchat/misc/CommandException;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->controller:Lnet/usikkert/kouchat/misc/Controller;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/misc/Controller;->sendFile(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)V

    .line 764
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->tList:Lnet/usikkert/kouchat/net/TransferList;

    invoke-virtual {v0, p1, p2}, Lnet/usikkert/kouchat/net/TransferList;->addFileSender(Lnet/usikkert/kouchat/misc/User;Lnet/usikkert/kouchat/net/FileToSend;)Lnet/usikkert/kouchat/net/FileSender;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lnet/usikkert/kouchat/misc/CommandParser;->ui:Lnet/usikkert/kouchat/ui/UserInterface;

    invoke-interface {v1, v0}, Lnet/usikkert/kouchat/ui/UserInterface;->showTransfer(Lnet/usikkert/kouchat/net/FileSender;)V

    .line 767
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileToSend;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/usikkert/kouchat/util/Tools;->byteToString(J)Ljava/lang/String;

    move-result-object v1

    .line 768
    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    iget-object v3, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v4, "core.command.send.systemMessage.sendingFile"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 770
    invoke-virtual {p2}, Lnet/usikkert/kouchat/net/FileToSend;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v0}, Lnet/usikkert/kouchat/net/FileSender;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v5, v0

    const/4 p2, 0x2

    aput-object v1, v5, p2

    invoke-virtual {p1}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v5, p2

    .line 768
    invoke-virtual {v3, v4, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showCommands()V
    .locals 8

    .line 802
    iget-object v0, p0, Lnet/usikkert/kouchat/misc/CommandParser;->msgController:Lnet/usikkert/kouchat/misc/MessageController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.help.systemMessage.commands"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "KouChat"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 803
    invoke-virtual {v2, v3, v5}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.about.systemMessage.help"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "KouChat"

    aput-object v5, v4, v7

    .line 804
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.away.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 805
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.back.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 806
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.cancel.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 807
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.clear.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 808
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.help.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 809
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.msg.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 810
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.nick.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 811
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.quit.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 812
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.receive.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 813
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.reject.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 814
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.send.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 815
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.topic.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 816
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.transfers.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 817
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.users.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 818
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.whois.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 819
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/usikkert/kouchat/misc/CommandParser;->coreMessages:Lnet/usikkert/kouchat/message/CoreMessages;

    const-string v3, "core.command.slash.systemMessage.help"

    new-array v4, v7, [Ljava/lang/Object;

    .line 820
    invoke-virtual {v2, v3, v4}, Lnet/usikkert/kouchat/message/CoreMessages;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-virtual {v0, v1}, Lnet/usikkert/kouchat/misc/MessageController;->showSystemMessage(Ljava/lang/String;)V

    return-void
.end method
