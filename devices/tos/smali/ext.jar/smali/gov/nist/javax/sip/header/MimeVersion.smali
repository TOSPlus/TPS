.class public Lgov/nist/javax/sip/header/MimeVersion;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MimeVersion.java"

# interfaces
.implements Ljavax/sip/header/MimeVersionHeader;


# static fields
.field private static final serialVersionUID:J = -0x6e59b8a2cb581754L


# instance fields
.field protected majorVersion:I

.field protected minorVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "MIME-Version"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    return v0
.end method

.method public setMajorVersion(I)V
    .locals 2
    .param p1, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 112
    if-gez p1, :cond_0

    .line 113
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, MimeVersion, setMajorVersion(), the majorVersion parameter is null"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    .line 117
    return-void
.end method

.method public setMinorVersion(I)V
    .locals 2
    .param p1, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 96
    if-gez p1, :cond_0

    .line 97
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, MimeVersion, setMinorVersion(), the minorVersion parameter is null"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    .line 101
    return-void
.end method
