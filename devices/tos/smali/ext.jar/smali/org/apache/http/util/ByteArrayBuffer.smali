.class public final Lorg/apache/http/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-gez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 54
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [B

    .line 58
    .local v0, "newbuffer":[B
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 60
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 82
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 83
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 84
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 87
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 88
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 68
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 70
    :cond_3
    if-eqz p3, :cond_0

    .line 73
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 74
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 75
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 77
    :cond_4
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 6
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-ltz p2, :cond_2

    array-length v4, p1

    if-gt p2, v4, :cond_2

    if-ltz p3, :cond_2

    add-int v4, p2, p3

    if-ltz v4, :cond_2

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_3

    .line 96
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 98
    :cond_3
    if-eqz p3, :cond_0

    .line 101
    iget v3, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 102
    .local v3, "oldlen":I
    add-int v2, v3, p3

    .line 103
    .local v2, "newlen":I
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v4, v4

    if-le v2, v4, :cond_4

    .line 104
    invoke-direct {p0, v2}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 106
    :cond_4
    move v0, p2

    .local v0, "i1":I
    move v1, v3

    .local v1, "i2":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 107
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-char v5, p1, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 106
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_5
    iput v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[B
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 121
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 148
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 151
    :cond_1
    iput p1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 152
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    new-array v0, v1, [B

    .line 125
    .local v0, "b":[B
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :cond_0
    return-object v0
.end method
