.class public Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PPreferredIdentityParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "preferredIdentity"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "PreferredIdentityParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x84a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 70
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 72
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    .line 75
    .local v0, "p":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "PreferredIdentityParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    .line 76
    :cond_1
    return-object v0

    .line 78
    .end local v0    # "p":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-eqz v2, :cond_2

    .line 79
    const-string v2, "PreferredIdentityParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    .line 78
    :cond_2
    throw v1
.end method
