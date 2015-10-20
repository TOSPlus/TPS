.class public final Lgov/nist/javax/sip/stack/HopImpl;
.super Ljava/lang/Object;
.source "HopImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/sip/address/Hop;


# instance fields
.field protected defaultRoute:Z

.field protected host:Ljava/lang/String;

.field protected port:I

.field protected transport:Ljava/lang/String;

.field protected uriRoute:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "hop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x13c4

    const/4 v8, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null arg!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    :cond_0
    const/16 v6, 0x5d

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    .local v0, "brack":I
    const/16 v6, 0x3a

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 101
    .local v1, "colon":I
    const/16 v6, 0x2f

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 103
    .local v4, "slash":I
    if-lez v1, :cond_3

    .line 104
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 106
    if-lez v4, :cond_2

    .line 107
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "portstr":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 114
    :goto_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v3    # "portstr":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 132
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "no host!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "portstr":Ljava/lang/String;
    const-string v5, "UDP"

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad port spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "portstr":Ljava/lang/String;
    :cond_3
    if-lez v4, :cond_5

    .line 120
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 121
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 122
    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v7, "TLS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v5, 0x13c5

    :cond_4
    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    goto :goto_1

    .line 124
    :cond_5
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 125
    const-string v6, "UDP"

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 126
    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    goto :goto_1

    .line 135
    :cond_6
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 136
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 138
    if-lez v0, :cond_7

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_7

    .line 139
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad IPv6 reference spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_7
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "UDP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "TLS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "TCP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    .line 145
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad transport string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "trans"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 83
    :cond_0
    iput p2, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    .line 84
    iput-object p3, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public isURIRoute()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    return v0
.end method

.method public setURIRouteFlag()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
