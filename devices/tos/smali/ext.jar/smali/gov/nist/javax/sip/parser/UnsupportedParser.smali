.class public Lgov/nist/javax/sip/parser/UnsupportedParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UnsupportedParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "unsupported"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
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

    .line 66
    new-instance v2, Lgov/nist/javax/sip/header/UnsupportedList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/UnsupportedList;-><init>()V

    .line 67
    .local v2, "unsupportedList":Lgov/nist/javax/sip/header/UnsupportedList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "UnsupportedParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/16 v3, 0x81c

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UnsupportedParser;->headerName(I)V

    .line 73
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    .line 74
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 75
    new-instance v1, Lgov/nist/javax/sip/header/Unsupported;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    .line 76
    .local v1, "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    const-string v3, "Unsupported"

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Unsupported;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 81
    .local v0, "token":Lgov/nist/core/Token;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/UnsupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 86
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 90
    new-instance v1, Lgov/nist/javax/sip/header/Unsupported;

    .end local v1    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    .line 93
    .restart local v1    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 94
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/UnsupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "token":Lgov/nist/core/Token;
    .end local v1    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    if-eqz v4, :cond_2

    .line 104
    const-string v4, "UnsupportedParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 103
    :cond_2
    throw v3

    :cond_3
    sget-boolean v3, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    if-eqz v3, :cond_4

    .line 104
    const-string v3, "UnsupportedParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 107
    :cond_4
    return-object v2
.end method
