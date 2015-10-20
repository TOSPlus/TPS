.class public Lgov/nist/javax/sip/header/Protocol;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Protocol.java"


# static fields
.field private static final serialVersionUID:J = 0x1ec381b4ff51f3c0L


# instance fields
.field protected protocolName:Ljava/lang/String;

.field protected protocolVersion:Ljava/lang/String;

.field protected transport:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 147
    const-string v0, "SIP"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    .line 148
    const-string v0, "2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 149
    const-string v0, "UDP"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 71
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    return-object p1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 4
    .param p1, "name_and_version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 105
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 106
    .local v0, "slash":I
    if-lez v0, :cond_0

    .line 107
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    .line 108
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 110
    return-void

    .line 109
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Missing \'/\' in protocol"

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setProtocolName(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 141
    return-void
.end method
