.class public Lgov/nist/javax/sip/parser/MaxForwardsParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MaxForwardsParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    sget-boolean v3, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v3, :cond_0

    .line 53
    const-string v3, "MaxForwardsParser.enter"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_enter(Ljava/lang/String;)V

    .line 55
    :cond_0
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MaxForwards;-><init>()V

    .line 56
    .local v0, "contentLength":Lgov/nist/javax/sip/header/MaxForwards;
    const/16 v3, 0x81f

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->headerName(I)V

    .line 57
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 59
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 60
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v3, :cond_1

    .line 68
    const-string v3, "MaxForwardsParser.leave"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_leave(Ljava/lang/String;)V

    .line 61
    :cond_1
    return-object v0

    .line 62
    .end local v0    # "contentLength":Lgov/nist/javax/sip/header/MaxForwards;
    .end local v2    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_1
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v4, :cond_2

    .line 68
    const-string v4, "MaxForwardsParser.leave"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_leave(Ljava/lang/String;)V

    .line 67
    :cond_2
    throw v3

    .line 64
    :catch_1
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
