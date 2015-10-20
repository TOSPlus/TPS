.class public Lgov/nist/javax/sip/parser/EventParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "EventParser.java"


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
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
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
    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "EventParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/16 v4, 0x83f

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->headerName(I)V

    .line 72
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/Event;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Event;-><init>()V

    .line 75
    .local v0, "event":Lgov/nist/javax/sip/header/Event;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 77
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Event;->setEventType(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-boolean v4, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    if-eqz v4, :cond_1

    .line 91
    const-string v4, "EventParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    .line 85
    :cond_1
    return-object v0

    .line 87
    .end local v0    # "event":Lgov/nist/javax/sip/header/Event;
    .end local v2    # "token":Lgov/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    if-eqz v5, :cond_2

    .line 91
    const-string v5, "EventParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    .line 90
    :cond_2
    throw v4
.end method
