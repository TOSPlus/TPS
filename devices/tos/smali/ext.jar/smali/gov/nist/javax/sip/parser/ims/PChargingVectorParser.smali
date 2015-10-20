.class public Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PChargingVectorParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargingVector"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 55
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
    const/16 v5, 0xa

    .line 68
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v3, :cond_0

    .line 69
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/16 v3, 0x84d

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->headerName(I)V

    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v0, "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 79
    .local v2, "la":C
    if-eq v2, v5, :cond_1

    if-nez v2, :cond_3

    .line 90
    .end local v2    # "la":C
    :cond_1
    :try_start_2
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 91
    const-string v3, "icid-value"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 92
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Missing a required Parameter : icid-value"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v0    # "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v4, :cond_2

    .line 96
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_2
    throw v3

    .line 81
    .restart local v0    # "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    .restart local v2    # "la":C
    :cond_3
    :try_start_3
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    .end local v2    # "la":C
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_4
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v3, :cond_5

    .line 96
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_5
    return-object v0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V
    .locals 3
    .param p1, "chargingVector"    # Lgov/nist/javax/sip/header/ims/PChargingVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 102
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    .line 105
    :cond_0
    const/16 v1, 0x3d

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 106
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void

    .line 108
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v2, :cond_2

    .line 109
    const-string v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 108
    :cond_2
    throw v1
.end method
