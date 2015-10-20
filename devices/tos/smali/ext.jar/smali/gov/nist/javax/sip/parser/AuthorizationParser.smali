.class public Lgov/nist/javax/sip/parser/AuthorizationParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "AuthorizationParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "authorization"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    .line 49
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
    const-string v1, "parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthorizationParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    const/16 v1, 0x817

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthorizationParser;->headerName(I)V

    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/Authorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    .line 69
    .local v0, "auth":Lgov/nist/javax/sip/header/Authorization;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string v1, "parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    .line 70
    return-object v0

    .line 72
    .end local v0    # "auth":Lgov/nist/javax/sip/header/Authorization;
    :catchall_0
    move-exception v1

    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    throw v1
.end method
