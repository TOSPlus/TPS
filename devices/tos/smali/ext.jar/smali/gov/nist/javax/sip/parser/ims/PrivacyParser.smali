.class public Lgov/nist/javax/sip/parser/ims/PrivacyParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PrivacyParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyType"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 67
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
    .line 127
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Privacy: none\n"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "Privacy: none;id;user\n"

    aput-object v5, v2, v4

    .line 133
    .local v2, "rou":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 134
    new-instance v3, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "rp":Lgov/nist/javax/sip/parser/ims/PrivacyParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ims/PrivacyList;

    .line 137
    .local v1, "list":Lgov/nist/javax/sip/header/ims/PrivacyList;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ims/PrivacyList;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "list":Lgov/nist/javax/sip/header/ims/PrivacyList;
    .end local v3    # "rp":Lgov/nist/javax/sip/parser/ims/PrivacyParser;
    :cond_0
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
    const/16 v5, 0x3b

    .line 77
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    if-eqz v3, :cond_0

    .line 78
    const-string v3, "PrivacyParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_enter(Ljava/lang/String;)V

    .line 80
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/PrivacyList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PrivacyList;-><init>()V

    .line 84
    .local v1, "privacyList":Lgov/nist/javax/sip/header/ims/PrivacyList;
    const/16 v3, 0x84e

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->headerName(I)V

    .line 86
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    .line 90
    .local v0, "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    const-string v3, "Privacy"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/Privacy;->setHeaderName(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 93
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 94
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 99
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 101
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 102
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 103
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    .end local v0    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    .line 104
    .restart local v0    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 109
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    if-eqz v4, :cond_2

    .line 118
    const-string v4, "PrivacyParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    .line 117
    :cond_2
    throw v3

    :cond_3
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    if-eqz v3, :cond_4

    .line 118
    const-string v3, "PrivacyParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_4
    return-object v1
.end method
