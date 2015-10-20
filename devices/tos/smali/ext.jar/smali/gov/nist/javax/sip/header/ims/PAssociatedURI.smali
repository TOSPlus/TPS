.class public Lgov/nist/javax/sip/header/ims/PAssociatedURI;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "PAssociatedURI.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "P-Associated-URI"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    .prologue
    .line 85
    const-string v0, "P-Associated-URI"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 87
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/GenericURI;)V
    .locals 1
    .param p1, "associatedURI"    # Lgov/nist/javax/sip/address/GenericURI;

    .prologue
    .line 95
    const-string v0, "P-Associated-URI"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 98
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    .line 149
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 151
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 111
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 115
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAssociatedURI()Ljavax/sip/address/URI;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getURI()Ljavax/sip/address/URI;

    move-result-object v0

    return-object v0
.end method

.method public setAssociatedURI(Ljavax/sip/address/URI;)V
    .locals 2
    .param p1, "associatedURI"    # Ljavax/sip/address/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 136
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
    .line 157
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
