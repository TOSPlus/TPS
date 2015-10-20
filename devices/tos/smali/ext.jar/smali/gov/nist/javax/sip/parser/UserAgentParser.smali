.class public Lgov/nist/javax/sip/parser/UserAgentParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UserAgentParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v4, 0x6

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "User-Agent: Softphone/Beta1.5 \n"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "User-Agent:Nist/Beta1 (beta version) \n"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "User-Agent: Nist UA (beta version)\n"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "User-Agent: Nist1.0/Beta2 Ubi/vers.1.0 (very cool) \n"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "User-Agent: SJphone/1.60.299a/L (SJ Labs)\n"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "User-Agent: sipXecs/3.5.11 sipXecs/sipxbridge (Linux)\n"

    aput-object v5, v3, v4

    .line 141
    .local v3, "userAgent":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    new-instance v1, Lgov/nist/javax/sip/parser/UserAgentParser;

    aget-object v4, v3, v0

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/UserAgentParser;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "parser":Lgov/nist/javax/sip/parser/UserAgentParser;
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/UserAgentParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/UserAgent;

    .line 143
    .local v2, "ua":Lgov/nist/javax/sip/header/UserAgent;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/UserAgent;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "parser":Lgov/nist/javax/sip/parser/UserAgentParser;
    .end local v2    # "ua":Lgov/nist/javax/sip/header/UserAgent;
    :cond_0
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
    const/16 v9, 0x2f

    const/16 v8, 0x28

    const/16 v7, 0xa

    .line 73
    sget-boolean v5, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "UserAgentParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_enter(Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v4, Lgov/nist/javax/sip/header/UserAgent;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    .line 77
    .local v4, "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    const/16 v5, 0x811

    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->headerName(I)V

    .line 78
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    .line 79
    const-string v5, "empty header"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    if-eqz v6, :cond_1

    .line 128
    const-string v6, "UserAgentParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    .line 127
    :cond_1
    throw v5

    .line 87
    :cond_2
    :goto_0
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_7

    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eqz v5, :cond_7

    .line 89
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    .line 90
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "comment":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    .line 124
    .end local v0    # "comment":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/UserAgentParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Lexer;->SPorHT()V

    .line 100
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "product":Ljava/lang/String;
    if-nez v1, :cond_4

    const-string v5, "Expected product string"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .line 103
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "productSb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenType()I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 107
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 110
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/UserAgentParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Lexer;->SPorHT()V

    .line 112
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "productVersion":Ljava/lang/String;
    if-nez v3, :cond_5

    const-string v5, "Expected product version"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .line 116
    :cond_5
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .end local v3    # "productVersion":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 127
    .end local v1    # "product":Ljava/lang/String;
    .end local v2    # "productSb":Ljava/lang/StringBuffer;
    :cond_7
    sget-boolean v5, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    if-eqz v5, :cond_8

    .line 128
    const-string v5, "UserAgentParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    .line 131
    :cond_8
    return-object v4
.end method
