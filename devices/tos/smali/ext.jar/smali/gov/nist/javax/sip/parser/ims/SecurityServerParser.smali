.class public Lgov/nist/javax/sip/parser/ims/SecurityServerParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityServerParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    .line 55
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
    const-string v2, "SecuriryServer parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    const/16 v2, 0x859

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->headerName(I)V

    .line 69
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    .line 70
    .local v0, "secServer":Lgov/nist/javax/sip/header/ims/SecurityServer;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ims/SecurityServerList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v1, "secServerList":Lgov/nist/javax/sip/header/ims/SecurityServerList;
    const-string v2, "SecuriryServer parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->dbg_leave(Ljava/lang/String;)V

    .line 72
    return-object v1

    .line 75
    .end local v0    # "secServer":Lgov/nist/javax/sip/header/ims/SecurityServer;
    .end local v1    # "secServerList":Lgov/nist/javax/sip/header/ims/SecurityServerList;
    :catchall_0
    move-exception v2

    const-string v3, "SecuriryServer parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
