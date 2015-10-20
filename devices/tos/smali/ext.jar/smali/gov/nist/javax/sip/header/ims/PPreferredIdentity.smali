.class public Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "PPreferredIdentity.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "P-Preferred-Identity"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    .prologue
    .line 60
    const-string v0, "P-Preferred-Identity"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 62
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 77
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 81
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 89
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
