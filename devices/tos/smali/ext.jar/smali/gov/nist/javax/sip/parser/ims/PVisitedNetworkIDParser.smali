.class public Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PVisitedNetworkIDParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkID"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 69
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

    .line 81
    new-instance v2, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    .line 83
    .local v2, "visitedNetworkIDList":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v3, :cond_0

    .line 84
    const-string v3, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 87
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x84b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    .line 96
    .local v1, "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    .line 97
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V

    .line 101
    :goto_1
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 103
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 105
    .local v0, "la":C
    if-ne v0, v5, :cond_3

    .line 106
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "la":C
    .end local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v4, :cond_1

    .line 116
    const-string v4, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 115
    :cond_1
    throw v3

    .line 99
    .restart local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 108
    .restart local v0    # "la":C
    :cond_3
    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    .line 115
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v3, :cond_4

    .line 116
    const-string v3, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_4
    return-object v2

    .line 111
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected char = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 5
    .param p1, "visitedNetworkID"    # Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 123
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "parseQuotedString"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 128
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v1, "retval":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    .line 131
    const-string v2, "unexpected char"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v1    # "retval":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v3, :cond_1

    .line 157
    const-string v3, "parseQuotedString.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 156
    :cond_1
    throw v2

    .line 132
    .restart local v1    # "retval":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 135
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 136
    .local v0, "next":C
    if-ne v0, v4, :cond_4

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "parseQuotedString.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 160
    :cond_3
    return-void

    .line 139
    :cond_4
    if-nez v0, :cond_5

    .line 140
    :try_start_2
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "unexpected EOL"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 141
    :cond_5
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_6

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 3
    .param p1, "visitedNetworkID"    # Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 167
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 169
    .local v0, "token":Lgov/nist/core/Token;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Lgov/nist/core/Token;)V

    .line 170
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 172
    return-void
.end method
