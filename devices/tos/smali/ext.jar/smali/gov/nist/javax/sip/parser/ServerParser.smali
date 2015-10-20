.class public Lgov/nist/javax/sip/parser/ServerParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ServerParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
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
    const/16 v8, 0x28

    const/16 v7, 0xa

    .line 66
    sget-boolean v5, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    if-eqz v5, :cond_0

    .line 67
    const-string v5, "ServerParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v3, Lgov/nist/javax/sip/header/Server;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Server;-><init>()V

    .line 70
    .local v3, "server":Lgov/nist/javax/sip/header/Server;
    const/16 v5, 0x812

    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->headerName(I)V

    .line 71
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    .line 72
    const-string v5, "empty header"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    if-eqz v6, :cond_1

    .line 101
    const-string v6, "ServerParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    .line 100
    :cond_1
    throw v5

    .line 76
    :cond_2
    :goto_0
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_5

    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eqz v5, :cond_5

    .line 77
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    .line 78
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v0

    .line 79
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

    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "comment":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .line 84
    .local v2, "marker":I
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->markInputPosition()I

    move-result v2

    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->getString(C)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "tok":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 89
    :cond_4
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    .end local v4    # "tok":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_3
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v2}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V

    .line 92
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 93
    .restart local v4    # "tok":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .end local v1    # "ex":Ljava/text/ParseException;
    .end local v2    # "marker":I
    .end local v4    # "tok":Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    if-eqz v5, :cond_6

    .line 101
    const-string v5, "ServerParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    .line 104
    :cond_6
    return-object v3
.end method
