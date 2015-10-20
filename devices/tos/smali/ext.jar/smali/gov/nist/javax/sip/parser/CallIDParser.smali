.class public Lgov/nist/javax/sip/parser/CallIDParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "CallIDParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "callID"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 63
    sget-boolean v2, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 66
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x828

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 67
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 68
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 69
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 71
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 73
    .local v0, "callID":Lgov/nist/javax/sip/header/CallID;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "rest":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget-boolean v2, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 76
    :cond_1
    return-object v0

    .line 78
    .end local v0    # "callID":Lgov/nist/javax/sip/header/CallID;
    .end local v1    # "rest":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    if-eqz v3, :cond_2

    .line 79
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 78
    :cond_2
    throw v2
.end method
