.class public Lgov/nist/javax/sip/header/InReplyTo;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "InReplyTo.java"

# interfaces
.implements Ljavax/sip/header/InReplyToHeader;


# static fields
.field private static final serialVersionUID:J = 0x1759ce6d8e492f1aL


# instance fields
.field protected callId:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "In-Reply-To"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .locals 1
    .param p1, "cid"    # Lgov/nist/javax/sip/header/CallIdentifier;

    .prologue
    .line 63
    const-string v0, "In-Reply-To"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 65
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/InReplyTo;

    .line 105
    .local v0, "retval":Lgov/nist/javax/sip/header/InReplyTo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallIdentifier;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CallIdentifier;

    iput-object v1, v0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 107
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
