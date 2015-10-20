.class public Lgov/nist/javax/sip/parser/OrganizationParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "OrganizationParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "organization"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    sget-boolean v2, Lgov/nist/javax/sip/parser/OrganizationParser;->debug:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "OrganizationParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/OrganizationParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Organization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Organization;-><init>()V

    .line 69
    .local v0, "organization":Lgov/nist/javax/sip/header/Organization;
    const/16 v2, 0x82d

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/OrganizationParser;->headerName(I)V

    .line 71
    const-string v2, "Organization"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Organization;->setHeaderName(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lgov/nist/javax/sip/parser/OrganizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v2, p0, Lgov/nist/javax/sip/parser/OrganizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Organization;->setOrganization(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-boolean v2, Lgov/nist/javax/sip/parser/OrganizationParser;->debug:Z

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "OrganizationParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/OrganizationParser;->dbg_leave(Ljava/lang/String;)V

    .line 78
    :cond_1
    return-object v0

    .line 80
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/OrganizationParser;->debug:Z

    if-eqz v3, :cond_2

    .line 81
    const-string v3, "OrganizationParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/OrganizationParser;->dbg_leave(Ljava/lang/String;)V

    .line 80
    :cond_2
    throw v2
.end method
