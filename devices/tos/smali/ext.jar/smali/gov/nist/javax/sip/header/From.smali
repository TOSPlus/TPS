.class public final Lgov/nist/javax/sip/header/From;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "From.java"

# interfaces
.implements Ljavax/sip/header/FromHeader;


# static fields
.field private static final serialVersionUID:J = -0x579b4ff92e364db4L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "From"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/header/To;)V
    .locals 1
    .param p1, "to"    # Lgov/nist/javax/sip/header/To;

    .prologue
    .line 66
    const-string v0, "From"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p1, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 68
    iget-object v0, p1, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    iput-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    .line 69
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/From;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x2

    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 82
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 86
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 92
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 161
    instance-of v0, p1, Ljavax/sip/header/FromHeader;

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

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/From;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getUserAtHostPort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    .line 127
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/From;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeTag()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 134
    return-void
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 141
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    .end local p1    # "address":Ljavax/sip/address/Address;
    iput-object p1, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 142
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p1}, Lgov/nist/javax/sip/parser/Parser;->checkToken(Ljava/lang/String;)V

    .line 151
    const-string v0, "tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/From;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method
