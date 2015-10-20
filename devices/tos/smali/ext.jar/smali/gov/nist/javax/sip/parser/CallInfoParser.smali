.class public Lgov/nist/javax/sip/parser/CallInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "CallInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "callInfo"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    .line 66
    sget-boolean v4, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "CallInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/CallInfoList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallInfoList;-><init>()V

    .line 70
    .local v1, "list":Lgov/nist/javax/sip/header/CallInfoList;
    const/16 v4, 0x833

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CallInfoParser;->headerName(I)V

    .line 72
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 74
    .local v0, "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    const-string v4, "Call-Info"

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/CallInfo;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 79
    .local v3, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    .line 80
    .local v2, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 85
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 87
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 88
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 91
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    .end local v0    # "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 93
    .restart local v0    # "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 95
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    .end local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 96
    .restart local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 98
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 99
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 102
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    .end local v2    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "CallInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v4

    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "CallInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 106
    :cond_4
    return-object v1
.end method
