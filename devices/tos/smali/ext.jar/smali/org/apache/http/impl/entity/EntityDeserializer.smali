.class public Lorg/apache/http/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# instance fields
.field private final lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/ContentLengthStrategy;)V
    .locals 2
    .param p1, "lenStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 70
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;
    .locals 2
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-nez p2, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/entity/EntityDeserializer;->doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;

    move-result-object v0

    return-object v0
.end method

.method protected doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;
    .locals 10
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    .line 75
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 77
    .local v2, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    iget-object v5, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v5, p2}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v3

    .line 78
    .local v3, "len":J
    const-wide/16 v5, -0x2

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    .line 79
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 80
    invoke-virtual {v2, v7, v8}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 81
    new-instance v5, Lorg/apache/http/impl/io/ChunkedInputStream;

    invoke-direct {v5, p1}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 92
    :goto_0
    const-string v5, "Content-Type"

    invoke-interface {p2, v5}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 93
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 96
    :cond_0
    const-string v5, "Content-Encoding"

    invoke-interface {p2, v5}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 97
    .local v0, "contentEncodingHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 100
    :cond_1
    return-object v2

    .line 82
    .end local v0    # "contentEncodingHeader":Lorg/apache/http/Header;
    .end local v1    # "contentTypeHeader":Lorg/apache/http/Header;
    :cond_2
    cmp-long v5, v3, v7

    if-nez v5, :cond_3

    .line 83
    invoke-virtual {v2, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 84
    invoke-virtual {v2, v7, v8}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 85
    new-instance v5, Lorg/apache/http/impl/io/IdentityInputStream;

    invoke-direct {v5, p1}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v2, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 88
    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 89
    new-instance v5, Lorg/apache/http/impl/io/ContentLengthInputStream;

    invoke-direct {v5, p1, v3, v4}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0
.end method
