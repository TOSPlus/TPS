.class public Lorg/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 53
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 97
    new-array v2, v8, [B

    sput-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    .line 98
    const/16 v2, 0x40

    new-array v2, v2, [B

    sput-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 103
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 106
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 108
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 109
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 111
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 112
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 115
    :cond_3
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 116
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 118
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 119
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 122
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 123
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 126
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_6

    .line 127
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 130
    :cond_6
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v6

    .line 131
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v7

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    .prologue
    .line 374
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 377
    array-length v12, p0

    if-nez v12, :cond_1

    .line 378
    const/4 v12, 0x0

    new-array v5, v12, [B

    .line 431
    :cond_0
    :goto_0
    return-object v5

    .line 381
    :cond_1
    array-length v12, p0

    div-int/lit8 v11, v12, 0x4

    .line 382
    .local v11, "numberQuadruple":I
    const/4 v5, 0x0

    .line 383
    .local v5, "decodedData":[B
    const/4 v0, 0x0

    .local v0, "b1":B
    const/4 v1, 0x0

    .local v1, "b2":B
    const/4 v2, 0x0

    .local v2, "b3":B
    const/4 v3, 0x0

    .local v3, "b4":B
    const/4 v9, 0x0

    .local v9, "marker0":B
    const/4 v10, 0x0

    .line 387
    .local v10, "marker1":B
    const/4 v6, 0x0

    .line 388
    .local v6, "encodedIndex":I
    const/4 v4, 0x0

    .line 391
    .local v4, "dataIndex":I
    array-length v8, p0

    .line 393
    .local v8, "lastData":I
    :cond_2
    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_3

    .line 394
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_2

    .line 395
    const/4 v12, 0x0

    new-array v5, v12, [B

    goto :goto_0

    .line 398
    :cond_3
    sub-int v12, v8, v11

    new-array v5, v12, [B

    .line 401
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_0

    .line 402
    mul-int/lit8 v4, v7, 0x4

    .line 403
    add-int/lit8 v12, v4, 0x2

    aget-byte v9, p0, v12

    .line 404
    add-int/lit8 v12, v4, 0x3

    aget-byte v10, p0, v12

    .line 406
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v13, p0, v4

    aget-byte v0, v12, v13

    .line 407
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v1, v12, v13

    .line 409
    const/16 v12, 0x3d

    if-eq v9, v12, :cond_5

    const/16 v12, 0x3d

    if-eq v10, v12, :cond_5

    .line 411
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 412
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v3, v12, v10

    .line 414
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 415
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 417
    add-int/lit8 v12, v6, 0x2

    shl-int/lit8 v13, v2, 0x6

    or-int/2addr v13, v3

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 429
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 401
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 418
    :cond_5
    const/16 v12, 0x3d

    if-ne v9, v12, :cond_6

    .line 420
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    goto :goto_2

    .line 421
    :cond_6
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_4

    .line 423
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 425
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 426
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_2
.end method

.method static discardNonBase64([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 474
    array-length v5, p0

    new-array v2, v5, [B

    .line 475
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    .line 477
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 478
    aget-byte v5, p0, v3

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 477
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    :cond_1
    new-array v4, v0, [B

    .line 485
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    return-object v4
.end method

.method static discardWhitespace([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 442
    array-length v5, p0

    new-array v2, v5, [B

    .line 443
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    .line 445
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 446
    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_0

    .line 453
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 445
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_0
    new-array v4, v0, [B

    .line 459
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    return-object v4

    .line 446
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 27
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 233
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v16, v23, 0x8

    .line 234
    .local v16, "lengthDataBits":I
    rem-int/lit8 v12, v16, 0x18

    .line 235
    .local v12, "fewerThan24bits":I
    div-int/lit8 v19, v16, 0x18

    .line 236
    .local v19, "numberTriplets":I
    const/4 v9, 0x0

    .line 237
    .local v9, "encodedData":[B
    const/4 v10, 0x0

    .line 238
    .local v10, "encodedDataLength":I
    const/16 v17, 0x0

    .line 240
    .local v17, "nbrChunks":I
    if-eqz v12, :cond_2

    .line 242
    add-int/lit8 v23, v19, 0x1

    mul-int/lit8 v10, v23, 0x4

    .line 251
    :goto_0
    if-eqz p1, :cond_0

    .line 253
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_3

    const/16 v17, 0x0

    .line 255
    :goto_1
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int v23, v23, v17

    add-int v10, v10, v23

    .line 258
    :cond_0
    new-array v9, v10, [B

    .line 260
    const/4 v14, 0x0

    .local v14, "k":B
    const/4 v15, 0x0

    .local v15, "l":B
    const/4 v4, 0x0

    .local v4, "b1":B
    const/4 v5, 0x0

    .local v5, "b2":B
    const/4 v6, 0x0

    .line 262
    .local v6, "b3":B
    const/4 v11, 0x0

    .line 263
    .local v11, "encodedIndex":I
    const/4 v8, 0x0

    .line 264
    .local v8, "dataIndex":I
    const/4 v13, 0x0

    .line 265
    .local v13, "i":I
    const/16 v18, 0x4c

    .line 266
    .local v18, "nextSeparatorIndex":I
    const/4 v7, 0x0

    .line 269
    .local v7, "chunksSoFar":I
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    .line 270
    mul-int/lit8 v8, v13, 0x3

    .line 271
    aget-byte v4, p0, v8

    .line 272
    add-int/lit8 v23, v8, 0x1

    aget-byte v5, p0, v23

    .line 273
    add-int/lit8 v23, v8, 0x2

    aget-byte v6, p0, v23

    .line 277
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 278
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 280
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_4

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 282
    .local v20, "val1":B
    :goto_3
    and-int/lit8 v23, v5, -0x80

    if-nez v23, :cond_5

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 284
    .local v21, "val2":B
    :goto_4
    and-int/lit8 v23, v6, -0x80

    if-nez v23, :cond_6

    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    .line 287
    .local v22, "val3":B
    :goto_5
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 291
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 293
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    or-int v25, v25, v22

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 295
    add-int/lit8 v23, v11, 0x3

    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v25, v6, 0x3f

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 297
    add-int/lit8 v11, v11, 0x4

    .line 300
    if-eqz p1, :cond_1

    .line 302
    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    .line 303
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v9, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    add-int/lit8 v7, v7, 0x1

    .line 310
    add-int/lit8 v23, v7, 0x1

    mul-int/lit8 v23, v23, 0x4c

    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    mul-int v24, v24, v7

    add-int v18, v23, v24

    .line 313
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int v11, v11, v23

    .line 269
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 245
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v7    # "chunksSoFar":I
    .end local v8    # "dataIndex":I
    .end local v11    # "encodedIndex":I
    .end local v13    # "i":I
    .end local v14    # "k":B
    .end local v15    # "l":B
    .end local v18    # "nextSeparatorIndex":I
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    .end local v22    # "val3":B
    :cond_2
    mul-int/lit8 v10, v19, 0x4

    goto/16 :goto_0

    .line 253
    :cond_3
    int-to-float v0, v10

    move/from16 v23, v0

    const/high16 v24, 0x42980000    # 76.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    .line 280
    .restart local v4    # "b1":B
    .restart local v5    # "b2":B
    .restart local v6    # "b3":B
    .restart local v7    # "chunksSoFar":I
    .restart local v8    # "dataIndex":I
    .restart local v11    # "encodedIndex":I
    .restart local v13    # "i":I
    .restart local v14    # "k":B
    .restart local v15    # "l":B
    .restart local v18    # "nextSeparatorIndex":I
    :cond_4
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto/16 :goto_3

    .line 282
    .restart local v20    # "val1":B
    :cond_5
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto/16 :goto_4

    .line 284
    .restart local v21    # "val2":B
    :cond_6
    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    goto/16 :goto_5

    .line 319
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    :cond_7
    mul-int/lit8 v8, v13, 0x3

    .line 321
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v12, v0, :cond_b

    .line 322
    aget-byte v4, p0, v8

    .line 323
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 326
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_a

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 328
    .restart local v20    # "val1":B
    :goto_6
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 329
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 330
    add-int/lit8 v23, v11, 0x2

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    .line 331
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    .line 351
    .end local v20    # "val1":B
    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 353
    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    .line 354
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sub-int v25, v10, v25

    sget-object v26, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    :cond_9
    return-object v9

    .line 326
    :cond_a
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_6

    .line 332
    :cond_b
    const/16 v23, 0x10

    move/from16 v0, v23

    if-ne v12, v0, :cond_8

    .line 334
    aget-byte v4, p0, v8

    .line 335
    add-int/lit8 v23, v8, 0x1

    aget-byte v5, p0, v23

    .line 336
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 337
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 339
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_c

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 341
    .restart local v20    # "val1":B
    :goto_8
    and-int/lit8 v23, v5, -0x80

    if-nez v23, :cond_d

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 344
    .restart local v21    # "val2":B
    :goto_9
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 345
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 347
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 348
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    goto/16 :goto_7

    .line 339
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    :cond_c
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_8

    .line 341
    .restart local v20    # "val1":B
    :cond_d
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_9
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 4
    .param p0, "arrayOctect"    # [B

    .prologue
    const/4 v2, 0x1

    .line 154
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardWhitespace([B)[B

    move-result-object p0

    .line 156
    array-length v1, p0

    .line 157
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 162
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 163
    aget-byte v3, p0, v0

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    const/4 v2, 0x0

    goto :goto_0

    .line 162
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    .prologue
    const/4 v0, 0x1

    .line 135
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 206
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 220
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 506
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
