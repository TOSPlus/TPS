.class public Lorg/apache/http/entity/InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private consumed:Z

.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 61
    iput-wide p2, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    .line 62
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    .line 113
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Output stream may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 81
    .local v1, "instream":Ljava/io/InputStream;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 83
    .local v0, "buffer":[B
    iget-wide v5, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_1

    .line 85
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    if-eq v2, v8, :cond_2

    .line 86
    invoke-virtual {p1, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 90
    .end local v2    # "l":I
    :cond_1
    iget-wide v3, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    .line 91
    .local v3, "remaining":J
    :goto_1
    cmp-long v5, v3, v9

    if-lez v5, :cond_2

    .line 92
    const-wide/16 v5, 0x800

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v0, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 93
    .restart local v2    # "l":I
    if-ne v2, v8, :cond_3

    .line 100
    .end local v2    # "l":I
    .end local v3    # "remaining":J
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    .line 101
    return-void

    .line 96
    .restart local v2    # "l":I
    .restart local v3    # "remaining":J
    :cond_3
    invoke-virtual {p1, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 97
    int-to-long v5, v2

    sub-long/2addr v3, v5

    goto :goto_1
.end method
