.class public Lorg/apache/http/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;J)V
    .locals 3
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "contentLength"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 81
    iput-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 107
    iput-wide p2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    .line 108
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 118
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v1, :cond_1

    .line 120
    const/16 v1, 0x800

    :try_start_0
    new-array v0, v1, [B

    .line 121
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 126
    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 129
    .end local v0    # "buffer":[B
    :cond_1
    return-void

    .line 126
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 144
    const/4 v0, -0x1

    .line 147
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 147
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

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
    .line 188
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 168
    const/4 v0, -0x1

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 172
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    .line 174
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 175
    .local v0, "count":I
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    goto :goto_0
.end method

.method public skip(J)J
    .locals 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 200
    cmp-long v8, p1, v6

    if-gtz v8, :cond_0

    move-wide v1, v6

    .line 218
    :goto_0
    return-wide v1

    .line 203
    :cond_0
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 206
    .local v0, "buffer":[B
    iget-wide v8, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v10, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v8, v10

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 208
    .local v4, "remaining":J
    const-wide/16 v1, 0x0

    .line 209
    .local v1, "count":J
    :goto_1
    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 210
    const/4 v8, 0x0

    const-wide/16 v9, 0x800

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {p0, v0, v8, v9}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v3

    .line 211
    .local v3, "l":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    .line 217
    .end local v3    # "l":I
    :cond_1
    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    add-long/2addr v6, v1

    iput-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    goto :goto_0

    .line 214
    .restart local v3    # "l":I
    :cond_2
    int-to-long v8, v3

    add-long/2addr v1, v8

    .line 215
    int-to-long v8, v3

    sub-long/2addr v4, v8

    .line 216
    goto :goto_1
.end method
