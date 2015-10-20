.class public Lgov/nist/javax/sip/parser/AllowParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AllowParser.java"


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
    .param p1, "allow"    # Ljava/lang/String;

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

    .line 66
    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    if-eqz v3, :cond_0

    .line 67
    const-string v3, "AllowParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/AllowList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AllowList;-><init>()V

    .line 71
    .local v1, "list":Lgov/nist/javax/sip/header/AllowList;
    const/16 v3, 0x815

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowParser;->headerName(I)V

    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 74
    .local v0, "allow":Lgov/nist/javax/sip/header/Allow;
    const-string v3, "Allow"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Allow;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 79
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    .end local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 88
    .restart local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 93
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    if-eqz v4, :cond_1

    .line 101
    const-string v4, "AllowParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_leave(Ljava/lang/String;)V

    .line 100
    :cond_1
    throw v3

    .line 95
    .restart local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    .restart local v2    # "token":Lgov/nist/core/Token;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    if-eqz v3, :cond_3

    .line 101
    const-string v3, "AllowParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_leave(Ljava/lang/String;)V

    .line 98
    :cond_3
    return-object v1
.end method
