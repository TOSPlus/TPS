.class public final Lorg/apache/http/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-gez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 56
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [C

    .line 60
    .local v0, "newbuffer":[C
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 62
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 111
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 112
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 113
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 116
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 117
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const-string p1, "null"

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 88
    .local v1, "strlen":I
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v2, v1

    .line 89
    .local v0, "newlen":I
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 90
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 92
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p1, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 93
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 94
    return-void
.end method

.method public append(Lorg/apache/http/util/ByteArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 3
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 120
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-ltz p2, :cond_2

    array-length v5, p1

    if-gt p2, v5, :cond_2

    if-ltz p3, :cond_2

    add-int v5, p2, p3

    if-ltz v5, :cond_2

    add-int v5, p2, p3

    array-length v6, p1

    if-le v5, v6, :cond_3

    .line 125
    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 127
    :cond_3
    if-eqz p3, :cond_0

    .line 130
    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 131
    .local v4, "oldlen":I
    add-int v3, v4, p3

    .line 132
    .local v3, "newlen":I
    iget-object v5, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v5, v5

    if-le v3, v5, :cond_4

    .line 133
    invoke-direct {p0, v3}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 135
    :cond_4
    move v1, p2

    .local v1, "i1":I
    move v2, v4

    .local v2, "i2":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 136
    aget-byte v0, p1, v1

    .line 137
    .local v0, "ch":I
    if-gez v0, :cond_5

    .line 138
    add-int/lit16 v0, v0, 0x100

    .line 140
    :cond_5
    iget-object v5, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    int-to-char v6, v0

    aput-char v6, v5, v2

    .line 135
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v0    # "ch":I
    :cond_6
    iput v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 3
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 65
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 68
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

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 72
    :cond_3
    if-eqz p3, :cond_0

    .line 75
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 76
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 77
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 79
    :cond_4
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[C
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 158
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "required"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    sub-int v0, v1, v2

    .line 186
    .local v0, "available":I
    if-le p1, v0, :cond_0

    .line 187
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "ch"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 207
    if-gez p2, :cond_0

    .line 208
    const/4 p2, 0x0

    .line 210
    :cond_0
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le p3, v2, :cond_1

    .line 211
    iget p3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 213
    :cond_1
    if-le p2, p3, :cond_3

    move v0, v1

    .line 221
    :cond_2
    :goto_0
    return v0

    .line 216
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 217
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_2

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 221
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

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
    .line 203
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

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
    .line 181
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 192
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 195
    :cond_1
    iput p1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 196
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 229
    if-gez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 232
    :cond_0
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 235
    :cond_1
    if-le p1, p2, :cond_2

    .line 236
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 238
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 242
    if-gez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 245
    :cond_0
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 248
    :cond_1
    if-le p1, p2, :cond_2

    .line 249
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 251
    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 254
    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 257
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    new-array v0, v1, [C

    .line 162
    .local v0, "b":[C
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
