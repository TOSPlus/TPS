.class public Lgov/nist/javax/sip/parser/SIPIfMatchParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SIPIfMatchParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v2, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->debug:Z

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "SIPIfMatch.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/SIPIfMatch;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPIfMatch;-><init>()V

    .line 73
    .local v0, "sipIfMatch":Lgov/nist/javax/sip/header/SIPIfMatch;
    const/16 v2, 0x845

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->headerName(I)V

    .line 75
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    .line 79
    .local v1, "token":Lgov/nist/core/Token;
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPIfMatch;->setETag(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    sget-boolean v2, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->debug:Z

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "SIPIfMatch.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->dbg_leave(Ljava/lang/String;)V

    .line 84
    :cond_1
    return-object v0

    .line 86
    .end local v1    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->debug:Z

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "SIPIfMatch.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SIPIfMatchParser;->dbg_leave(Ljava/lang/String;)V

    .line 86
    :cond_2
    throw v2
.end method
