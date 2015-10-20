.class public Lgov/nist/javax/sip/parser/ims/PServedUserParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PServedUserParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "servedUser"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
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
    .line 54
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "PServedUser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_enter(Ljava/lang/String;)V

    .line 59
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x85f

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 60
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    new-instance v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PServedUser;-><init>()V

    .line 64
    .local v0, "servedUser":Lgov/nist/javax/sip/header/ims/PServedUser;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 65
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "servedUsername":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/address/AddressFactoryImpl;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/AddressFactoryImpl;-><init>()V

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/AddressFactoryImpl;->createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PServedUser;->setAddress(Ljavax/sip/address/Address;)V

    .line 67
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    if-eqz v2, :cond_1

    .line 74
    const-string v2, "PServedUser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_leave(Ljava/lang/String;)V

    .line 69
    :cond_1
    return-object v0

    .line 73
    .end local v0    # "servedUser":Lgov/nist/javax/sip/header/ims/PServedUser;
    .end local v1    # "servedUsername":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    if-eqz v3, :cond_2

    .line 74
    const-string v3, "PServedUser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_leave(Ljava/lang/String;)V

    .line 73
    :cond_2
    throw v2
.end method
