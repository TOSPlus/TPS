.class public Lgov/nist/javax/sip/parser/TimeStampParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "TimeStampParser.java"


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
    .param p1, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    .line 67
    sget-boolean v7, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v7, :cond_0

    .line 68
    const-string v7, "TimeStampParser.parse"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v4, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    .line 71
    .local v4, "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    const/16 v7, 0x837

    :try_start_0
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->headerName(I)V

    .line 73
    const-string v7, "Timestamp"

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/TimeStamp;->setHeaderName(Ljava/lang/String;)V

    .line 75
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 80
    .local v1, "firstNumber":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 81
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "secondNumber":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 86
    .local v5, "ts":F
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "secondNumber":Ljava/lang/String;
    .end local v5    # "ts":F
    :goto_0
    :try_start_2
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    .line 101
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 105
    :try_start_3
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    if-ne v7, v9, :cond_5

    .line 106
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 109
    .restart local v3    # "secondNumber":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 111
    .restart local v5    # "ts":F
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "secondNumber":Ljava/lang/String;
    .end local v5    # "ts":F
    :cond_1
    :goto_1
    sget-boolean v7, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v7, :cond_2

    .line 127
    const-string v7, "TimeStampParser.parse"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    .line 130
    :cond_2
    return-object v4

    .line 88
    :cond_3
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 89
    .local v5, "ts":J
    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/header/TimeStamp;->setTime(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 93
    .end local v5    # "ts":J
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "firstNumber":Ljava/lang/String;
    :catchall_0
    move-exception v7

    sget-boolean v8, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v8, :cond_4

    .line 127
    const-string v8, "TimeStampParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    .line 126
    :cond_4
    throw v7

    .line 95
    .restart local v1    # "firstNumber":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_6
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_5
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    .local v5, "ts":I
    int-to-float v7, v5

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 118
    .end local v5    # "ts":I
    :catch_2
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7

    .line 120
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 121
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
