.class public Lgov/nist/javax/sip/header/ContentType;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ContentType.java"

# interfaces
.implements Ljavax/sip/header/ContentTypeHeader;


# static fields
.field private static final serialVersionUID:J = 0x759fac0f0cc76fd2L


# instance fields
.field protected mediaRange:Lgov/nist/javax/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "Content-Type"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubtype"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    .line 88
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    .line 207
    .local v0, "retval":Lgov/nist/javax/sip/header/ContentType;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MediaRange;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/MediaRange;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 209
    :cond_0
    return-object v0
.end method

.method public compareMediaRange(Ljava/lang/String;)I
    .locals 2
    .param p1, "media"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v1, v1, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v1, v1, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->hasParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 115
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 213
    instance-of v2, p1, Ljavax/sip/header/ContentTypeHeader;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Ljavax/sip/header/ContentTypeHeader;

    .line 215
    .local v0, "o":Ljavax/sip/header/ContentTypeHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 219
    .end local v0    # "o":Ljavax/sip/header/ContentTypeHeader;
    :cond_0
    return v1
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaRange()Lgov/nist/javax/sip/header/MediaRange;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    return-object v0
.end method

.method public getMediaSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContentSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 202
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 190
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setContentType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 176
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setMediaRange(Lgov/nist/javax/sip/header/MediaRange;)V
    .locals 0
    .param p1, "m"    # Lgov/nist/javax/sip/header/MediaRange;

    .prologue
    .line 165
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 166
    return-void
.end method
