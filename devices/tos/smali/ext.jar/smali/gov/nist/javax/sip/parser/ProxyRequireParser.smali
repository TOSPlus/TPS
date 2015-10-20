.class public Lgov/nist/javax/sip/parser/ProxyRequireParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ProxyRequireParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "require"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

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

    .line 65
    new-instance v0, Lgov/nist/javax/sip/header/ProxyRequireList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyRequireList;-><init>()V

    .line 66
    .local v0, "list":Lgov/nist/javax/sip/header/ProxyRequireList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ProxyRequireParser;->debug:Z

    if-eqz v3, :cond_0

    .line 67
    const-string v3, "ProxyRequireParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->dbg_enter(Ljava/lang/String;)V

    .line 70
    :cond_0
    const/16 v3, 0x81a

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->headerName(I)V

    .line 72
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    .line 73
    new-instance v1, Lgov/nist/javax/sip/header/ProxyRequire;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    .line 74
    .local v1, "r":Lgov/nist/javax/sip/header/ProxyRequire;
    const-string v3, "Proxy-Require"

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ProxyRequire;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 79
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ProxyRequireList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 84
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 86
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    new-instance v1, Lgov/nist/javax/sip/header/ProxyRequire;

    .end local v1    # "r":Lgov/nist/javax/sip/header/ProxyRequire;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    .line 91
    .restart local v1    # "r":Lgov/nist/javax/sip/header/ProxyRequire;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 92
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ProxyRequireList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    .end local v1    # "r":Lgov/nist/javax/sip/header/ProxyRequire;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ProxyRequireParser;->debug:Z

    if-eqz v4, :cond_2

    .line 102
    const-string v4, "ProxyRequireParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->dbg_leave(Ljava/lang/String;)V

    .line 101
    :cond_2
    throw v3

    :cond_3
    sget-boolean v3, Lgov/nist/javax/sip/parser/ProxyRequireParser;->debug:Z

    if-eqz v3, :cond_4

    .line 102
    const-string v3, "ProxyRequireParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->dbg_leave(Ljava/lang/String;)V

    .line 105
    :cond_4
    return-object v0
.end method
