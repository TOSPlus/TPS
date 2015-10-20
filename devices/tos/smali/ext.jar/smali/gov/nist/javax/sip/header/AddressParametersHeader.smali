.class public abstract Lgov/nist/javax/sip/header/AddressParametersHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AddressParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;


# instance fields
.field protected address:Lgov/nist/javax/sip/address/AddressImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AddressParametersHeader;

    .line 86
    .local v0, "retval":Lgov/nist/javax/sip/header/AddressParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v1, v0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 88
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    instance-of v3, p1, Ljavax/sip/header/HeaderAddress;

    if-eqz v3, :cond_3

    instance-of v3, p1, Ljavax/sip/header/Parameters;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 100
    check-cast v0, Ljavax/sip/header/HeaderAddress;

    .line 101
    .local v0, "o":Ljavax/sip/header/HeaderAddress;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-interface {v0}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Ljavax/sip/header/Parameters;

    .end local v0    # "o":Ljavax/sip/header/HeaderAddress;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 103
    goto :goto_0
.end method

.method public getAddress()Ljavax/sip/address/Address;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-object v0
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 60
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    .end local p1    # "address":Ljavax/sip/address/Address;
    iput-object p1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 61
    return-void
.end method
