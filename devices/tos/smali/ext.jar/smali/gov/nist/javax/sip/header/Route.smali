.class public Lgov/nist/javax/sip/header/Route;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "Route.java"

# interfaces
.implements Ljavax/sip/header/RouteHeader;


# static fields
.field private static final serialVersionUID:J = 0x4ee01f7faef81a4eL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Route"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    .prologue
    .line 66
    const-string v0, "Route"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 68
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Route;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v0, 0x1

    .line 91
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 92
    .local v0, "addrFlag":Z
    :goto_0
    if-nez v0, :cond_2

    .line 93
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 95
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 103
    :cond_0
    return-object p1

    .line 91
    .end local v0    # "addrFlag":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    .restart local v0    # "addrFlag":Z
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 107
    instance-of v0, p1, Ljavax/sip/header/RouteHeader;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
