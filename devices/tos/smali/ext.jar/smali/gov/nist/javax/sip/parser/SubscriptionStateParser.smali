.class public Lgov/nist/javax/sip/parser/SubscriptionStateParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SubscriptionStateParser.java"


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
    .param p1, "subscriptionState"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3b

    .line 67
    sget-boolean v8, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    if-eqz v8, :cond_0

    .line 68
    const-string v8, "SubscriptionStateParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_enter(Ljava/lang/String;)V

    .line 70
    :cond_0
    new-instance v5, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-direct {v5}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    .line 72
    .local v5, "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    const/16 v8, 0x838

    :try_start_0
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->headerName(I)V

    .line 74
    const-string v8, "Subscription-State"

    invoke-virtual {v5, v8}, Lgov/nist/javax/sip/header/SubscriptionState;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 79
    .local v6, "token":Lgov/nist/core/Token;
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v10, :cond_5

    .line 82
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 86
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "value":Ljava/lang/String;
    const-string v8, "reason"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 88
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 90
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 91
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/header/SubscriptionState;->setReasonCode(Ljava/lang/String;)V

    .line 130
    :goto_1
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v6    # "token":Lgov/nist/core/Token;
    .end local v7    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    sget-boolean v9, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    if-eqz v9, :cond_1

    .line 134
    const-string v9, "SubscriptionStateParser.parse"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    .line 133
    :cond_1
    throw v8

    .line 94
    .restart local v6    # "token":Lgov/nist/core/Token;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "expires"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 95
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 98
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 101
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "expires":I
    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/header/SubscriptionState;->setExpires(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 103
    .end local v1    # "expires":I
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 105
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 108
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_3
    const-string v8, "retry-after"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 109
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 110
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 111
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 112
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 113
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 115
    :try_start_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "retryAfter":I
    invoke-virtual {v5, v2}, Lgov/nist/javax/sip/header/SubscriptionState;->setRetryAfter(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 117
    .end local v2    # "retryAfter":I
    :catch_2
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 119
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 120
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 123
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_4
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 124
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 125
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 126
    iget-object v8, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 127
    .local v3, "secondToken":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "secondValue":Ljava/lang/String;
    invoke-virtual {v5, v7, v4}, Lgov/nist/javax/sip/header/SubscriptionState;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 133
    .end local v3    # "secondToken":Lgov/nist/core/Token;
    .end local v4    # "secondValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    sget-boolean v8, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    if-eqz v8, :cond_6

    .line 134
    const-string v8, "SubscriptionStateParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    .line 137
    :cond_6
    return-object v5
.end method
