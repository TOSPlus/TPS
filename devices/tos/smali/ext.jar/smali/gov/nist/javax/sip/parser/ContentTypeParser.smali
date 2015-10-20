.class public Lgov/nist/javax/sip/parser/ContentTypeParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentTypeParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

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
    .line 58
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    .line 59
    .local v0, "contentType":Lgov/nist/javax/sip/header/ContentType;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    if-eqz v3, :cond_0

    .line 60
    const-string v3, "ContentTypeParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_enter(Ljava/lang/String;)V

    .line 63
    :cond_0
    const/16 v3, 0x826

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentTypeParser;->headerName(I)V

    .line 66
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 67
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 68
    .local v2, "type":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 69
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 73
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 74
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    .line 75
    .local v1, "subType":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    .line 77
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    if-eqz v3, :cond_1

    .line 81
    const-string v3, "ContentTypeParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_leave(Ljava/lang/String;)V

    .line 83
    :cond_1
    return-object v0

    .line 80
    .end local v1    # "subType":Lgov/nist/core/Token;
    .end local v2    # "type":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    if-eqz v4, :cond_2

    .line 81
    const-string v4, "ContentTypeParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_leave(Ljava/lang/String;)V

    .line 80
    :cond_2
    throw v3
.end method
