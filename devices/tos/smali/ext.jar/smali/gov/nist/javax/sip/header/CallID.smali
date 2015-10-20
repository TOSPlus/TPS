.class public Lgov/nist/javax/sip/header/CallID;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "CallID.java"

# interfaces
.implements Ljavax/sip/header/CallIdHeader;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089d4L


# instance fields
.field protected callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "Call-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "Call-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 139
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 143
    .local v0, "retval":Lgov/nist/javax/sip/header/CallID;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallIdentifier;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CallIdentifier;

    iput-object v1, v0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 145
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallID;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 89
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 67
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    .line 69
    :cond_0
    instance-of v1, p1, Ljavax/sip/header/CallIdHeader;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 70
    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 71
    .local v0, "o":Ljavax/sip/header/CallIdHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 73
    .end local v0    # "o":Ljavax/sip/header/CallIdHeader;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallID;->encodeBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallIdentifer()Lgov/nist/javax/sip/header/CallIdentifier;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-object v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setCallIdentifier(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .locals 0
    .param p1, "cid"    # Lgov/nist/javax/sip/header/CallIdentifier;

    .prologue
    .line 129
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 130
    return-void
.end method
