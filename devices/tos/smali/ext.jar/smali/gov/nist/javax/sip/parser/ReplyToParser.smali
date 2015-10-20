.class public Lgov/nist/javax/sip/parser/ReplyToParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReplyToParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyTo"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

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
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    .line 65
    .local v0, "replyTo":Lgov/nist/javax/sip/header/ReplyTo;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "ReplyTo.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    const/16 v1, 0x83a

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->headerName(I)V

    .line 71
    const-string v1, "Reply-To"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ReplyTo;->setHeaderName(Ljava/lang/String;)V

    .line 73
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "ReplyTo.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 75
    :cond_1
    return-object v0

    .line 77
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v2, :cond_2

    .line 78
    const-string v2, "ReplyTo.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 77
    :cond_2
    throw v1
.end method
