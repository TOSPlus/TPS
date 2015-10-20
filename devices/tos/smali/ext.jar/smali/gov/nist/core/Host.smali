.class public Lgov/nist/core/Host;
.super Lgov/nist/core/GenericObject;
.source "Host.java"


# static fields
.field protected static final HOSTNAME:I = 0x1

.field protected static final IPV4ADDRESS:I = 0x2

.field protected static final IPV6ADDRESS:I = 0x3

.field private static final serialVersionUID:J = -0x6462c89aa1f7b990L


# instance fields
.field protected addressType:I

.field protected hostname:Ljava/lang/String;

.field private inetAddress:Ljava/net/InetAddress;

.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/core/Host;->addressType:I

    .line 88
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null host name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 101
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addrType"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 109
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 112
    invoke-direct {p0, p1, p2}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIPv6Reference(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setHost(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x3

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 212
    invoke-direct {p0, p1}, Lgov/nist/core/Host;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iput v3, p0, Lgov/nist/core/Host;->addressType:I

    .line 218
    :goto_0
    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 222
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 223
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 227
    :cond_0
    const/4 v0, -0x1

    .line 228
    .local v0, "zoneStart":I
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 235
    .end local v0    # "zoneStart":I
    :cond_1
    return-void

    .line 215
    :cond_2
    iput p2, p0, Lgov/nist/core/Host;->addressType:I

    goto :goto_0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 124
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Lgov/nist/core/Host;->isIPv6Reference(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    :goto_0
    return-object p1

    .line 127
    :cond_0
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 140
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 144
    check-cast v0, Lgov/nist/core/Host;

    .line 145
    .local v0, "otherHost":Lgov/nist/core/Host;
    iget-object v1, v0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 273
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "rawIpAddress":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 183
    :goto_0
    return-object v2

    .line 172
    :cond_0
    iget v2, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 174
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 176
    :cond_1
    iget-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 183
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/core/Host;->dbgPrint(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :cond_2
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHostname()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 250
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIPAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 258
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lgov/nist/core/Host;->setHostAddress(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setHostAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 192
    return-void
.end method
