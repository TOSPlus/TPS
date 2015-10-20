.class public final Lgov/nist/javax/sip/header/AlertInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AlertInfo.java"

# interfaces
.implements Ljavax/sip/header/AlertInfoHeader;


# static fields
.field private static final serialVersionUID:J = 0x39ba1254fc6b29efL


# instance fields
.field protected string:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "Alert-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AlertInfo;

    .line 121
    .local v0, "retval":Lgov/nist/javax/sip/header/AlertInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_2

    .line 73
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :cond_0
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 74
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getAlertInfo()Ljavax/sip/address/URI;
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "alertInfoUri":Ljavax/sip/address/URI;
    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v2, :cond_0

    .line 107
    iget-object v0, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 116
    :goto_0
    return-object v0

    .line 110
    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/address/GenericURI;

    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "alertInfoUri":Ljavax/sip/address/URI;
    .local v1, "alertInfoUri":Ljavax/sip/address/URI;
    move-object v0, v1

    .line 113
    .end local v1    # "alertInfoUri":Ljavax/sip/address/URI;
    .restart local v0    # "alertInfoUri":Ljavax/sip/address/URI;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAlertInfo(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .prologue
    .line 88
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1    # "uri":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 89
    return-void
.end method
