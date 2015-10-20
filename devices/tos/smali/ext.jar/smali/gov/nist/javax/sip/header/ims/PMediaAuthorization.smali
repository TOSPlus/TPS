.class public Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PMediaAuthorization.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089bdL


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "P-Media-Authorization"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    .line 139
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    .line 141
    :cond_0
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 127
    instance-of v1, p1, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    .line 130
    .local v0, "o":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 132
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaAuthorizationToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, " the Media-Authorization-Token parameter is null or empty"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
