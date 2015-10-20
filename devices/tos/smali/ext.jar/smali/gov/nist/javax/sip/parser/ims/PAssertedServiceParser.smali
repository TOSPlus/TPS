.class public Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAssertedServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pas"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v5, :cond_0

    .line 58
    const-string v5, "PAssertedServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 61
    :cond_0
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x861

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssertedService;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    .line 67
    .local v2, "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "urn":Ljava/lang/String;
    const-string v5, "urn:urn-7:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    const-string v5, "3gpp-service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 72
    const-string v5, "3gpp-service."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v5, v6

    .line 74
    .local v3, "serviceID":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    :try_start_1
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-service"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    .end local v3    # "serviceID":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v5, :cond_2

    .line 112
    const-string v5, "PAssertedServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 108
    :cond_2
    return-object v2

    .line 82
    .restart local v3    # "serviceID":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v5, "3gpp-service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .end local v3    # "serviceID":Ljava/lang/String;
    .end local v4    # "urn":Ljava/lang/String;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v6, :cond_4

    .line 112
    const-string v6, "PAssertedServiceParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 111
    :cond_4
    throw v5

    .line 84
    .restart local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .restart local v4    # "urn":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 86
    const-string v5, "3gpp-application."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 87
    .local v0, "appID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    :try_start_5
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-application"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    :catch_1
    move-exception v1

    .line 91
    .restart local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_6
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_6
    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "appID":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN is not well formed"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 101
    :catch_2
    move-exception v1

    .line 102
    .restart local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_8
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method
