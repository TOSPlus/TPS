.class public final Lgov/nist/javax/sip/header/ContentDisposition;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ContentDisposition.java"

# interfaces
.implements Ljavax/sip/header/ContentDispositionHeader;


# static fields
.field private static final serialVersionUID:J = 0xb98a29610197d1bL


# instance fields
.field protected dispositionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "Content-Disposition"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentDisposition;->dispositionType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentDisposition;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ContentDisposition;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentDisposition;->encodeBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentDisposition;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getHandling()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "handling"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDispositionType(Ljava/lang/String;)V
    .locals 2
    .param p1, "dispositionType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, ContentDisposition, setDispositionType(), the dispositionType parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentDisposition;->dispositionType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setHandling(Ljava/lang/String;)V
    .locals 2
    .param p1, "handling"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, ContentDisposition, setHandling(), the handling parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const-string v0, "handling"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ContentDisposition;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
