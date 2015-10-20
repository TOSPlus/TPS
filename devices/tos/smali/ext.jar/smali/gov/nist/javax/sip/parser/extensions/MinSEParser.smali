.class public Lgov/nist/javax/sip/parser/extensions/MinSEParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "MinSEParser.java"


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
    .param p1, "text"    # Ljava/lang/String;

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
    .line 68
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Min-SE: 30\n"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "Min-SE: 45;some-param=somevalue\n"

    aput-object v5, v2, v4

    .line 73
    .local v2, "to":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 74
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "tp":Lgov/nist/javax/sip/parser/extensions/MinSEParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/extensions/MinSE;

    .line 76
    .local v1, "t":Lgov/nist/javax/sip/header/extensions/MinSE;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/MinSE;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ntime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/MinSE;->getExpires()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const-string v4, "some-param"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/extensions/MinSE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 79
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "some-param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "some-param"

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/extensions/MinSE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "t":Lgov/nist/javax/sip/header/extensions/MinSE;
    .end local v3    # "tp":Lgov/nist/javax/sip/parser/extensions/MinSEParser;
    :cond_1
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
    .line 41
    new-instance v2, Lgov/nist/javax/sip/header/extensions/MinSE;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/extensions/MinSE;-><init>()V

    .line 42
    .local v2, "minse":Lgov/nist/javax/sip/header/extensions/MinSE;
    sget-boolean v4, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    if-eqz v4, :cond_0

    .line 43
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_enter(Ljava/lang/String;)V

    .line 45
    :cond_0
    const/16 v4, 0x856

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->headerName(I)V

    .line 47
    iget-object v4, p0, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 49
    .local v3, "nextId":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "delta":I
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/extensions/MinSE;->setExpires(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    iget-object v4, p0, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    sget-boolean v4, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    if-eqz v4, :cond_1

    .line 62
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    .line 58
    :cond_1
    return-object v2

    .line 51
    .end local v0    # "delta":I
    :catch_0
    move-exception v1

    .line 52
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v4, "bad integer format"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "nextId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    if-eqz v5, :cond_2

    .line 62
    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    .line 61
    :cond_2
    throw v4

    .line 53
    .restart local v3    # "nextId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_4
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
