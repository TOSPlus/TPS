.class public Lgov/nist/javax/sip/parser/RouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "RouteParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2c

    .line 60
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 61
    .local v2, "routeList":Lgov/nist/javax/sip/header/RouteList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/RouteParser;->debug:Z

    if-eqz v3, :cond_0

    .line 62
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RouteParser;->dbg_enter(Ljava/lang/String;)V

    .line 65
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x816

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 66
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 67
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 68
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 70
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 71
    .local v1, "route":Lgov/nist/javax/sip/header/Route;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 72
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 73
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 75
    .local v0, "la":C
    if-ne v0, v5, :cond_2

    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "la":C
    .end local v1    # "route":Lgov/nist/javax/sip/header/Route;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/RouteParser;->debug:Z

    if-eqz v4, :cond_1

    .line 86
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 85
    :cond_1
    throw v3

    .line 78
    .restart local v0    # "la":C
    .restart local v1    # "route":Lgov/nist/javax/sip/header/Route;
    :cond_2
    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    .line 85
    sget-boolean v3, Lgov/nist/javax/sip/parser/RouteParser;->debug:Z

    if-eqz v3, :cond_3

    .line 86
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 83
    :cond_3
    return-object v2

    .line 81
    :cond_4
    :try_start_1
    const-string v3, "unexpected char"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
