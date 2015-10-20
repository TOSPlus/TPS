.class public Lorg/apache/http/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# instance fields
.field private bof:Z

.field private final buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private footers:[Lorg/apache/http/Header;

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    .line 88
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 91
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    .line 93
    new-array v0, v1, [Lorg/apache/http/Header;

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 101
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 102
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 103
    return-void
.end method

.method static exhaustInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const/16 v1, 0x400

    new-array v0, v1, [B

    .line 289
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    .line 292
    return-void
.end method

.method private getChunkSize()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    if-nez v5, :cond_1

    .line 211
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v5}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    .line 212
    .local v0, "cr":I
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v5}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v3

    .line 213
    .local v3, "lf":I
    const/16 v5, 0xd

    if-ne v0, v5, :cond_0

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 214
    :cond_0
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    const-string v6, "CRLF expected at end of chunk"

    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 219
    .end local v0    # "cr":I
    .end local v3    # "lf":I
    :cond_1
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 220
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v5, v6}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v2

    .line 221
    .local v2, "i":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 222
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    const-string v6, "Chunked stream ended unexpectedly"

    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    :cond_2
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v4

    .line 226
    .local v4, "separator":I
    if-gez v4, :cond_3

    .line 227
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    .line 230
    :cond_3
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    const-string v6, "Bad chunk header"

    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private nextChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->getChunkSize()I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    .line 184
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-gez v0, :cond_0

    .line 185
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    .line 188
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 189
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-nez v0, :cond_1

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 191
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->parseTrailerHeaders()V

    .line 193
    :cond_1
    return-void
.end method

.method private parseTrailerHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lorg/apache/http/HttpException;
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Lorg/apache/http/util/ExceptionUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 248
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_1

    .line 261
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-nez v0, :cond_0

    .line 262
    invoke-static {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 266
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    .line 269
    :cond_1
    return-void

    .line 265
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 266
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    throw v0
.end method

.method public getFooters()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    invoke-virtual {v0}, [Lorg/apache/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 118
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    .line 131
    :cond_1
    :goto_0
    return v0

    .line 124
    :cond_2
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_3

    .line 125
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    .line 126
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    .line 130
    :cond_3
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 147
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    .line 163
    :cond_1
    :goto_0
    return v0

    .line 154
    :cond_2
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_3

    .line 155
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    .line 156
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    .line 160
    :cond_3
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 161
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 162
    .local v0, "count":I
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    goto :goto_0
.end method
