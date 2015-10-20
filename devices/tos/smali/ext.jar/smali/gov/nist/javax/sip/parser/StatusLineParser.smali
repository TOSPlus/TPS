.class public Lgov/nist/javax/sip/parser/StatusLineParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "StatusLineParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 46
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "status_lineLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "statusLine"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 42
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "status_lineLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 43
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/StatusLine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v4, :cond_0

    .line 75
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    .line 76
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 77
    .local v0, "retval":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->sipVersion()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->statusCode()I

    move-result v2

    .line 81
    .local v2, "scode":I
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->reasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v4, :cond_1

    .line 89
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 86
    :cond_1
    return-object v0

    .line 88
    .end local v0    # "retval":Lgov/nist/javax/sip/header/StatusLine;
    .end local v1    # "rp":Ljava/lang/String;
    .end local v2    # "scode":I
    .end local v3    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v5, :cond_2

    .line 89
    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 88
    :cond_2
    throw v4
.end method

.method protected reasonPhrase()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected statusCode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v3, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "scode":Ljava/lang/String;
    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v3, :cond_0

    .line 53
    const-string v3, "statusCode"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    .line 55
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 62
    .local v1, "retval":I
    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v3, :cond_1

    .line 63
    const-string v3, "statusCode"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 56
    :cond_1
    return v1

    .line 57
    .end local v1    # "retval":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v4, :cond_2

    .line 63
    const-string v4, "statusCode"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 62
    :cond_2
    throw v3
.end method
