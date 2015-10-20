.class public Lgov/nist/javax/sip/address/AddressFactoryImpl;
.super Ljava/lang/Object;
.source "AddressFactoryImpl.java"

# interfaces
.implements Ljavax/sip/address/AddressFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public createAddress()Ljavax/sip/address/Address;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    return-object v0
.end method

.method public createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null address"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_0
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 187
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 188
    new-instance v2, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    .line 189
    .local v2, "uri":Ljavax/sip/address/SipURI;
    const-string v3, "*"

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setUser(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 194
    .end local v0    # "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v2    # "uri":Ljavax/sip/address/SipURI;
    :goto_0
    return-object v0

    .line 193
    :cond_1
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 194
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljavax/sip/address/URI;

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null  URI"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 80
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 83
    return-object v0
.end method

.method public createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .locals 3
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 165
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 166
    return-object v0
.end method

.method public createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null URI"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 98
    .local v2, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    .local v1, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    return-object v1

    .line 100
    .end local v1    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v2    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .locals 8
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5b

    const/16 v5, 0x3a

    const/4 v6, 0x0

    .line 114
    if-nez p2, :cond_0

    .line 115
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null host"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "sip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "uriString":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_2

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 128
    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 133
    .local v2, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    .local v1, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    return-object v1

    .line 135
    .end local v1    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public createTelURL(Ljava/lang/String;)Ljavax/sip/address/TelURL;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null url"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "telUrl":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 154
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/address/TelURLImpl;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v3, "timp":Lgov/nist/javax/sip/address/TelURLImpl;
    return-object v3

    .line 156
    .end local v1    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v3    # "timp":Lgov/nist/javax/sip/address/TelURLImpl;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public createURI(Ljava/lang/String;)Ljavax/sip/address/URI;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null arg"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/URLParser;->peekScheme()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 214
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "bad scheme"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 215
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :cond_1
    :try_start_1
    const-string v3, "sip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v3

    .line 225
    :goto_0
    return-object v3

    .line 217
    :cond_2
    const-string v3, "sips"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v3

    goto :goto_0

    .line 219
    :cond_3
    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 225
    :cond_4
    new-instance v3, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v3, p1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
