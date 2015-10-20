.class public Lgov/nist/javax/sip/header/ims/PChargingVector;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingVector.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "P-Charging-Vector"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "encoding":Ljava/lang/StringBuffer;
    const-string v2, "icid-value"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    .line 72
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    const-string v3, "icid-generated-at"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "icid-generated-at"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getICIDGeneratedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    const-string v3, "term-ioi"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "term-ioi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getTerminatingIOI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    const-string v3, "orig-ioi"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "orig-ioi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getOriginatingIOI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getICID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "icid-value"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getICIDGeneratedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "icid-generated-at"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginatingIOI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "orig-ioi"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTerminatingIOI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "term-ioi"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setICID(Ljava/lang/String;)V
    .locals 2
    .param p1, "icid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Vector, setICID(), the icid parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-string v0, "icid-value"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setICIDGeneratedAt(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Vector, setICIDGeneratedAt(), the host parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    const-string v0, "icid-generated-at"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setOriginatingIOI(Ljava/lang/String;)V
    .locals 1
    .param p1, "origIOI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    const-string v0, "orig-ioi"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->removeParameter(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, "orig-ioi"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTerminatingIOI(Ljava/lang/String;)V
    .locals 1
    .param p1, "termIOI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    const-string v0, "term-ioi"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->removeParameter(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v0, "term-ioi"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 222
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
