.class public Lorg/apache/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueFormatter;


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatElements([Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatHeaderElement(Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 170
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 171
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatNameValuePair(Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 325
    if-nez p2, :cond_0

    .line 326
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 327
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatParameters([Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 257
    if-nez p2, :cond_0

    .line 258
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 259
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "quote"    # Z

    .prologue
    const/16 v3, 0x22

    .line 393
    if-nez p3, :cond_0

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-nez p3, :cond_0

    .line 395
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v1    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 400
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 402
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 403
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 404
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 407
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 409
    .end local v0    # "ch":C
    :cond_3
    if-eqz p3, :cond_4

    .line 410
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 412
    :cond_4
    return-void
.end method

.method protected estimateElementsLen([Lorg/apache/http/HeaderElement;)I
    .locals 4
    .param p1, "elems"    # [Lorg/apache/http/HeaderElement;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 149
    :cond_1
    return v1

    .line 144
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v1, v2, 0x2

    .line 145
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 146
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v2

    add-int/2addr v1, v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I
    .locals 5
    .param p1, "elem"    # Lorg/apache/http/HeaderElement;

    .prologue
    .line 218
    if-nez p1, :cond_1

    .line 219
    const/4 v2, 0x0

    .line 236
    :cond_0
    return v2

    .line 221
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 222
    .local v2, "result":I
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    .line 228
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v1

    .line 229
    .local v1, "parcnt":I
    if-lez v1, :cond_0

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 231
    invoke-interface {p1, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I
    .locals 3
    .param p1, "nvp"    # Lorg/apache/http/NameValuePair;

    .prologue
    .line 366
    if-nez p1, :cond_1

    .line 367
    const/4 v0, 0x0

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 370
    .local v0, "result":I
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method protected estimateParametersLen([Lorg/apache/http/NameValuePair;)I
    .locals 4
    .param p1, "nvps"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 299
    :cond_0
    const/4 v1, 0x0

    .line 306
    :cond_1
    return v1

    .line 301
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v1, v2, 0x2

    .line 302
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 303
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v2

    add-int/2addr v1, v2

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Header element array must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateElementsLen([Lorg/apache/http/HeaderElement;)I

    move-result v1

    .line 116
    .local v1, "len":I
    if-nez p1, :cond_2

    .line 117
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 122
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 123
    if-lez v0, :cond_1

    .line 124
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 126
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 129
    .restart local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method public formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elem"    # Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 180
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Header element must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v1

    .line 185
    .local v1, "len":I
    if-nez p1, :cond_2

    .line 186
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 191
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 192
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 194
    const/16 v4, 0x3d

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 195
    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 198
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v2

    .line 199
    .local v2, "parcnt":I
    if-lez v2, :cond_3

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 201
    const-string v4, "; "

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 202
    invoke-interface {p2, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "i":I
    .end local v2    # "parcnt":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 206
    .restart local v2    # "parcnt":I
    .restart local v3    # "value":Ljava/lang/String;
    :cond_3
    return-object p1
.end method

.method public formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 336
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "NameValuePair must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v0

    .line 341
    .local v0, "len":I
    if-nez p1, :cond_2

    .line 342
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 347
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 348
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 350
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 351
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 354
    :cond_1
    return-object p1

    .line 344
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method public formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameters must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateParametersLen([Lorg/apache/http/NameValuePair;)I

    move-result v1

    .line 273
    .local v1, "len":I
    if-nez p1, :cond_2

    .line 274
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 279
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 280
    if-lez v0, :cond_1

    .line 281
    const-string v2, "; "

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 283
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 286
    .restart local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method protected isSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 424
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnsafe(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 437
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
