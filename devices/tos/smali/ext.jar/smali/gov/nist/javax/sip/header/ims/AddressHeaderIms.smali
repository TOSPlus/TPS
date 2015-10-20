.class public abstract Lgov/nist/javax/sip/header/ims/AddressHeaderIms;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "AddressHeaderIms.java"


# instance fields
.field protected address:Lgov/nist/javax/sip/address/AddressImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;

    .line 77
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/AddressHeaderIms;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 79
    :cond_0
    return-object v0
.end method

.method public abstract encodeBody()Ljava/lang/String;
.end method

.method public getAddress()Ljavax/sip/address/Address;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-object v0
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 60
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    .end local p1    # "address":Ljavax/sip/address/Address;
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 61
    return-void
.end method
