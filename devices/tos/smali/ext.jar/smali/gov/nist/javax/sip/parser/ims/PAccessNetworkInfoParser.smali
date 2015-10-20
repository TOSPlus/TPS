.class public Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAccessNetworkInfoParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessNetwork"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 78
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
    const/16 v5, 0x3b

    .line 90
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "AccessNetworkInfoParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 93
    :cond_0
    const/16 v3, 0x84f

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->headerName(I)V

    .line 94
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    .line 95
    .local v0, "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    const-string v3, "P-Access-Network-Info"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setHeaderName(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 100
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 103
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 104
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 107
    const/16 v3, 0x3d

    invoke-super {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v1

    .line 108
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Lgov/nist/core/NameValue;)V

    .line 109
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    .end local v1    # "nv":Lgov/nist/core/NameValue;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-eqz v4, :cond_1

    .line 118
    const-string v4, "AccessNetworkInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 117
    :cond_1
    throw v3

    .line 111
    .restart local v0    # "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    .restart local v2    # "token":Lgov/nist/core/Token;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-eqz v3, :cond_3

    .line 118
    const-string v3, "AccessNetworkInfoParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 115
    :cond_3
    return-object v0
.end method
