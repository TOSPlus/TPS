.class public Lgov/nist/javax/sip/parser/ims/PathParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PathParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 54
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
    const/16 v5, 0x2c

    .line 72
    new-instance v2, Lgov/nist/javax/sip/header/ims/PathList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PathList;-><init>()V

    .line 74
    .local v2, "pathList":Lgov/nist/javax/sip/header/ims/PathList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "PathParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_enter(Ljava/lang/String;)V

    .line 78
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x847

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/Path;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/Path;-><init>()V

    .line 84
    .local v1, "path":Lgov/nist/javax/sip/header/ims/Path;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 85
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PathList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 86
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 88
    .local v0, "la":C
    if-ne v0, v5, :cond_2

    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "la":C
    .end local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    if-eqz v4, :cond_1

    .line 99
    const-string v4, "PathParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    .line 98
    :cond_1
    throw v3

    .line 91
    .restart local v0    # "la":C
    .restart local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    :cond_2
    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    .line 98
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    if-eqz v3, :cond_3

    .line 99
    const-string v3, "PathParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    .line 96
    :cond_3
    return-object v2

    .line 94
    :cond_4
    :try_start_1
    const-string v3, "unexpected char"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PathParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
