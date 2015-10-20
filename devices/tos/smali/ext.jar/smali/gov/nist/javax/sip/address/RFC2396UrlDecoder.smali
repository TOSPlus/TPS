.class public Lgov/nist/javax/sip/address/RFC2396UrlDecoder;
.super Ljava/lang/Object;
.source "RFC2396UrlDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    .line 52
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 53
    .local v6, "translatedUri":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    new-array v1, v8, [B

    .line 54
    .local v1, "encodedchars":[B
    const/4 v3, 0x0

    .line 55
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 56
    .local v4, "length":I
    const/4 v2, 0x0

    .line 57
    .local v2, "encodedcharsLength":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 58
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 61
    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_1

    .line 62
    add-int/lit8 v8, v3, 0x2

    if-ge v8, v4, :cond_0

    .line 64
    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v3, 0x3

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v7, v8

    .line 65
    .local v7, "x":B
    aput-byte v7, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 66
    .end local v7    # "x":B
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal hex characters in pattern %"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v3, 0x3

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 72
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "% character should be followed by 2 hexadecimal characters."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 76
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v5, v1, v8, v2, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 77
    .local v5, "translatedPart":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    .end local v5    # "translatedPart":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Problem in decodePath: UTF-8 encoding not supported."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 85
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
