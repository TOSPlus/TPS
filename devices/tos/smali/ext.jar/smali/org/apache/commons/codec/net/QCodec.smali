.class public Lorg/apache/commons/codec/net/QCodec;
.super Lorg/apache/commons/codec/net/RFC1522Codec;
.source "QCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/StringDecoder;
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static BLANK:B

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static UNDERSCORE:B


# instance fields
.field private charset:Ljava/lang/String;

.field private encodeBlanks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 56
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 60
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 61
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 62
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 63
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 64
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 65
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 66
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 67
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 68
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 69
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 70
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 71
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 76
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 77
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 80
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 81
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 82
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 83
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 84
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 85
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_1
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 88
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 89
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 90
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 91
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 92
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 93
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_2
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 96
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 97
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 98
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 101
    sput-byte v3, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    .line 103
    const/16 v1, 0x5f

    sput-byte v1, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    .line 51
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    .line 51
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 125
    iput-object p1, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    .end local p1    # "pObject":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 273
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 274
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be decoded using Q codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 230
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QCodec;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected doDecoding([B)[B
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    const/4 v4, 0x0

    .line 170
    :goto_0
    return-object v4

    .line 151
    :cond_0
    const/4 v1, 0x0

    .line 152
    .local v1, "hasUnderscores":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 153
    aget-byte v4, p1, v2

    sget-byte v5, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    if-ne v4, v5, :cond_2

    .line 154
    const/4 v1, 0x1

    .line 158
    :cond_1
    if-eqz v1, :cond_5

    .line 159
    array-length v4, p1

    new-array v3, v4, [B

    .line 160
    .local v3, "tmp":[B
    const/4 v2, 0x0

    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 161
    aget-byte v0, p1, v2

    .line 162
    .local v0, "b":B
    sget-byte v4, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    if-eq v0, v4, :cond_3

    .line 163
    aput-byte v0, v3, v2

    .line 160
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    .end local v0    # "b":B
    .end local v3    # "tmp":[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .restart local v0    # "b":B
    .restart local v3    # "tmp":[B
    :cond_3
    sget-byte v4, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    aput-byte v4, v3, v2

    goto :goto_3

    .line 168
    .end local v0    # "b":B
    :cond_4
    invoke-static {v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v4

    goto :goto_0

    .line 170
    .end local v3    # "tmp":[B
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v4

    goto :goto_0
.end method

.method protected doEncoding([B)[B
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 144
    :cond_0
    return-object v0

    .line 136
    :cond_1
    sget-object v2, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v2, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v0

    .line 137
    .local v0, "data":[B
    iget-boolean v2, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    if-eqz v2, :cond_0

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 139
    aget-byte v2, v0, v1

    sget-byte v3, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    if-ne v2, v3, :cond_2

    .line 140
    sget-byte v2, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    aput-byte v2, v0, v1

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    .end local p1    # "pObject":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 249
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 250
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be encoded using Q codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/QCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/net/QCodec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "Q"

    return-object v0
.end method

.method public isEncodeBlanks()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    return v0
.end method

.method public setEncodeBlanks(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 308
    return-void
.end method
