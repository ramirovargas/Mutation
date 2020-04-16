.class public Lnet/usikkert/kouchat/net/MessageParser;
.super Ljava/lang/Object;
.source "MessageParser.java"

# interfaces
.implements Lnet/usikkert/kouchat/event/ReceiverListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private loggedOn:Z

.field private final responder:Lnet/usikkert/kouchat/net/MessageResponder;

.field private final settings:Lnet/usikkert/kouchat/settings/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lnet/usikkert/kouchat/net/MessageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/usikkert/kouchat/net/MessageParser;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/usikkert/kouchat/net/MessageResponder;Lnet/usikkert/kouchat/settings/Settings;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MessageResponder can not be null"

    .line 85
    invoke-static {p1, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings can not be null"

    .line 86
    invoke-static {p2, v0}, Lnet/usikkert/kouchat/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    .line 89
    iput-object p2, p0, Lnet/usikkert/kouchat/net/MessageParser;->settings:Lnet/usikkert/kouchat/settings/Settings;

    return-void
.end method


# virtual methods
.method public messageArrived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_0
    const-string v4, "!"

    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#"

    .line 104
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, ":"

    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    .line 107
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 108
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v8

    .line 109
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/2addr v6, v8

    .line 110
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 112
    iget-object v6, v1, Lnet/usikkert/kouchat/net/MessageParser;->settings:Lnet/usikkert/kouchat/settings/Settings;

    invoke-virtual {v6}, Lnet/usikkert/kouchat/settings/Settings;->getMe()Lnet/usikkert/kouchat/misc/User;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v9

    if-eq v10, v9, :cond_13

    iget-boolean v9, v1, Lnet/usikkert/kouchat/net/MessageParser;->loggedOn:Z

    if-eqz v9, :cond_13

    const-string v9, "MSG"

    .line 115
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v4, "["

    .line 116
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "]"

    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v8

    .line 118
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 120
    iget-object v7, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    add-int/2addr v6, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v10, v5, v4}, Lnet/usikkert/kouchat/net/MessageResponder;->messageArrived(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    const-string v9, "LOGON"

    .line 123
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 124
    new-instance v4, Lnet/usikkert/kouchat/misc/User;

    invoke-direct {v4, v14, v10}, Lnet/usikkert/kouchat/misc/User;-><init>(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v4, v3}, Lnet/usikkert/kouchat/misc/User;->setIpAddress(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/usikkert/kouchat/misc/User;->setLastIdle(J)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/usikkert/kouchat/misc/User;->setLogonTime(J)V

    .line 129
    iget-object v5, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v5, v4}, Lnet/usikkert/kouchat/net/MessageResponder;->userLogOn(Lnet/usikkert/kouchat/misc/User;)V

    goto/16 :goto_1

    :cond_1
    const-string v9, "EXPOSING"

    .line 132
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 133
    new-instance v4, Lnet/usikkert/kouchat/misc/User;

    invoke-direct {v4, v14, v10}, Lnet/usikkert/kouchat/misc/User;-><init>(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v4, v3}, Lnet/usikkert/kouchat/misc/User;->setIpAddress(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4, v5}, Lnet/usikkert/kouchat/misc/User;->setAwayMsg(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 138
    invoke-virtual {v4, v8}, Lnet/usikkert/kouchat/misc/User;->setAway(Z)V

    .line 141
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/usikkert/kouchat/misc/User;->setLastIdle(J)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/usikkert/kouchat/misc/User;->setLogonTime(J)V

    .line 144
    iget-object v5, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v5, v4}, Lnet/usikkert/kouchat/net/MessageResponder;->userExposing(Lnet/usikkert/kouchat/misc/User;)V

    goto/16 :goto_1

    :cond_3
    const-string v9, "LOGOFF"

    .line 147
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 148
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v10}, Lnet/usikkert/kouchat/net/MessageResponder;->userLogOff(I)V

    goto/16 :goto_1

    :cond_4
    const-string v9, "AWAY"

    .line 151
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 152
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v10, v8, v5}, Lnet/usikkert/kouchat/net/MessageResponder;->awayChanged(IZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v9, "BACK"

    .line 155
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 156
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    const-string v5, ""

    invoke-interface {v4, v10, v7, v5}, Lnet/usikkert/kouchat/net/MessageResponder;->awayChanged(IZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v9, "EXPOSE"

    .line 159
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 160
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4}, Lnet/usikkert/kouchat/net/MessageResponder;->exposeRequested()V

    goto/16 :goto_1

    :cond_7
    const-string v9, "NICKCRASH"

    .line 163
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 164
    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 165
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4}, Lnet/usikkert/kouchat/net/MessageResponder;->nickCrash()V

    goto/16 :goto_1

    :cond_8
    const-string v9, "WRITING"

    .line 169
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 170
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v10, v8}, Lnet/usikkert/kouchat/net/MessageResponder;->writingChanged(IZ)V

    goto/16 :goto_1

    :cond_9
    const-string v9, "STOPPEDWRITING"

    .line 173
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 174
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v10, v7}, Lnet/usikkert/kouchat/net/MessageResponder;->writingChanged(IZ)V

    goto/16 :goto_1

    :cond_a
    const-string v9, "GETTOPIC"

    .line 177
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 178
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4}, Lnet/usikkert/kouchat/net/MessageResponder;->topicRequested()V

    goto/16 :goto_1

    :cond_b
    const-string v9, "TOPIC"

    .line 181
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v4, "["

    .line 182
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "]"

    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "("

    .line 184
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v9, ")"

    .line 185
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v6, v11, :cond_15

    if-eq v4, v11, :cond_15

    add-int/2addr v7, v8

    .line 188
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v4, v8

    .line 189
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v4, 0x0

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v8

    if-le v7, v6, :cond_c

    .line 193
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_c
    move-object v11, v4

    .line 196
    iget-object v9, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface/range {v9 .. v14}, Lnet/usikkert/kouchat/net/MessageResponder;->topicChanged(ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_d
    const-string v9, "NICK"

    .line 200
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 201
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v10, v14}, Lnet/usikkert/kouchat/net/MessageResponder;->nickChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v9, "IDLE"

    .line 204
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 205
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v10, v3}, Lnet/usikkert/kouchat/net/MessageResponder;->userIdle(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v9, "SENDFILEACCEPT"

    .line 208
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v4, "("

    .line 209
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v7, ")"

    .line 210
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v8

    .line 211
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 213
    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v6

    if-ne v4, v6, :cond_15

    const-string v4, "{"

    .line 214
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "}"

    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "["

    .line 216
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v9, "]"

    .line 217
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v7, v8

    .line 218
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v8

    .line 219
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v6, v8

    .line 220
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 222
    iget-object v6, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v6, v10, v5, v4, v7}, Lnet/usikkert/kouchat/net/MessageResponder;->fileSendAccepted(ILjava/lang/String;II)V

    goto/16 :goto_1

    :cond_10
    const-string v9, "SENDFILEABORT"

    .line 226
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v4, "("

    .line 227
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v7, ")"

    .line 228
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v8

    .line 229
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 231
    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v6

    if-ne v4, v6, :cond_15

    const-string v4, "{"

    .line 232
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "}"

    .line 233
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 234
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v8

    .line 235
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 237
    iget-object v5, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v5, v10, v7, v4}, Lnet/usikkert/kouchat/net/MessageResponder;->fileSendAborted(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_11
    const-string v9, "SENDFILE"

    .line 241
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v4, "("

    .line 242
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v7, ")"

    .line 243
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v8

    .line 244
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 246
    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v6

    if-ne v4, v6, :cond_15

    const-string v4, "{"

    .line 247
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "}"

    .line 248
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "["

    .line 249
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v9, "]"

    .line 250
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v7, v8

    .line 251
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-int/lit8 v7, v6, 0x1

    .line 252
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v4, v8

    .line 253
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 255
    iget-object v9, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface/range {v9 .. v15}, Lnet/usikkert/kouchat/net/MessageResponder;->fileSend(IJLjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_12
    const-string v6, "CLIENT"

    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "("

    .line 260
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, ")"

    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v9, "["

    .line 262
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string v11, "]"

    .line 263
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "{"

    .line 264
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const-string v13, "}"

    .line 265
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, "<"

    .line 266
    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const-string v15, ">"

    .line 267
    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v4, v8

    .line 269
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v9, v8

    .line 270
    invoke-virtual {v5, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-int/2addr v12, v8

    .line 271
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v14, v8

    .line 276
    :try_start_1
    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move v15, v5

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 280
    :try_start_2
    sget-object v8, Lnet/usikkert/kouchat/net/MessageParser;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse private chat port. message="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", ipAddress="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v15, 0x0

    .line 283
    :goto_0
    iget-object v9, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    move-object v11, v4

    move-wide/from16 v12, v16

    move-object v14, v6

    invoke-interface/range {v9 .. v15}, Lnet/usikkert/kouchat/net/MessageResponder;->clientInfo(ILjava/lang/String;JLjava/lang/String;I)V

    goto/16 :goto_1

    .line 287
    :cond_13
    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v5

    if-ne v10, v5, :cond_14

    const-string v5, "LOGON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 288
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v3}, Lnet/usikkert/kouchat/net/MessageResponder;->meLogOn(Ljava/lang/String;)V

    .line 289
    iput-boolean v8, v1, Lnet/usikkert/kouchat/net/MessageParser;->loggedOn:Z

    goto :goto_1

    .line 292
    :cond_14
    invoke-virtual {v6}, Lnet/usikkert/kouchat/misc/User;->getCode()I

    move-result v5

    if-ne v10, v5, :cond_15

    const-string v5, "IDLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-boolean v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->loggedOn:Z

    if-eqz v4, :cond_15

    .line 293
    iget-object v4, v1, Lnet/usikkert/kouchat/net/MessageParser;->responder:Lnet/usikkert/kouchat/net/MessageResponder;

    invoke-interface {v4, v3}, Lnet/usikkert/kouchat/net/MessageResponder;->meIdle(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 304
    sget-object v5, Lnet/usikkert/kouchat/net/MessageParser;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse message. message="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ipAddress="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 299
    sget-object v5, Lnet/usikkert/kouchat/net/MessageParser;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse message. message="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ipAddress="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_1
    return-void
.end method
