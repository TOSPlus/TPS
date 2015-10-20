.class public Lorg/ccil/cowan/tagsoup/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field data:[Ljava/lang/String;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 84
    return-void
.end method

.method private badIndex(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to modify attribute at illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "n"    # I

    .prologue
    const/4 v4, 0x0

    .line 575
    if-gtz p1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 580
    :cond_2
    const/16 v0, 0x19

    .line 588
    .local v0, "max":I
    :goto_1
    mul-int/lit8 v2, p1, 0x5

    if-ge v0, v2, :cond_4

    .line 589
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 582
    .end local v0    # "max":I
    :cond_3
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x5

    if-ge v2, v3, :cond_0

    .line 586
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v2

    .restart local v0    # "max":I
    goto :goto_1

    .line 592
    :cond_4
    new-array v1, v0, [Ljava/lang/String;

    .line 593
    .local v1, "newData":[Ljava/lang/String;
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-lez v2, :cond_5

    .line 594
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v3, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v3, v3, 0x5

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    :cond_5
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 390
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->ensureCapacity(I)V

    .line 391
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    aput-object p1, v0, v1

    .line 392
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 393
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 394
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    .line 395
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p5, v0, v1

    .line 396
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 397
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 342
    return-void
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 228
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 229
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 230
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    div-int/lit8 v2, v0, 0x5

    .line 234
    :goto_1
    return v2

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 234
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 209
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 210
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 211
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    div-int/lit8 v2, v0, 0x5

    .line 215
    :goto_1
    return v2

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 215
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 133
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 151
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 169
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 270
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 271
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 272
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    .line 276
    :goto_1
    return-object v2

    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 276
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 250
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 251
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 252
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    .line 256
    :goto_1
    return-object v2

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 256
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 115
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 186
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 312
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 313
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 314
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    .line 318
    :goto_1
    return-object v2

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 318
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 292
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 293
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 294
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    .line 298
    :goto_1
    return-object v2

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 298
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeAttribute(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 446
    if-ltz p1, :cond_1

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v1, :cond_1

    .line 447
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 448
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v4, p1, 0x5

    iget v5, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    :cond_0
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 p1, v1, 0x5

    .line 452
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aput-object v6, v1, p1

    .line 453
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    .line 454
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    aput-object v6, v1, p1

    .line 455
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    .line 456
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aput-object v6, v1, p1

    .line 457
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "qName"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .prologue
    .line 424
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 426
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    .line 427
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    .line 428
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    .line 429
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->clear()V

    .line 356
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    iput v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 357
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-lez v1, :cond_0

    .line 358
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 361
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 362
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 363
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 364
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setLocalName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 496
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setQName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "qName"    # Ljava/lang/String;

    .prologue
    .line 516
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setType(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 535
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 536
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p2, v0, v1

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 476
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 554
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 555
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p2, v0, v1

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method
