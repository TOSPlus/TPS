.class public Lgov/nist/javax/sip/header/extensions/Join;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Join.java"

# interfaces
.implements Lgov/nist/javax/sip/header/extensions/JoinHeader;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field public static final NAME:Ljava/lang/String; = "Join"

.field private static final serialVersionUID:J = -0xba8b18cd4310e78L


# instance fields
.field public callId:Ljava/lang/String;

.field public callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "Join"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 44
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
    .line 51
    const-string v0, "Join"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 53
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    .line 64
    .local v0, "retVal":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/Join;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/extensions/Join;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallIdentifer()Lgov/nist/javax/sip/header/CallIdentifier;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-object v0
.end method

.method public getFromTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "from-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "to-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasFromTag()Z
    .locals 1

    .prologue
    .line 163
    const-string v0, "from-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasToTag()Z
    .locals 1

    .prologue
    .line 131
    const-string v0, "to-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromTag()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "from-tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 170
    return-void
.end method

.method public removeToTag()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "to-tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 138
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setCallIdentifier(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .locals 0
    .param p1, "cid"    # Lgov/nist/javax/sip/header/CallIdentifier;

    .prologue
    .line 104
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Join;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 105
    return-void
.end method

.method public setFromTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null tag "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 157
    :cond_1
    const-string v0, "from-tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setToTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null tag "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 125
    :cond_1
    const-string v0, "to-tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
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
    .line 176
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
