.class public Lorg/apache/http/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;


# instance fields
.field private eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "watcher"    # Lorg/apache/http/conn/EofSensorWatcher;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    .line 112
    iput-object p2, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    .line 113
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    .line 322
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 323
    return-void
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "a":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :cond_0
    return v0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 200
    throw v1
.end method

.method protected checkAbort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 293
    const/4 v0, 0x1

    .line 294
    .local v0, "scws":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v0

    .line 296
    :cond_0
    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 302
    .end local v0    # "scws":Z
    :cond_2
    return-void

    .line 299
    .restart local v0    # "scws":Z
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected checkClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 264
    const/4 v0, 0x1

    .line 265
    .local v0, "scws":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v0

    .line 267
    :cond_0
    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 273
    .end local v0    # "scws":Z
    :cond_2
    return-void

    .line 270
    .restart local v0    # "scws":Z
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected checkEOF(I)V
    .locals 4
    .param p1, "eof"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    if-gez p1, :cond_2

    .line 237
    const/4 v0, 0x1

    .line 238
    .local v0, "scws":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v0

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    .line 241
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 246
    .end local v0    # "scws":Z
    :cond_2
    return-void

    .line 243
    .restart local v0    # "scws":Z
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    .line 213
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkClose()V

    .line 214
    return-void
.end method

.method protected isReadAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v1, -0x1

    .line 138
    .local v1, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 141
    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 144
    throw v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v1, -0x1

    .line 176
    .local v1, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 179
    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 182
    throw v0
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
    .line 155
    const/4 v1, -0x1

    .line 157
    .local v1, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 160
    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 163
    throw v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->close()V

    .line 310
    return-void
.end method
