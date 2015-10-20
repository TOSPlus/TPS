.class public Lorg/apache/http/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# instance fields
.field private cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/ChunkedOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;I)V
    .locals 1
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 57
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 59
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    .line 74
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    .line 75
    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    .line 76
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    .line 187
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->finish()V

    .line 188
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 190
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    .line 134
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->writeClosingChunk()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    .line 137
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    .line 177
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 178
    return-void
.end method

.method protected flushCache()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 96
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 100
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 102
    :cond_0
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .locals 4
    .param p1, "bufferToAppend"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 115
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 116
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 117
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 118
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 145
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 146
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    .line 147
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ChunkedOutputStream;->write([BII)V

    .line 157
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_1

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    goto :goto_0
.end method

.method protected writeClosingChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 124
    return-void
.end method
