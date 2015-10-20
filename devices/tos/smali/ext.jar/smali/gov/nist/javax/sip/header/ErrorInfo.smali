.class public final Lgov/nist/javax/sip/header/ErrorInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ErrorInfo.java"

# interfaces
.implements Ljavax/sip/header/ErrorInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x58179228634e738aL


# instance fields
.field protected errorInfo:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "Error-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/GenericURI;)V
    .locals 0
    .param p1, "errorInfo"    # Lgov/nist/javax/sip/address/GenericURI;

    .prologue
    .line 69
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    .line 70
    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 71
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfo;

    .line 135
    .local v0, "retval":Lgov/nist/javax/sip/header/ErrorInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 137
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ErrorInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getErrorInfo()Ljavax/sip/address/URI;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ErrorInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setErrorInfo(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "errorInfo"    # Ljavax/sip/address/URI;

    .prologue
    .line 94
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1    # "errorInfo":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 96
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception , ErrorInfoHeader, setErrorMessage(), the message parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const-string v0, "message"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ErrorInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
