.class public Lgov/nist/javax/sip/header/RecordRoute;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "RecordRoute.java"

# interfaces
.implements Ljavax/sip/header/RecordRouteHeader;


# static fields
.field private static final serialVersionUID:J = 0x2123f698f16297e5L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "Record-Route"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    .prologue
    .line 58
    const-string v0, "Record-Route"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 60
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RecordRoute;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 79
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 83
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 90
    :cond_2
    return-object p1
.end method
