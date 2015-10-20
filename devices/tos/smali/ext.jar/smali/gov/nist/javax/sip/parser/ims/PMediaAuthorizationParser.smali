.class public Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PMediaAuthorizationParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaAuthorization"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 61
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

    .line 75
    new-instance v2, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;-><init>()V

    .line 77
    .local v2, "mediaAuthorizationList":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-eqz v4, :cond_0

    .line 78
    const-string v4, "MediaAuthorizationParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_enter(Ljava/lang/String;)V

    .line 83
    :cond_0
    const/16 v4, 0x852

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->headerName(I)V

    .line 85
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 86
    .local v1, "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    const-string v4, "P-Media-Authorization"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setHeaderName(Ljava/lang/String;)V

    .line 88
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    .line 90
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 91
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 93
    .local v3, "token":Lgov/nist/core/Token;
    :try_start_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 99
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 102
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    .end local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 105
    .restart local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 113
    .end local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-eqz v5, :cond_2

    .line 114
    const-string v5, "MediaAuthorizationParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_2
    throw v4

    .line 94
    .restart local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    .restart local v3    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    .end local v3    # "token":Lgov/nist/core/Token;
    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-eqz v4, :cond_4

    .line 114
    const-string v4, "MediaAuthorizationParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    .line 108
    :cond_4
    return-object v2
.end method
