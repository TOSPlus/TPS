.class public Lgov/nist/javax/sip/header/Challenge;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Challenge.java"


# static fields
.field private static ALGORITHM:Ljava/lang/String; = null

.field private static DOMAIN:Ljava/lang/String; = null

.field private static OPAQUE:Ljava/lang/String; = null

.field private static QOP:Ljava/lang/String; = null

.field private static REALM:Ljava/lang/String; = null

.field private static RESPONSE:Ljava/lang/String; = null

.field private static SIGNATURE:Ljava/lang/String; = null

.field private static SIGNED_BY:Ljava/lang/String; = null

.field private static STALE:Ljava/lang/String; = null

.field private static URI:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x151e737cde1170L


# instance fields
.field protected authParams:Lgov/nist/core/NameValueList;

.field protected scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "domain"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->DOMAIN:Ljava/lang/String;

    .line 49
    const-string v0, "realm"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->REALM:Ljava/lang/String;

    .line 50
    const-string v0, "opaque"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->OPAQUE:Ljava/lang/String;

    .line 51
    const-string v0, "algorithm"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->ALGORITHM:Ljava/lang/String;

    .line 52
    const-string v0, "qop"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->QOP:Ljava/lang/String;

    .line 53
    const-string v0, "stale"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->STALE:Ljava/lang/String;

    .line 54
    const-string v0, "signature"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->SIGNATURE:Ljava/lang/String;

    .line 55
    const-string v0, "response"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->RESPONSE:Ljava/lang/String;

    .line 56
    const-string v0, "signed-by"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->SIGNED_BY:Ljava/lang/String;

    .line 57
    const-string v0, "uri"

    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 73
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Challenge;

    .line 253
    .local v0, "retval":Lgov/nist/javax/sip/header/Challenge;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    .line 255
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->ALGORITHM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAuthParams()Lgov/nist/core/NameValueList;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->OPAQUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQOP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->QOP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->REALM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->RESPONSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSignedBy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->SIGNED_BY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->STALE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParameters()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeParameters()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    .line 225
    return-void
.end method

.method public setAuthParams(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "a"    # Lgov/nist/core/NameValueList;

    .prologue
    .line 248
    iput-object p1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    .line 249
    return-void
.end method

.method public setParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    .prologue
    .line 232
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 233
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    .line 241
    return-void
.end method
