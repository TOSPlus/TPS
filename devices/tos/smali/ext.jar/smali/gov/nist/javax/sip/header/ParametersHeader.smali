.class public abstract Lgov/nist/javax/sip/header/ParametersHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ParametersHeader.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/sip/header/Parameters;


# instance fields
.field protected duplicates:Lgov/nist/core/DuplicateNameValueList;

.field protected parameters:Lgov/nist/core/NameValueList;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 59
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 60
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hdrName"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 66
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "hdrName"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0, p2}, Lgov/nist/core/NameValueList;-><init>(Z)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 72
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 73
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 464
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ParametersHeader;

    .line 465
    .local v0, "retval":Lgov/nist/javax/sip/header/ParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 467
    :cond_0
    return-object v0
.end method

.method protected abstract encodeBody()Ljava/lang/String;
.end method

.method protected final equalParameters(Ljavax/sip/header/Parameters;)Z
    .locals 8
    .param p1, "other"    # Ljavax/sip/header/Parameters;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 577
    if-ne p0, p1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v4

    .line 579
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 580
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 582
    .local v3, "pname":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "p1":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "p2":Ljava/lang/String;
    if-nez v1, :cond_3

    move v7, v4

    :goto_1
    if-nez v2, :cond_4

    move v6, v4

    :goto_2
    xor-int/2addr v6, v7

    if-eqz v6, :cond_5

    move v4, v5

    goto :goto_0

    :cond_3
    move v7, v5

    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_2

    .line 588
    :cond_5
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    goto :goto_0

    .line 592
    .end local v1    # "p1":Ljava/lang/String;
    .end local v2    # "p2":Ljava/lang/String;
    .end local v3    # "pname":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Ljavax/sip/header/Parameters;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 595
    .restart local v3    # "pname":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1    # "p1":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2    # "p2":Ljava/lang/String;
    if-nez v1, :cond_8

    move v7, v4

    :goto_3
    if-nez v2, :cond_9

    move v6, v4

    :goto_4
    xor-int/2addr v6, v7

    if-eqz v6, :cond_a

    move v4, v5

    goto :goto_0

    :cond_8
    move v7, v5

    goto :goto_3

    :cond_9
    move v6, v5

    goto :goto_4

    .line 606
    :cond_a
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v5

    goto :goto_0
.end method

.method public getMultiParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0}, Lgov/nist/core/DuplicateNameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMultiParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMultiParameters()Lgov/nist/core/DuplicateNameValueList;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    return-object v0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParameterAsBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 442
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 450
    .end local v0    # "val":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 445
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 446
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 447
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 448
    check-cast v0, Ljava/lang/String;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method protected getParameterAsFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 375
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 377
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 387
    :goto_0
    return v1

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    move v1, v2

    .line 384
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    move v1, v2

    .line 387
    goto :goto_0
.end method

.method protected getParameterAsHexInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 350
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 352
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 364
    :goto_0
    return v1

    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    move v1, v2

    .line 361
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    move v1, v2

    .line 364
    goto :goto_0
.end method

.method protected getParameterAsInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 328
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 330
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 340
    :goto_0
    return v1

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    move v1, v2

    .line 337
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    move v1, v2

    .line 340
    goto :goto_0
.end method

.method protected getParameterAsLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 398
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 400
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 410
    :goto_0
    return-wide v1

    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    move-wide v1, v2

    .line 407
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    move-wide v1, v2

    .line 410
    goto :goto_0
.end method

.method protected getParameterAsURI(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 423
    .local v1, "val":Ljava/lang/Object;
    instance-of v2, v1, Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v2, :cond_0

    .line 424
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    .line 430
    .end local v1    # "val":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 427
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/address/GenericURI;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "val":Ljava/lang/Object;
    invoke-direct {v2, v1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 430
    .local v0, "ex":Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public hasMultiParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 563
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMultiParameters()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasParameters()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMultiParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->delete(Ljava/lang/String;)Z

    .line 553
    return-void
.end method

.method public removeMultiParameters()V
    .locals 1

    .prologue
    .line 570
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 571
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 128
    return-void
.end method

.method public removeParameters()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 293
    return-void
.end method

.method public setMultiParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .prologue
    .line 494
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 495
    return-void
.end method

.method public setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 483
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0}, Lgov/nist/core/NameValue;-><init>()V

    .line 484
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 487
    return-void
.end method

.method public setParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .prologue
    .line 308
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 309
    return-void
.end method

.method protected setParameter(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 245
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 246
    .local v1, "val":Ljava/lang/Float;
    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 247
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, v1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0
.end method

.method protected setParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method protected setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 274
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 150
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0
.end method

.method protected setParameter(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 226
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    .local v0, "val":Ljava/lang/Boolean;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public setParameters(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "parameters"    # Lgov/nist/core/NameValueList;

    .prologue
    .line 317
    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 318
    return-void
.end method

.method public setQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 179
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 185
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0
.end method
