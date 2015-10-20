.class public Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "ProxyAuthorizationParser.java"


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
    .param p1, "proxyAuthorization"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    const/16 v1, 0x818

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;->headerName(I)V

    .line 66
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthorization;-><init>()V

    .line 67
    .local v0, "proxyAuth":Lgov/nist/javax/sip/header/ProxyAuthorization;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V

    .line 68
    return-object v0
.end method
