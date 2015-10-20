.class public abstract Lgov/nist/javax/sip/header/ims/SecurityAgree;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SecurityAgree.java"


# instance fields
.field private secMechanism:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;

    .line 361
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    .line 363
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 348
    instance-of v2, p1, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 350
    check-cast v0, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    .line 351
    .local v0, "o":Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 354
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
    :cond_0
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string v0, "alg"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "ealg"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "mod"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortClient()I
    .locals 1

    .prologue
    .line 325
    const-string v0, "port-c"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPortServer()I
    .locals 1

    .prologue
    .line 333
    const-string v0, "port-s"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreference()F
    .locals 1

    .prologue
    .line 341
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const-string v0, "prot"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSPIClient()I
    .locals 1

    .prologue
    .line 309
    const-string v0, "spi-c"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSPIServer()I
    .locals 1

    .prologue
    .line 317
    const-string v0, "spi-s"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSecurityMechanism()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 2
    .param p1, "alg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setAlgorithm(), the algorithm parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    const-string v0, "alg"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public setEncryptionAlgorithm(Ljava/lang/String;)V
    .locals 2
    .param p1, "ealg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setEncryptionAlgorithm(), the encryption-algorithm parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    const-string v0, "ealg"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setMode(), the mode parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    const-string v0, "mod"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 97
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_2

    .line 99
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    const-string v1, "d-ver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 106
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Unexpected DOUBLE_QUOTE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 111
    :cond_1
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_2
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPortClient(I)V
    .locals 2
    .param p1, "portC"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 225
    if-gez p1, :cond_0

    .line 226
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setPortClient(), the port-c parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    const-string v0, "port-c"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public setPortServer(I)V
    .locals 2
    .param p1, "portS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 238
    if-gez p1, :cond_0

    .line 239
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setPortServer(), the port-s parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    const-string v0, "port-s"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method public setPreference(F)V
    .locals 2
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 255
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setPreference(), the preference (q) parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;F)V

    .line 259
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "prot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setProtocol(), the protocol parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    const-string v0, "prot"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setSPIClient(I)V
    .locals 2
    .param p1, "spic"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 199
    if-gez p1, :cond_0

    .line 200
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setSPIClient(), the spi-c parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    const-string v0, "spi-c"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method public setSPIServer(I)V
    .locals 2
    .param p1, "spis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 212
    if-gez p1, :cond_0

    .line 213
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setSPIServer(), the spi-s parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    const-string v0, "spi-s"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method public setSecurityMechanism(Ljava/lang/String;)V
    .locals 2
    .param p1, "secMech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityAgree, setSecurityMechanism(), the sec-mechanism parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    .line 138
    return-void
.end method
