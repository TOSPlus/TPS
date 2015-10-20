.class public Lgov/nist/javax/sip/parser/HeaderParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "HeaderParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 159
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 160
    iput-object p1, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    .line 161
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "command_keywordLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 156
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "command_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    .line 157
    return-void
.end method


# virtual methods
.method protected date()Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 84
    .local v3, "retval":Ljava/util/Calendar;
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "s1":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "day":I
    if-lez v0, :cond_0

    const/16 v7, 0x1f

    if-le v0, v7, :cond_1

    .line 87
    :cond_0
    const-string v7, "Bad day "

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "day":I
    .end local v3    # "retval":Ljava/util/Calendar;
    .end local v4    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "bad date field"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7

    .line 88
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "day":I
    .restart local v3    # "retval":Ljava/util/Calendar;
    .restart local v4    # "s1":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x5

    :try_start_1
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 89
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "month":Ljava/lang/String;
    const-string v7, "jan"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 116
    :cond_2
    :goto_0
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 117
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "s2":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 119
    .local v6, "yr":I
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 120
    return-object v3

    .line 93
    .end local v5    # "s2":Ljava/lang/String;
    .end local v6    # "yr":I
    :cond_3
    const-string v7, "feb"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 94
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 95
    :cond_4
    const-string v7, "mar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 96
    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 97
    :cond_5
    const-string v7, "apr"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 98
    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 99
    :cond_6
    const-string v7, "may"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 100
    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 101
    :cond_7
    const-string v7, "jun"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 102
    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 103
    :cond_8
    const-string v7, "jul"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 104
    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 105
    :cond_9
    const-string v7, "aug"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 106
    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 107
    :cond_a
    const-string v7, "sep"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 108
    const/4 v7, 0x2

    const/16 v8, 0x8

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 109
    :cond_b
    const-string v7, "oct"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 110
    const/4 v7, 0x2

    const/16 v8, 0x9

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 111
    :cond_c
    const-string v7, "nov"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 112
    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 113
    :cond_d
    const-string v7, "dec"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    const/4 v7, 0x2

    const/16 v8, 0xb

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected headerName(I)V
    .locals 2
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, p1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 186
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 188
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 189
    return-void
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 172
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "body":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v2, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "retval":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    .line 177
    return-object v2
.end method

.method protected time(Ljava/util/Calendar;)V
    .locals 7
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "hour":I
    const/16 v5, 0xb

    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 137
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, "min":I
    const/16 v5, 0xc

    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 140
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 141
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "sec":I
    const/16 v5, 0xd

    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 144
    .end local v1    # "hour":I
    .end local v2    # "min":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "sec":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "error processing time "

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
.end method

.method protected wkday()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v2, "wkday"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_enter(Ljava/lang/String;)V

    .line 52
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "tok":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "id":Ljava/lang/String;
    const-string v2, "Mon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v2, 0x2

    .line 72
    const-string v3, "wkday"

    :goto_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 68
    return v2

    .line 57
    :cond_0
    :try_start_1
    const-string v2, "Tue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const/4 v2, 0x3

    .line 72
    const-string v3, "wkday"

    goto :goto_0

    .line 59
    :cond_1
    :try_start_2
    const-string v2, "Wed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const/4 v2, 0x4

    .line 72
    const-string v3, "wkday"

    goto :goto_0

    .line 61
    :cond_2
    :try_start_3
    const-string v2, "Thu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    const/4 v2, 0x5

    .line 72
    const-string v3, "wkday"

    goto :goto_0

    .line 63
    :cond_3
    :try_start_4
    const-string v2, "Fri"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    const/4 v2, 0x6

    .line 72
    const-string v3, "wkday"

    goto :goto_0

    .line 65
    :cond_4
    :try_start_5
    const-string v2, "Sat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    const/4 v2, 0x7

    .line 72
    const-string v3, "wkday"

    goto :goto_0

    .line 67
    :cond_5
    :try_start_6
    const-string v2, "Sun"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    const/4 v2, 0x1

    .line 72
    const-string v3, "wkday"

    goto :goto_0

    .line 70
    :cond_6
    :try_start_7
    const-string v2, "bad wkday"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 72
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "tok":Ljava/lang/String;
    :catchall_0
    move-exception v2

    const-string v3, "wkday"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
