.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# static fields
.field private static final HEXADECIMAL:[C

.field private static final NC:Ljava/lang/String; = "00000001"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I


# instance fields
.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 104
    iput v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 112
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 113
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 4

    .prologue
    .line 477
    const-string v2, "MD5"

    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 479
    .local v1, "md5Helper":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "cnonce":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 482
    return-object v0
.end method

.method private createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;
    .locals 25
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 262
    const-string v22, "uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 263
    .local v21, "uri":Ljava/lang/String;
    const-string v22, "realm"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 264
    .local v14, "realm":Ljava/lang/String;
    const-string v22, "nonce"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, "nonce":Ljava/lang/String;
    const-string v22, "methodname"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, "method":Ljava/lang/String;
    const-string v22, "algorithm"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "algorithm":Ljava/lang/String;
    if-nez v21, :cond_0

    .line 268
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "URI may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 270
    :cond_0
    if-nez v14, :cond_1

    .line 271
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Realm may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 273
    :cond_1
    if-nez v11, :cond_2

    .line 274
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Nonce may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 277
    :cond_2
    if-nez v4, :cond_3

    .line 278
    const-string v4, "MD5"

    .line 281
    :cond_3
    const-string v22, "charset"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "charset":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 283
    const-string v5, "ISO-8859-1"

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 287
    new-instance v22, Lorg/apache/http/auth/AuthenticationException;

    const-string v23, "Unsupported qop in HTTP Digest authentication"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 291
    :cond_5
    const-string v22, "MD5"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 293
    .local v7, "md5Helper":Ljava/security/MessageDigest;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v20

    .line 294
    .local v20, "uname":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v12

    .line 297
    .local v12, "pwd":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 298
    .local v17, "tmp":Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/16 v22, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/16 v22, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "a1":Ljava/lang/String;
    const-string v22, "MD5-sess"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 312
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "cnonce":Ljava/lang/String;
    invoke-static {v2, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v18

    .line 315
    .local v18, "tmp2":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 316
    .local v19, "tmp3":Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .end local v6    # "cnonce":Ljava/lang/String;
    .end local v18    # "tmp2":Ljava/lang/String;
    .end local v19    # "tmp3":Ljava/lang/StringBuilder;
    :cond_6
    invoke-static {v2, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "md5a1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 328
    .local v3, "a2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 335
    :goto_0
    invoke-static {v3}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, "md5a2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v22, v0

    if-nez v22, :cond_9

    .line 340
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 341
    .local v18, "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 367
    .local v16, "serverDigestValue":Ljava/lang/String;
    :goto_1
    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v15

    .line 370
    .local v15, "serverDigest":Ljava/lang/String;
    return-object v15

    .line 322
    .end local v3    # "a2":Ljava/lang/String;
    .end local v8    # "md5a1":Ljava/lang/String;
    .end local v9    # "md5a2":Ljava/lang/String;
    .end local v15    # "serverDigest":Ljava/lang/String;
    .end local v16    # "serverDigestValue":Ljava/lang/String;
    .end local v18    # "tmp2":Ljava/lang/StringBuilder;
    :cond_7
    const-string v22, "MD5"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 323
    new-instance v22, Lorg/apache/http/auth/AuthenticationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unhandled algorithm "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " requested"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 333
    .restart local v3    # "a2":Ljava/lang/String;
    .restart local v8    # "md5a1":Ljava/lang/String;
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x3a

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 348
    .restart local v9    # "md5a2":Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v13

    .line 349
    .local v13, "qopOption":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v6

    .line 351
    .restart local v6    # "cnonce":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    const-string v23, "00000001"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 353
    .restart local v18    # "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    const-string v22, "00000001"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "serverDigestValue":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 15
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v12, 0x80

    invoke-direct {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 386
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->isProxy()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 387
    const-string v12, "Proxy-Authorization"

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 391
    :goto_0
    const-string v12, ": Digest "

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 393
    const-string v12, "uri"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, "uri":Ljava/lang/String;
    const-string v12, "realm"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, "realm":Ljava/lang/String;
    const-string v12, "nonce"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "nonce":Ljava/lang/String;
    const-string v12, "opaque"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "opaque":Ljava/lang/String;
    move-object/from16 v9, p2

    .line 398
    .local v9, "response":Ljava/lang/String;
    const-string v12, "algorithm"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "algorithm":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, "uname":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "username"

    invoke-direct {v12, v13, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "realm"

    invoke-direct {v12, v13, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "nonce"

    invoke-direct {v12, v13, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "uri"

    invoke-direct {v12, v13, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "response"

    invoke-direct {v12, v13, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget v12, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-eqz v12, :cond_0

    .line 410
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "qop"

    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "nc"

    const-string v14, "00000001"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "cnonce"

    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "algorithm"

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    if-eqz v5, :cond_2

    .line 418
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "opaque"

    invoke-direct {v12, v13, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_8

    .line 422
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/message/BasicNameValuePair;

    .line 423
    .local v6, "param":Lorg/apache/http/message/BasicNameValuePair;
    if-lez v2, :cond_3

    .line 424
    const-string v12, ", "

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 426
    :cond_3
    const-string v12, "nc"

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "qop"

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_4
    const/4 v3, 0x1

    .line 428
    .local v3, "noQuotes":Z
    :goto_2
    sget-object v13, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    if-nez v3, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v1, v6, v12}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 389
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "noQuotes":Z
    .end local v4    # "nonce":Ljava/lang/String;
    .end local v5    # "opaque":Ljava/lang/String;
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v8    # "realm":Ljava/lang/String;
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "uname":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_5
    const-string v12, "Authorization"

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "nonce":Ljava/lang/String;
    .restart local v5    # "opaque":Ljava/lang/String;
    .restart local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .restart local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v8    # "realm":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v10    # "uname":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 428
    .restart local v3    # "noQuotes":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 431
    .end local v3    # "noQuotes":Z
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    :cond_8
    new-instance v12, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v12, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v12
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    const/16 v6, 0x10

    .line 452
    array-length v4, p0

    if-eq v4, v6, :cond_0

    .line 453
    const/4 v4, 0x0

    .line 464
    :goto_0
    return-object v4

    .line 456
    :cond_0
    const/16 v4, 0x20

    new-array v0, v4, [C

    .line 457
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 458
    aget-byte v4, p0, v2

    and-int/lit8 v3, v4, 0xf

    .line 459
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v1, v4, 0x4

    .line 460
    .local v1, "high":I
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v5, v5, v1

    aput-char v5, v0, v4

    .line 461
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v5, v5, v3

    aput-char v5, v0, v4

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method private getQopVariantString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    iget v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 437
    const-string v0, "auth-int"

    .line 441
    .local v0, "qopOption":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 439
    .end local v0    # "qopOption":Ljava/lang/String;
    :cond_0
    const-string v0, "auth"

    .restart local v0    # "qopOption":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 5
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Credentials may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_0
    if-nez p2, :cond_1

    .line 227
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "methodname"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "uri"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v2, "charset"

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 235
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "charset"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "digest":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    return-object v2
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 168
    const-string v1, "stale"

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 6
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 126
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 128
    const-string v4, "realm"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 129
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "missing realm in challange"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_0
    const-string v4, "nonce"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 132
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "missing nonce in challange"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_1
    const/4 v2, 0x0

    .line 137
    .local v2, "unsupportedQop":Z
    const-string v4, "qop"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 139
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "variant":Ljava/lang/String;
    const-string v4, "auth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    const/4 v4, 0x2

    iput v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 153
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_5

    iget v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-nez v4, :cond_5

    .line 154
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "None of the qop methods is supported"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    .restart local v1    # "tok":Ljava/util/StringTokenizer;
    .restart local v3    # "variant":Ljava/lang/String;
    :cond_3
    const-string v4, "auth-int"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 146
    iput v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    goto :goto_0

    .line 148
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 158
    iput-boolean v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 159
    return-void
.end method
