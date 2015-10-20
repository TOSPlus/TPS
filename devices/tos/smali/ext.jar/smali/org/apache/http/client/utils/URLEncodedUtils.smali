.class public Lorg/apache/http/client/utils/URLEncodedUtils;
.super Ljava/lang/Object;
.source "URLEncodedUtils.java"


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_0
    const-string p1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_0
    const-string p1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 161
    .local v3, "parameter":Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "encodedName":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 165
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 170
    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v3    # "parameter":Lorg/apache/http/NameValuePair;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static isEncoded(Lorg/apache/http/HttpEntity;)Z
    .locals 3
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 113
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 114
    .local v0, "contentType":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "query":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-object v1
.end method

.method public static parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "content":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 99
    .local v1, "encoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v2, v4, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    .line 105
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "encoding":Lorg/apache/http/Header;
    :cond_0
    return-object v2

    .line 101
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "encoding":Lorg/apache/http/Header;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    .locals 6
    .param p1, "scanner"    # Ljava/util/Scanner;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x2

    .line 135
    const-string v3, "&"

    invoke-virtual {p1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 136
    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_0

    array-length v3, v1

    if-le v3, v5, :cond_1

    .line 139
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad parameter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 143
    .local v2, "value":Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v5, :cond_2

    .line 144
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    return-void
.end method
