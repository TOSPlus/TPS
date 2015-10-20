.class public Lgov/nist/javax/sip/parser/RAckParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RAckParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rack"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 53
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
    .line 70
    sget-boolean v4, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    if-eqz v4, :cond_0

    .line 71
    const-string v4, "RAckParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    .line 74
    .local v2, "rack":Lgov/nist/javax/sip/header/RAck;
    const/16 v4, 0x83d

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->headerName(I)V

    .line 76
    const-string v4, "RAck"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/RAck;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 86
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 87
    .local v3, "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    sget-boolean v4, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    if-eqz v4, :cond_1

    .line 98
    const-string v4, "RAckParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_1
    return-object v2

    .line 89
    .end local v1    # "number":Ljava/lang/String;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    if-eqz v5, :cond_2

    .line 98
    const-string v5, "RAckParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    .line 97
    :cond_2
    throw v4
.end method
