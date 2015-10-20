.class public Lgov/nist/javax/sip/header/RequestLine;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "RequestLine.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SipRequestLine;


# static fields
.field private static final serialVersionUID:J = -0x2d9bbb31060a5df9L


# instance fields
.field protected method:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 64
    const-string v0, "SIP/2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/GenericURI;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestURI"    # Lgov/nist/javax/sip/address/GenericURI;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 100
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 101
    iput-object p2, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 102
    const-string v0, "SIP/2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 209
    .local v0, "retval":Lgov/nist/javax/sip/header/RequestLine;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 211
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RequestLine;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 77
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 83
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    :goto_0
    return v1

    :cond_0
    move-object v2, p1

    .line 195
    check-cast v2, Lgov/nist/javax/sip/header/RequestLine;

    .line 197
    .local v2, "that":Lgov/nist/javax/sip/header/RequestLine;
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .local v1, "retval":Z
    :cond_1
    goto :goto_0

    .line 201
    .end local v1    # "retval":Z
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .restart local v1    # "retval":Z
    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getSipVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Lgov/nist/javax/sip/address/GenericURI;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public bridge synthetic getUri()Ljavax/sip/address/URI;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public getVersionMajor()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 145
    const/4 v1, 0x0

    .line 160
    :cond_0
    return-object v1

    .line 146
    :cond_1
    const/4 v1, 0x0

    .line 147
    .local v1, "major":Ljava/lang/String;
    const/4 v2, 0x0

    .line 148
    .local v2, "slash":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 149
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    .line 151
    if-eqz v2, :cond_2

    .line 152
    if-nez v1, :cond_4

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_2
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    .line 158
    const/4 v2, 0x1

    .line 148
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 5

    .prologue
    .line 167
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 168
    const/4 v2, 0x0

    .line 181
    :cond_0
    return-object v2

    .line 169
    :cond_1
    const/4 v2, 0x0

    .line 170
    .local v2, "minor":Ljava/lang/String;
    const/4 v0, 0x0

    .line 171
    .local v0, "dot":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 172
    if-eqz v0, :cond_2

    .line 173
    if-nez v2, :cond_4

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_2
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    .line 179
    const/4 v0, 0x1

    .line 171
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSipVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setUri(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .prologue
    .line 123
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1    # "uri":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 124
    return-void
.end method
