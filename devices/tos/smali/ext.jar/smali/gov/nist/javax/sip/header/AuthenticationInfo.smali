.class public final Lgov/nist/javax/sip/header/AuthenticationInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AuthenticationInfo.java"

# interfaces
.implements Ljavax/sip/header/AuthenticationInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x3cac35432dc8d791L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "Authentication-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public add(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    .prologue
    .line 55
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 56
    return-void
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthInfo(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->encodeBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "cnonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "nextnonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonceCount()I
    .locals 1

    .prologue
    .line 117
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "rspauth"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCNonce(Ljava/lang/String;)V
    .locals 1
    .param p1, "cNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "cnonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setNextNonce(Ljava/lang/String;)V
    .locals 1
    .param p1, "nextNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 160
    const-string v0, "nextnonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setNonceCount(I)V
    .locals 5
    .param p1, "nonceCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 172
    if-gez p1, :cond_0

    .line 173
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "bad value"

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 174
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "nc":Ljava/lang/String;
    const-string v0, "00000000"

    .line 177
    .local v0, "base":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v2, "nc"

    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 211
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_5

    .line 212
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    const-string v1, "qop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nextnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "realm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "opaque"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "domain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nextnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "rspauth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    :cond_1
    if-nez p2, :cond_2

    .line 224
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_2
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Unexpected DOUBLE_QUOTE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 229
    :cond_3
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 231
    :cond_4
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_5
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 1
    .param p1, "qop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 190
    const-string v0, "qop"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "rspauth"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method
