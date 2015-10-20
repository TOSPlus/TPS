.class public Lgov/nist/javax/sip/parser/ContentDispositionParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentDispositionParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "ContentDispositionParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/16 v3, 0x834

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->headerName(I)V

    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    .line 74
    .local v0, "cd":Lgov/nist/javax/sip/header/ContentDisposition;
    const-string v3, "Content-Disposition"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 80
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "ContentDispositionParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    .line 87
    :cond_1
    return-object v0

    .line 88
    .end local v0    # "cd":Lgov/nist/javax/sip/header/ContentDisposition;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v4, :cond_2

    .line 92
    const-string v4, "ContentDispositionParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    .line 91
    :cond_2
    throw v3
.end method
