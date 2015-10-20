.class public Lorg/apache/http/message/BasicHttpResponse;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lorg/apache/http/HttpResponse;


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private locale:Ljava/util/Locale;

.field private reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

.field private statusline:Lorg/apache/http/StatusLine;


# direct methods
.method public constructor <init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 2
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/StatusLine;)V
    .locals 1
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 2
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;
    .param p2, "catalog"    # Lorg/apache/http/ReasonPhraseCatalog;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 81
    iput-object p2, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    .line 82
    if-eqz p3, :cond_1

    .end local p3    # "locale":Ljava/util/Locale;
    :goto_0
    iput-object p3, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 83
    return-void

    .line 82
    .restart local p3    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected getReason(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Lorg/apache/http/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->entity:Lorg/apache/http/HttpEntity;

    .line 177
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Locale may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 185
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 186
    .local v0, "code":I
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    iget-object v2, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 188
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 164
    if-eqz p1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Line break in reason phrase."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 172
    return-void
.end method

.method public setStatusCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    .line 158
    .local v0, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 159
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;I)V
    .locals 2
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I

    .prologue
    .line 144
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 145
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 152
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .locals 2
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 139
    return-void
.end method
