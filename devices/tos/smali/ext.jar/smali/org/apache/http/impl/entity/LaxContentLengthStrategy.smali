.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 18
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "HTTP message may not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 192
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    .line 193
    .local v11, "params":Lorg/apache/http/params/HttpParams;
    const-string v15, "http.protocol.strict-transfer-encoding"

    invoke-interface {v11, v15}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v13

    .line 195
    .local v13, "strict":Z
    const-string v15, "Transfer-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v14

    .line 196
    .local v14, "transferEncodingHeader":Lorg/apache/http/Header;
    const-string v15, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 199
    .local v1, "contentLengthHeader":Lorg/apache/http/Header;
    if-eqz v14, :cond_7

    .line 200
    const/4 v6, 0x0

    .line 202
    .local v6, "encodings":[Lorg/apache/http/HeaderElement;
    :try_start_0
    invoke-interface {v14}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 208
    if-eqz v13, :cond_2

    .line 210
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v15, v6

    if-ge v9, v15, :cond_2

    .line 211
    aget-object v15, v6, v9

    invoke-interface {v15}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "encoding":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    const-string v15, "chunked"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "identity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 215
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported transfer encoding: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 203
    .end local v5    # "encoding":Ljava/lang/String;
    .end local v9    # "i":I
    :catch_0
    move-exception v12

    .line 204
    .local v12, "px":Lorg/apache/http/ParseException;
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid Transfer-Encoding header value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v12}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 210
    .end local v12    # "px":Lorg/apache/http/ParseException;
    .restart local v5    # "encoding":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 220
    .end local v5    # "encoding":Ljava/lang/String;
    .end local v9    # "i":I
    :cond_2
    array-length v10, v6

    .line 221
    .local v10, "len":I
    const-string v15, "identity"

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 222
    const-wide/16 v2, -0x1

    .line 256
    .end local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v10    # "len":I
    :cond_3
    :goto_1
    return-wide v2

    .line 223
    .restart local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .restart local v10    # "len":I
    :cond_4
    if-lez v10, :cond_5

    const-string v15, "chunked"

    add-int/lit8 v16, v10, -0x1

    aget-object v16, v6, v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 225
    const-wide/16 v2, -0x2

    goto :goto_1

    .line 227
    :cond_5
    if-eqz v13, :cond_6

    .line 228
    new-instance v15, Lorg/apache/http/ProtocolException;

    const-string v16, "Chunk-encoding must be the last one applied"

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 230
    :cond_6
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 232
    .end local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v10    # "len":I
    :cond_7
    if-eqz v1, :cond_b

    .line 233
    const-wide/16 v2, -0x1

    .line 234
    .local v2, "contentlen":J
    const-string v15, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 235
    .local v8, "headers":[Lorg/apache/http/Header;
    if-eqz v13, :cond_8

    array-length v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 236
    new-instance v15, Lorg/apache/http/ProtocolException;

    const-string v16, "Multiple content length headers"

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 238
    :cond_8
    array-length v15, v8

    add-int/lit8 v9, v15, -0x1

    .restart local v9    # "i":I
    :goto_2
    if-ltz v9, :cond_9

    .line 239
    aget-object v7, v8, v9

    .line 241
    .local v7, "header":Lorg/apache/http/Header;
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 250
    .end local v7    # "header":Lorg/apache/http/Header;
    :cond_9
    const-wide/16 v15, 0x0

    cmp-long v15, v2, v15

    if-gez v15, :cond_3

    .line 253
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 243
    .restart local v7    # "header":Lorg/apache/http/Header;
    :catch_1
    move-exception v4

    .line 244
    .local v4, "e":Ljava/lang/NumberFormatException;
    if-eqz v13, :cond_a

    .line 245
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid content length: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 238
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 256
    .end local v2    # "contentlen":J
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "header":Lorg/apache/http/Header;
    .end local v8    # "headers":[Lorg/apache/http/Header;
    .end local v9    # "i":I
    :cond_b
    const-wide/16 v2, -0x1

    goto :goto_1
.end method
