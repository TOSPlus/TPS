.class abstract Lorg/apache/commons/codec/net/RFC1522Codec;
.super Ljava/lang/Object;
.source "RFC1522Codec.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 98
    if-nez p1, :cond_0

    .line 99
    const/4 v6, 0x0

    .line 128
    :goto_0
    return-object v6

    .line 101
    :cond_0
    const-string v6, "=?"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "?="

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 102
    :cond_1
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: malformed encoded content"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x2

    .line 105
    .local v4, "termnator":I
    const/4 v3, 0x2

    .line 106
    .local v3, "from":I
    const-string v6, "?"

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 107
    .local v5, "to":I
    if-eq v5, v7, :cond_3

    if-ne v5, v4, :cond_4

    .line 108
    :cond_3
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: charset token not found"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    :cond_4
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "charset":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 112
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: charset not specified"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    :cond_5
    add-int/lit8 v3, v5, 0x1

    .line 115
    const-string v6, "?"

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 116
    if-eq v5, v7, :cond_6

    if-ne v5, v4, :cond_7

    .line 117
    :cond_6
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: encoding token not found"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    :cond_7
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 121
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This codec cannot decode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " encoded content"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 124
    :cond_8
    add-int/lit8 v3, v5, 0x1

    .line 125
    const-string v6, "?"

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 126
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "US-ASCII"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 127
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/RFC1522Codec;->doDecoding([B)[B

    move-result-object v1

    .line 128
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected abstract doDecoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation
.end method

.method protected abstract doEncoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation
.end method

.method protected encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3f

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v2, 0x0

    .line 80
    :goto_0
    return-object v2

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/net/RFC1522Codec;->doEncoding([B)[B

    move-result-object v1

    .line 78
    .local v1, "rawdata":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v2, "?="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract getEncoding()Ljava/lang/String;
.end method
