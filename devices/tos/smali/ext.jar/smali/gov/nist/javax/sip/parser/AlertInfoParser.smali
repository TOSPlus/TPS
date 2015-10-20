.class public Lgov/nist/javax/sip/parser/AlertInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AlertInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "alertInfo"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x2c

    .line 70
    sget-boolean v5, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v5, :cond_0

    .line 71
    const-string v5, "AlertInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/AlertInfoList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/AlertInfoList;-><init>()V

    .line 75
    .local v2, "list":Lgov/nist/javax/sip/header/AlertInfoList;
    const/16 v5, 0x80d

    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->headerName(I)V

    .line 77
    :cond_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    .line 78
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    .line 79
    .local v0, "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    const-string v5, "Alert-Info"

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AlertInfo;->setHeaderName(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    .line 86
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 87
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 88
    .local v4, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 89
    .local v3, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    .line 90
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 99
    .end local v3    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v4    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 102
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/AlertInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 104
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 105
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v6, :cond_2

    .line 112
    const-string v6, "AlertInfoParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 111
    :cond_2
    throw v5

    .line 95
    .restart local v0    # "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "alertInfoStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    .end local v0    # "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    .end local v1    # "alertInfoStr":Ljava/lang/String;
    :cond_4
    sget-boolean v5, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v5, :cond_5

    .line 112
    const-string v5, "AlertInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 109
    :cond_5
    return-object v2
.end method
