.class public final Lgov/nist/javax/sip/header/To;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "To.java"

# interfaces
.implements Ljavax/sip/header/ToHeader;


# static fields
.field private static final serialVersionUID:J = -0x384ed45ac29ca44cL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "To"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/header/From;)V
    .locals 1
    .param p1, "from"    # Lgov/nist/javax/sip/header/From;

    .prologue
    .line 69
    const-string v0, "To"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    .line 71
    iget-object v0, p1, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 72
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/To;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/To;->encodeBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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

    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 96
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 100
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 108
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 189
    instance-of v0, p1, Ljavax/sip/header/ToHeader;

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
    .line 129
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getUserAtHostPort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeTag()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 165
    :cond_0
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
    .line 175
    invoke-static {p1}, Lgov/nist/javax/sip/parser/Parser;->checkToken(Ljava/lang/String;)V

    .line 176
    const-string v0, "tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/To;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method
