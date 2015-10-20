.class public final Lgov/nist/javax/sip/header/CallIdentifier;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "CallIdentifier.java"


# static fields
.field private static final serialVersionUID:J = 0x65834be26eebb7f1L


# instance fields
.field protected host:Ljava/lang/String;

.field protected localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->setCallID(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Lgov/nist/javax/sip/header/CallIdentifier;

    .line 111
    .local v0, "that":Lgov/nist/javax/sip/header/CallIdentifier;
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    iget-object v4, v0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 114
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v4, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 119
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v4, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 122
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hash code called before id is set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "NULL!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 164
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 165
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 174
    :cond_1
    return-void

    .line 168
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 169
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 171
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CallID  must be token@token or token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 153
    return-void
.end method
