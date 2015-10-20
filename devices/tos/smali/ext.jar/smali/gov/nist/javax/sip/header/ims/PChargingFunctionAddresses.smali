.class public Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingFunctionAddresses.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "P-Charging-Function-Addresses"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public addChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "ccf"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public addEventChargingFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "ecf"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v3, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v3}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 282
    .local v0, "li":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 283
    .local v2, "removed":Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValue;

    .line 285
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 287
    const/4 v2, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "nv":Lgov/nist/core/NameValue;
    :cond_1
    return v2
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChargingCollectionFunctionAddresses()Ljava/util/ListIterator;
    .locals 6

    .prologue
    .line 166
    iget-object v4, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v4}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 167
    .local v2, "li":Ljava/util/Iterator;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 169
    .local v0, "ccfLIST":Ljava/util/LinkedList;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/NameValue;

    .line 171
    .local v3, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ccf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1}, Lgov/nist/core/NameValue;-><init>()V

    .line 175
    .local v1, "ccfNV":Lgov/nist/core/NameValue;
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v1    # "ccfNV":Lgov/nist/core/NameValue;
    .end local v3    # "nv":Lgov/nist/core/NameValue;
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    return-object v4
.end method

.method public getEventChargingFunctionAddresses()Ljava/util/ListIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v3, "listw":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lgov/nist/core/NameValue;>;"
    iget-object v6, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 252
    .local v2, "li":Ljava/util/Iterator;
    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 254
    .local v0, "ecfLIST":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/core/NameValue;>;"
    const/4 v5, 0x0

    .line 255
    .local v5, "removed":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/core/NameValue;

    .line 257
    .local v4, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ecf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1}, Lgov/nist/core/NameValue;-><init>()V

    .line 261
    .local v1, "ecfNV":Lgov/nist/core/NameValue;
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 264
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    .end local v1    # "ecfNV":Lgov/nist/core/NameValue;
    .end local v4    # "nv":Lgov/nist/core/NameValue;
    :cond_1
    return-object v0
.end method

.method public removeChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "ccfAddress"    # Ljava/lang/String;
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

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    const-string v0, "ccf"

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "CCF Address Not Removed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 157
    :cond_1
    return-void
.end method

.method public removeEventChargingFunctionAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    const-string v0, "ecf"

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "ECF Address Not Removed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 240
    :cond_1
    return-void
.end method

.method public setChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    const-string v0, "ccf"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setEventChargingFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    const-string v0, "ecf"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
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
    .line 296
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
