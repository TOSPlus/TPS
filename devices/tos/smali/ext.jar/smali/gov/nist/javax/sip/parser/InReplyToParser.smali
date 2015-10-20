.class public Lgov/nist/javax/sip/parser/InReplyToParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "InReplyToParser.java"


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
    .param p1, "inReplyTo"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2c

    const/16 v6, 0x40

    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "InReplyToParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/InReplyToList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/InReplyToList;-><init>()V

    .line 72
    .local v1, "list":Lgov/nist/javax/sip/header/InReplyToList;
    const/16 v4, 0x80b

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/InReplyToParser;->headerName(I)V

    .line 74
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    .line 75
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    .line 76
    .local v0, "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    const-string v4, "In-Reply-To"

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setHeaderName(Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 80
    .local v3, "token":Lgov/nist/core/Token;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 84
    .local v2, "secToken":Lgov/nist/core/Token;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 90
    .end local v2    # "secToken":Lgov/nist/core/Token;
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/InReplyToList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 94
    :goto_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    .line 95
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    .end local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    .line 100
    .restart local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 101
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 103
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 104
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 106
    .restart local v2    # "secToken":Lgov/nist/core/Token;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 114
    .end local v2    # "secToken":Lgov/nist/core/Token;
    :goto_2
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/InReplyToList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 120
    .end local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    if-eqz v5, :cond_2

    .line 121
    const-string v5, "InReplyToParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 120
    :cond_2
    throw v4

    .line 87
    .restart local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    .restart local v3    # "token":Lgov/nist/core/Token;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_4
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 120
    .end local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    .end local v3    # "token":Lgov/nist/core/Token;
    :cond_5
    sget-boolean v4, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    if-eqz v4, :cond_6

    .line 121
    const-string v4, "InReplyToParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 118
    :cond_6
    return-object v1
.end method
