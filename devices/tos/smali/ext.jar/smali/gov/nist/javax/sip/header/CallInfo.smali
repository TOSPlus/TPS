.class public final Lgov/nist/javax/sip/header/CallInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "CallInfo.java"

# interfaces
.implements Ljavax/sip/header/CallInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x718285585586c120L


# instance fields
.field protected info:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Call-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallInfo;

    .line 119
    .local v0, "retval":Lgov/nist/javax/sip/header/CallInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    .line 121
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallInfo;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 68
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 70
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 77
    :cond_0
    return-object p1
.end method

.method public getInfo()Ljavax/sip/address/URI;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public getPurpose()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "purpose"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setInfo(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "info"    # Ljavax/sip/address/URI;

    .prologue
    .line 114
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1    # "info":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    .line 115
    return-void
.end method

.method public setPurpose(Ljava/lang/String;)V
    .locals 2
    .param p1, "purpose"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    :try_start_0
    const-string v0, "purpose"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/CallInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method
