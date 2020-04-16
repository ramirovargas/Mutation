.class public Lnet/usikkert/kouchat/autocomplete/CommandAutoCompleteList;
.super Ljava/lang/Object;
.source "CommandAutoCompleteList.java"

# interfaces
.implements Lnet/usikkert/kouchat/autocomplete/AutoCompleteList;


# static fields
.field private static final COMMANDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/about"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/away"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "/back"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "/cancel"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "/clear"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "/help"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "/msg"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "/nick"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "/quit"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "/receive"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "/reject"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "/send"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "/topic"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "/transfers"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "/users"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "/whois"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "//"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lnet/usikkert/kouchat/autocomplete/CommandAutoCompleteList;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptsWord(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getWordList()[Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lnet/usikkert/kouchat/autocomplete/CommandAutoCompleteList;->COMMANDS:[Ljava/lang/String;

    return-object v0
.end method
