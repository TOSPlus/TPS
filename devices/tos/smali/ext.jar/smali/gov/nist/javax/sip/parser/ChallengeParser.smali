.class public abstract Lgov/nist/javax/sip/parser/ChallengeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ChallengeParser.java"


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

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "challenge"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .locals 6
    .param p1, "header"    # Lgov/nist/javax/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 91
    .local v2, "type":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setScheme(Ljava/lang/String;)V

    .line 96
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;->parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V

    .line 98
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 100
    .local v1, "la":C
    if-eq v1, v5, :cond_0

    if-nez v1, :cond_1

    .line 108
    .end local v1    # "la":C
    :cond_0
    return-void

    .line 102
    .restart local v1    # "la":C
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1    # "la":C
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/text/ParseException;
    throw v0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .locals 3
    .param p1, "header"    # Lgov/nist/javax/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v1, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/16 v1, 0x3d

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 72
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-boolean v1, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    .line 78
    :cond_1
    return-void

    .line 74
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    .line 74
    :cond_2
    throw v1
.end method
