.class public Lgov/nist/core/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected bufferLen:I

.field protected ptr:I

.field protected savedPtr:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 55
    return-void
.end method

.method public static getSDPFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 191
    if-nez p0, :cond_0

    move-object v2, v3

    .line 200
    :goto_0
    return-object v2

    .line 193
    :cond_0
    const/4 v2, 0x0

    .line 195
    .local v2, "fieldName":Ljava/lang/String;
    :try_start_0
    const-string v4, "="

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, "begin":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 197
    .end local v0    # "begin":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v2, v3

    .line 198
    goto :goto_0
.end method

.method public static isAlpha(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    const/16 v2, 0x7f

    if-gt p0, v2, :cond_3

    .line 83
    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_2

    .line 86
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static isAlphaDigit(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    const/16 v2, 0x7f

    if-gt p0, v2, :cond_4

    .line 101
    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_1

    const/16 v2, 0x5a

    if-le p0, v2, :cond_2

    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_3

    const/16 v2, 0x30

    if-lt p0, v2, :cond_3

    .line 106
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 101
    goto :goto_0

    .line 106
    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 91
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1

    .line 92
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    goto :goto_0
.end method

.method public static isHexDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 76
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public consume()V
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 155
    return-void
.end method

.method public consume(I)V
    .locals 1
    .param p1, "k"    # I

    .prologue
    .line 158
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v0, p1

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 159
    return-void
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 113
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 114
    .local v0, "startIdx":I
    :goto_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 115
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    goto :goto_0

    .line 117
    :cond_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 118
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 120
    :cond_1
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLines()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 165
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getNextChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 145
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-lt v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getNextChar: End of buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getNextToken(C)Ljava/lang/String;
    .locals 5
    .param p1, "delim"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 175
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 177
    .local v1, "startIdx":I
    :goto_0
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    .line 178
    .local v0, "la":C
    if-ne v0, p1, :cond_0

    .line 184
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 180
    :cond_0
    if-nez v0, :cond_1

    .line 181
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "EOL reached"

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 182
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0
.end method

.method public hasMoreChars()Z
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookAhead()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    return v0
.end method

.method public lookAhead(I)C
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 60
    .local v1, "startIdx":I
    :cond_0
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v3, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v2, v3, :cond_1

    .line 61
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 62
    .local v0, "c":C
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 63
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 68
    .end local v0    # "c":C
    :cond_1
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public peekLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 125
    .local v0, "curPos":I
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "retval":Ljava/lang/String;
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 127
    return-object v1
.end method
