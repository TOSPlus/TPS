.class public Lgov/nist/javax/sip/parser/AddressParametersParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AddressParametersParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    .locals 6
    .param p1, "addressParametersHeader"    # Lgov/nist/javax/sip/header/AddressParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v4, "AddressParametersParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_enter(Ljava/lang/String;)V

    .line 54
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 55
    .local v1, "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v0

    .line 56
    .local v0, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->setAddress(Ljavax/sip/address/Address;)V

    .line 57
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 59
    .local v3, "la":C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    const-string v4, "AddressParametersParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    .line 74
    return-void

    .line 67
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "addr":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v1    # "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    .end local v3    # "la":C
    :catch_0
    move-exception v2

    .line 70
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v2    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    const-string v5, "AddressParametersParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    throw v4
.end method
