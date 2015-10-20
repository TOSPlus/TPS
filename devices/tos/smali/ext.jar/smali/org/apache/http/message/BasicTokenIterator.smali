.class public Lorg/apache/http/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lorg/apache/http/TokenIterator;


# static fields
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"


# instance fields
.field protected currentHeader:Ljava/lang/String;

.field protected currentToken:Ljava/lang/String;

.field protected final headerIt:Lorg/apache/http/HeaderIterator;

.field protected searchPos:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .locals 2
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    .line 91
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    .line 92
    return-void
.end method


# virtual methods
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 216
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findNext(I)I
    .locals 3
    .param p1, "from"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 171
    if-gez p1, :cond_1

    .line 173
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 177
    const/4 p1, 0x0

    .line 183
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenStart(I)I

    move-result v1

    .line 184
    .local v1, "start":I
    if-gez v1, :cond_2

    .line 185
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    goto :goto_0

    .line 180
    .end local v1    # "start":I
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenSeparator(I)I

    move-result p1

    goto :goto_1

    .line 189
    .restart local v1    # "start":I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenEnd(I)I

    move-result v0

    .line 190
    .local v0, "end":I
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/http/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    goto :goto_0
.end method

.method protected findTokenEnd(I)I
    .locals 5
    .param p1, "from"    # I

    .prologue
    .line 327
    if-gez p1, :cond_0

    .line 328
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Token start position must not be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_0
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 333
    .local v1, "to":I
    add-int/lit8 v0, p1, 0x1

    .line 334
    .local v0, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    return v0
.end method

.method protected findTokenSeparator(I)I
    .locals 6
    .param p1, "from"    # I

    .prologue
    .line 287
    if-gez p1, :cond_0

    .line 288
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search position must not be negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    :cond_0
    const/4 v1, 0x0

    .line 293
    .local v1, "found":Z
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 294
    .local v2, "to":I
    :goto_0
    if-nez v1, :cond_4

    if-ge p1, v2, :cond_4

    .line 295
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 296
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tokens without separator (pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :cond_3
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character after token (pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    .end local v0    # "ch":C
    :cond_4
    return p1
.end method

.method protected findTokenStart(I)I
    .locals 6
    .param p1, "from"    # I

    .prologue
    .line 231
    if-gez p1, :cond_0

    .line 232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search position must not be negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 237
    .local v1, "found":Z
    :cond_1
    :goto_0
    if-nez v1, :cond_7

    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 239
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 240
    .local v2, "to":I
    :goto_1
    if-nez v1, :cond_5

    if-ge p1, v2, :cond_5

    .line 242
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 243
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 246
    :cond_3
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    const/4 v1, 0x1

    goto :goto_1

    .line 250
    :cond_4
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character before token (pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    .end local v0    # "ch":C
    :cond_5
    if-nez v1, :cond_1

    .line 256
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 257
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 258
    const/4 p1, 0x0

    goto :goto_0

    .line 260
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    goto :goto_0

    .line 265
    .end local v2    # "to":I
    :cond_7
    if-eqz v1, :cond_8

    .end local p1    # "from":I
    :goto_2
    return p1

    .restart local p1    # "from":I
    :cond_8
    const/4 p1, -0x1

    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHttpSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 424
    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

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

.method protected isTokenChar(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 397
    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->isHttpSeparator(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 401
    goto :goto_0
.end method

.method protected isTokenSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 354
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWhitespace(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 373
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/http/message/BasicTokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iteration already finished."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    .line 118
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    .line 120
    return-object v0
.end method

.method public final remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
