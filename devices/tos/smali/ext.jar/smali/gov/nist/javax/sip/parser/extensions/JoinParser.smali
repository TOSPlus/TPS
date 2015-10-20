.class public Lgov/nist/javax/sip/parser/extensions/JoinParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "JoinParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "callID"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Join: 12345th5z8z\n"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "Join: 12345th5z8z;to-tag=tozght6-45;from-tag=fromzght789-337-2\n"

    aput-object v5, v2, v4

    .line 67
    .local v2, "to":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 68
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/JoinParser;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/JoinParser;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "tp":Lgov/nist/javax/sip/parser/extensions/JoinParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/extensions/Join;

    .line 70
    .local v1, "t":Lgov/nist/javax/sip/header/extensions/Join;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Join;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Join;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from-tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Join;->getFromTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to-tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Join;->getToTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 76
    .end local v1    # "t":Lgov/nist/javax/sip/header/extensions/Join;
    .end local v3    # "tp":Lgov/nist/javax/sip/parser/extensions/JoinParser;
    :cond_0
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
    .line 43
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/JoinParser;->debug:Z

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->dbg_enter(Ljava/lang/String;)V

    .line 46
    :cond_0
    const/16 v2, 0x85c

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->headerName(I)V

    .line 48
    new-instance v1, Lgov/nist/javax/sip/header/extensions/Join;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/extensions/Join;-><init>()V

    .line 49
    .local v1, "join":Lgov/nist/javax/sip/header/extensions/Join;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/JoinParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 50
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/JoinParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/JoinParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 52
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 53
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/JoinParser;->debug:Z

    if-eqz v2, :cond_1

    .line 57
    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->dbg_leave(Ljava/lang/String;)V

    .line 54
    :cond_1
    return-object v1

    .line 56
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "join":Lgov/nist/javax/sip/header/extensions/Join;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/extensions/JoinParser;->debug:Z

    if-eqz v3, :cond_2

    .line 57
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->dbg_leave(Ljava/lang/String;)V

    .line 56
    :cond_2
    throw v2
.end method
