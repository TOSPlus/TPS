.class public Lorg/apache/http/impl/entity/EntitySerializer;
.super Ljava/lang/Object;
.source "EntitySerializer.java"


# instance fields
.field private final lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/ContentLengthStrategy;)V
    .locals 2
    .param p1, "lenStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/entity/EntitySerializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 68
    return-void
.end method


# virtual methods
.method protected doSerialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v2, p0, Lorg/apache/http/impl/entity/EntitySerializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v2, p2}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v0

    .line 74
    .local v0, "len":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Lorg/apache/http/impl/io/ChunkedOutputStream;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/io/ChunkedOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;)V

    .line 79
    :goto_0
    return-object v2

    .line 76
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 77
    new-instance v2, Lorg/apache/http/impl/io/IdentityOutputStream;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/io/IdentityOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Lorg/apache/http/impl/io/ContentLengthOutputStream;

    invoke-direct {v2, p1, v0, v1}, Lorg/apache/http/impl/io/ContentLengthOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;J)V

    goto :goto_0
.end method

.method public serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V
    .locals 3
    .param p1, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Session output buffer may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP message may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_1
    if-nez p3, :cond_2

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/entity/EntitySerializer;->doSerialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;

    move-result-object v0

    .line 97
    .local v0, "outstream":Ljava/io/OutputStream;
    invoke-interface {p3, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 99
    return-void
.end method
