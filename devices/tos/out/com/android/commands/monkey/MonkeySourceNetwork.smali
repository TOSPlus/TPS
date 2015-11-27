.class public Lcom/android/commands/monkey/MonkeySourceNetwork;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetwork$1;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    }
.end annotation


# static fields
.field private static final COMMAND_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final DONE:Ljava/lang/String; = "done"

.field public static final EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field public static final ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private static final ERROR_STR:Ljava/lang/String; = "ERROR"

.field public static final MONKEY_NETWORK_VERSION:I = 0x2

.field public static final OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private static final OK_STR:Ljava/lang/String; = "OK"

.field private static final QUIT:Ljava/lang/String; = "quit"

.field private static final TAG:Ljava/lang/String; = "MonkeyStub"

.field private static deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;


# instance fields
.field private clientSocket:Ljava/net/Socket;

.field private final commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

.field private input:Ljava/io/BufferedReader;

.field private output:Ljava/io/PrintWriter;

.field private serverSocket:Ljava/net/ServerSocket;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 88
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 89
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v1, "Invalid Argument"

    invoke-direct {v0, v2, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    .line 453
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "flip"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "touch"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "trackball"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "key"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "sleep"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "wake"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "tap"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "press"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "type"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "listvar"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getvar"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "listviews"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "queryview"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getrootview"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getviewswithtext"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "deferreturn"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    .line 551
    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 559
    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    .line 562
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
    .registers 1
    .param p0, "x0"    # Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    .prologue
    .line 49
    sput-object p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    return-object p0
.end method

.method private static commandLineSplit(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 622
    .local v4, "tok":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 623
    .local v1, "insideQuote":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 624
    .local v2, "quotedWord":Ljava/lang/StringBuffer;
    :goto_10
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 625
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "cur":Ljava/lang/String;
    if-nez v1, :cond_2d

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 628
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    const/4 v1, 0x1

    goto :goto_10

    .line 630
    :cond_2d
    if-eqz v1, :cond_66

    .line 632
    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 633
    const/4 v1, 0x0

    .line 634
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "word":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 640
    .end local v5    # "word":Ljava/lang/String;
    :cond_58
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 643
    :cond_66
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 646
    .end local v0    # "cur":Ljava/lang/String;
    :cond_6e
    return-object v3
.end method

.method private static getKeyCode(Ljava/lang/String;)I
    .registers 5
    .param p0, "keyName"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v1, -0x1

    .line 245
    .local v1, "keyCode":I
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_7

    move-result v1

    :cond_5
    move v2, v1

    .line 263
    :goto_6
    return v2

    .line 246
    :catch_7
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 250
    if-nez v1, :cond_5

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 257
    if-nez v1, :cond_5

    .line 259
    const/4 v2, -0x1

    goto :goto_6
.end method

.method private handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V
    .registers 3
    .param p1, "ret"    # Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .prologue
    .line 667
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 668
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 669
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk(Ljava/lang/String;)V

    .line 680
    :goto_13
    return-void

    .line 671
    :cond_14
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    goto :goto_13

    .line 674
    :cond_18
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 675
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError(Ljava/lang/String;)V

    goto :goto_13

    .line 677
    :cond_26
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError()V

    goto :goto_13
.end method

.method private static replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 605
    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnError()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method private returnError(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method private returnOk()V
    .registers 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method private returnOk(Ljava/lang/String;)V
    .registers 4
    .param p1, "returnValue"    # Ljava/lang/String;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method private startServer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    .line 577
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->setup()V

    .line 579
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    .line 581
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    .line 583
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    .line 584
    return-void
.end method

.method private stopServer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 591
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->teardown()V

    .line 592
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 593
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 595
    return-void
.end method

.method private translateCommand(Ljava/lang/String;)V
    .registers 8
    .param p1, "commandLine"    # Ljava/lang/String;

    .prologue
    .line 655
    const-string v3, "MonkeyStub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translateCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandLineSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 657
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 658
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    .line 659
    .local v0, "command":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    if-eqz v0, :cond_3a

    .line 660
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-interface {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v2

    .line 661
    .local v2, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-direct {p0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    .line 664
    .end local v0    # "command":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .end local v2    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_3a
    return-void
.end method

.method private static final wake()Z
    .registers 4

    .prologue
    .line 437
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 440
    .local v1, "pm":Landroid/os/IPowerManager;
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    .line 445
    const/4 v2, 0x1

    :goto_12
    return v2

    .line 441
    :catch_13
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MonkeyStub"

    const-string v3, "Got remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    const/4 v2, 0x0

    goto :goto_12
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 684
    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    if-nez v5, :cond_b

    .line 686
    :try_start_5
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->startServer()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_14

    .line 691
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 700
    :cond_b
    :goto_b
    :try_start_b
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->getNextQueuedEvent()Lcom/android/commands/monkey/MonkeyEvent;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_57

    move-result-object v2

    .line 701
    .local v2, "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v2, :cond_1e

    .line 759
    .end local v2    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    :goto_13
    return-object v2

    .line 687
    :catch_14
    move-exception v1

    .line 688
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MonkeyStub"

    const-string v6, "Got IOException from server"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 689
    goto :goto_13

    .line 709
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1e
    :try_start_1e
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    if-eqz v5, :cond_35

    .line 710
    const-string v5, "MonkeyStub"

    const-string v6, "Waiting for event"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->waitForEvent()Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v3

    .line 712
    .local v3, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    const/4 v5, 0x0

    sput-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    .line 713
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    .line 716
    .end local v3    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_35
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "command":Ljava/lang/String;
    if-nez v0, :cond_46

    .line 718
    const-string v5, "MonkeyStub"

    const-string v6, "Connection dropped."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v0, "done"

    .line 724
    :cond_46
    const-string v5, "done"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4b} :catch_57

    move-result v5

    if-eqz v5, :cond_6b

    .line 727
    :try_start_4e
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->stopServer()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_61

    .line 734
    :try_start_51
    new-instance v2, Lcom/android/commands/monkey/MonkeyNoopEvent;

    .end local v2    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeyNoopEvent;-><init>()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_57

    goto :goto_13

    .line 757
    .end local v0    # "command":Ljava/lang/String;
    :catch_57
    move-exception v1

    .line 758
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "MonkeyStub"

    const-string v6, "Exception: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 759
    goto :goto_13

    .line 728
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v2    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    :catch_61
    move-exception v1

    .line 729
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_62
    const-string v5, "MonkeyStub"

    const-string v6, "Got IOException shutting down!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 730
    goto :goto_13

    .line 738
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6b
    const-string v5, "quit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 740
    const-string v5, "MonkeyStub"

    const-string v6, "Quit requested"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    move-object v2, v4

    .line 743
    goto :goto_13

    .line 749
    :cond_7f
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 755
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->translateCommand(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_8a} :catch_57

    goto :goto_b
.end method

.method public setVerbose(I)V
    .registers 2
    .param p1, "verbose"    # I

    .prologue
    .line 801
    return-void
.end method

.method public validate()Z
    .registers 2

    .prologue
    .line 805
    const/4 v0, 0x1

    return v0
.end method
