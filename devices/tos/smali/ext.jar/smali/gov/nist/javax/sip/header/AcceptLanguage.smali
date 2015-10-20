.class public final Lgov/nist/javax/sip/header/AcceptLanguage;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AcceptLanguage.java"

# interfaces
.implements Ljavax/sip/header/AcceptLanguageHeader;


# static fields
.field private static final serialVersionUID:J = -0x3e16c6fcfe290177L


# instance fields
.field protected languageRange:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "Accept-Language"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAcceptLanguage()Ljava/util/Locale;
    .locals 5

    .prologue
    .line 167
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    .line 170
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 171
    .local v0, "dash":I
    if-ltz v0, :cond_1

    .line 172
    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLanguageRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    return-object v0
.end method

.method public getQValue()F
    .locals 2

    .prologue
    .line 98
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/high16 v0, -0x40800000    # -1.0f

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "q"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public hasQValue()Z
    .locals 1

    .prologue
    .line 109
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeQValue()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->removeParameter(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setAcceptLanguage(Ljava/util/Locale;)V
    .locals 2
    .param p1, "language"    # Ljava/util/Locale;

    .prologue
    .line 190
    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLanguageRange(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageRange"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setQValue(F)V
    .locals 4
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "qvalue out of range!"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 153
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->removeParameter(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_2
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "q"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->setParameter(Lgov/nist/core/NameValue;)V

    goto :goto_0
.end method
