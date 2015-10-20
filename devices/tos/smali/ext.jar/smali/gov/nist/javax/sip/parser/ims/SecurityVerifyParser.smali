.class public Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityVerifyParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    .line 54
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
    .line 64
    const-string v2, "SecuriryVerify parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    const/16 v2, 0x85b

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->headerName(I)V

    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    .line 69
    .local v0, "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v1, "secVerifyList":Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    const-string v2, "SecuriryVerify parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    .line 71
    return-object v1

    .line 74
    .end local v0    # "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    .end local v1    # "secVerifyList":Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    :catchall_0
    move-exception v2

    const-string v3, "SecuriryVerify parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
