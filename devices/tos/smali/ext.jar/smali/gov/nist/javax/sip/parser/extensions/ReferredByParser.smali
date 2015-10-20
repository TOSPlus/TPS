.class public Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReferredByParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "referBy"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v4, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Referred-By: <sip:dave@denver.example.org?Replaces=12345%40192.168.118.3%3Bto-tag%3D12345%3Bfrom-tag%3D5FFE-3994>\n"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "Referred-By: <sip:+1-650-555-2222@ss1.wcom.com;user=phone>;tag=5617\n"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "Referred-By: T. A. Watson <sip:watson@bell-telephone.com>\n"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "Referred-By: LittleGuy <sip:UserB@there.com>\n"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "Referred-By: sip:mranga@120.6.55.9\n"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "Referred-By: sip:mranga@129.6.55.9 ; tag=696928473514.129.6.55.9\n"

    aput-object v5, v2, v4

    .line 50
    .local v2, "to":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 51
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "tp":Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    .line 53
    .local v1, "t":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/ReferredBy;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "t":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    .end local v3    # "tp":Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
    :cond_0
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
    .line 33
    const/16 v1, 0x854

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->headerName(I)V

    .line 34
    new-instance v0, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/ReferredBy;-><init>()V

    .line 35
    .local v0, "referBy":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 36
    iget-object v1, p0, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 37
    return-object v0
.end method
