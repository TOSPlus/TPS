.class public Lgov/nist/javax/sip/parser/AllowEventsParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AllowEventsParser.java"


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
    .param p1, "allowEvents"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

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
    const/16 v5, 0x2c

    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowEventsParser;->debug:Z

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "AllowEventsParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowEventsParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/AllowEventsList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AllowEventsList;-><init>()V

    .line 72
    .local v1, "list":Lgov/nist/javax/sip/header/AllowEventsList;
    const/16 v3, 0x841

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowEventsParser;->headerName(I)V

    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    .line 75
    .local v0, "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    const-string v3, "Allow-Events"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AllowEvents;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 80
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AllowEventsList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 83
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 86
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    new-instance v0, Lgov/nist/javax/sip/header/AllowEvents;

    .end local v0    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    .line 89
    .restart local v0    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AllowEventsList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 94
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    .end local v0    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/AllowEventsParser;->debug:Z

    if-eqz v4, :cond_1

    .line 102
    const-string v4, "AllowEventsParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AllowEventsParser;->dbg_leave(Ljava/lang/String;)V

    .line 101
    :cond_1
    throw v3

    .line 96
    .restart local v0    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    .restart local v2    # "token":Lgov/nist/core/Token;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowEventsParser;->debug:Z

    if-eqz v3, :cond_3

    .line 102
    const-string v3, "AllowEventsParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowEventsParser;->dbg_leave(Ljava/lang/String;)V

    .line 99
    :cond_3
    return-object v1
.end method
