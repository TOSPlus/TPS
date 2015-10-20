.class public Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PVisitedNetworkID.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private isQuoted:Z

.field private networkID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "P-Visited-Network-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lgov/nist/core/Token;)V
    .locals 1
    .param p1, "tok"    # Lgov/nist/core/Token;

    .prologue
    .line 76
    const-string v0, "P-Visited-Network-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkID"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "P-Visited-Network-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    .line 157
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 159
    :cond_0
    iget-boolean v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    iput-boolean v1, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 160
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-boolean v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    if-eqz v1, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_0
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 145
    instance-of v2, p1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 147
    check-cast v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    .line 148
    .local v0, "o":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 151
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    :cond_0
    return v1
.end method

.method public getVisitedNetworkID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    return-object v0
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
    .line 138
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setVisitedNetworkID(Lgov/nist/core/Token;)V
    .locals 2
    .param p1, "networkID"    # Lgov/nist/core/Token;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the networkID parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 127
    return-void
.end method

.method public setVisitedNetworkID(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkID"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the networkID parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 113
    return-void
.end method
