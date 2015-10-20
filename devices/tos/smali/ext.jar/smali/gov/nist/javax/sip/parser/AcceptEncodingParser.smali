.class public Lgov/nist/javax/sip/parser/AcceptEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptEncodingParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2c

    const/16 v8, 0xa

    const/16 v7, 0x3b

    .line 87
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncodingList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    .line 88
    .local v1, "acceptEncodingList":Lgov/nist/javax/sip/header/AcceptEncodingList;
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v5, :cond_0

    .line 89
    const-string v5, "AcceptEncodingParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_enter(Ljava/lang/String;)V

    .line 92
    :cond_0
    const/16 v5, 0x813

    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->headerName(I)V

    .line 94
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_4

    .line 95
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 96
    .local v0, "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_1
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v5, :cond_2

    .line 138
    const-string v5, "AcceptEncodingParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 135
    :cond_2
    return-object v1

    .line 127
    .restart local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_3
    :try_start_1
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 128
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v9, :cond_4

    .line 129
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 130
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    .end local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_4
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v8, :cond_1

    .line 99
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 100
    .restart local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_5

    .line 102
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 104
    .local v4, "value":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    .line 107
    .end local v4    # "value":Lgov/nist/core/Token;
    :cond_5
    :goto_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 108
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 109
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 110
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x71

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 111
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 113
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 114
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 115
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 117
    .restart local v4    # "value":Lgov/nist/core/Token;
    :try_start_2
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 118
    .local v3, "qv":F
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AcceptEncoding;->setQValue(F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :try_start_3
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 137
    .end local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    .end local v3    # "qv":F
    .end local v4    # "value":Lgov/nist/core/Token;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v6, :cond_6

    .line 138
    const-string v6, "AcceptEncodingParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 137
    :cond_6
    throw v5

    .line 119
    .restart local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    .restart local v4    # "value":Lgov/nist/core/Token;
    :catch_0
    move-exception v2

    .line 120
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .line 121
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 122
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
