.class public abstract Lgov/nist/javax/sip/header/SIPHeader;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "SIPHeader.java"

# interfaces
.implements Lgov/nist/javax/sip/header/HeaderExt;
.implements Lgov/nist/javax/sip/header/SIPHeaderNames;
.implements Ljavax/sip/header/Header;


# instance fields
.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 54
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 124
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    return-object p1
.end method

.method protected abstract encodeBody()Ljava/lang/String;
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 137
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "encodedHdr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 100
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 95
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 104
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 102
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHeaderList()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hdrname"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
