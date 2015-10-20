.class public Lgov/nist/javax/sip/header/SIPIfMatch;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPIfMatch.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Ljavax/sip/header/SIPIfMatchHeader;


# static fields
.field private static final serialVersionUID:J = 0x3534333335383632L


# instance fields
.field protected entityTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "SIP-If-Match"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPIfMatch;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPIfMatch;->setETag(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPIfMatch;->entityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPIfMatch;->entityTag:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 2
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,SIP-If-Match, setETag(), the etag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPIfMatch;->entityTag:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPIfMatch;->setETag(Ljava/lang/String;)V

    .line 98
    return-void
.end method
