.class public final Lorg/apache/http/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP entity may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 96
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 97
    .local v2, "values":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 98
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-interface {v3, v4}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 99
    .local v1, "param":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_1

    .line 100
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 104
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "values":[Lorg/apache/http/HeaderElement;
    :cond_1
    return-object v0
.end method

.method public static toByteArray(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 62
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP entity may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 65
    .local v2, "instream":Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 66
    new-array v5, v5, [B

    .line 85
    :goto_0
    return-object v5

    .line 68
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 69
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP entity too large to be buffered in memory"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    long-to-int v1, v5

    .line 72
    .local v1, "i":I
    if-gez v1, :cond_3

    .line 73
    const/16 v1, 0x1000

    .line 75
    :cond_3
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 77
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v5, 0x1000

    :try_start_0
    new-array v4, v5, [B

    .line 79
    .local v4, "tmp":[B
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "l":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 83
    .end local v3    # "l":I
    .end local v4    # "tmp":[B
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5

    .restart local v3    # "l":I
    .restart local v4    # "tmp":[B
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 85
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v5

    goto :goto_0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "HTTP entity may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 112
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 113
    .local v3, "instream":Ljava/io/InputStream;
    if-nez v3, :cond_1

    .line 114
    const-string v7, ""

    .line 141
    :goto_0
    return-object v7

    .line 116
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    const-wide/32 v9, 0x7fffffff

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 117
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "HTTP entity too large to be buffered in memory"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 119
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    long-to-int v2, v7

    .line 120
    .local v2, "i":I
    if-gez v2, :cond_3

    .line 121
    const/16 v2, 0x1000

    .line 123
    :cond_3
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 125
    move-object v1, p1

    .line 127
    :cond_4
    if-nez v1, :cond_5

    .line 128
    const-string v1, "ISO-8859-1"

    .line 130
    :cond_5
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 131
    .local v5, "reader":Ljava/io/Reader;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 133
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v7, 0x400

    :try_start_0
    new-array v6, v7, [C

    .line 135
    .local v6, "tmp":[C
    :goto_1
    invoke-virtual {v5, v6}, Ljava/io/Reader;->read([C)I

    move-result v4

    .local v4, "l":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    .line 136
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 139
    .end local v4    # "l":I
    .end local v6    # "tmp":[C
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    throw v7

    .restart local v4    # "l":I
    .restart local v6    # "tmp":[C
    :cond_6
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    .line 141
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
