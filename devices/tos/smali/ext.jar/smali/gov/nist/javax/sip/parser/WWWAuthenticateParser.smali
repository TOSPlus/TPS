.class public Lgov/nist/javax/sip/parser/WWWAuthenticateParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "WWWAuthenticateParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "wwwAuthenticate"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    .line 48
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
    .line 64
    sget-boolean v1, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    :cond_0
    const/16 v1, 0x830

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->headerName(I)V

    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    .line 69
    .local v0, "wwwAuthenticate":Lgov/nist/javax/sip/header/WWWAuthenticate;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    sget-boolean v1, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    .line 70
    :cond_1
    return-object v0

    .line 72
    .end local v0    # "wwwAuthenticate":Lgov/nist/javax/sip/header/WWWAuthenticate;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    .line 72
    :cond_2
    throw v1
.end method
