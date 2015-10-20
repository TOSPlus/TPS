.class public Lorg/apache/http/impl/cookie/RFC2965Spec;
.super Lorg/apache/http/impl/cookie/RFC2109Spec;
.source "RFC2965Spec.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 71
    const-string v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 72
    const-string v0, "port"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 73
    const-string v0, "commenturl"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 74
    const-string v0, "discard"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 75
    const-string v0, "version"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 76
    return-void
.end method

.method private static adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;
    .locals 8
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x1

    .line 224
    .local v3, "isLocalHost":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 226
    .local v0, "ch":C
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_3

    .line 227
    :cond_0
    const/4 v3, 0x0

    .line 231
    .end local v0    # "ch":C
    :cond_1
    if-eqz v3, :cond_2

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".local"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    new-instance v4, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->isSecure()Z

    move-result v7

    invoke-direct {v4, v1, v5, v6, v7}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object p0, v4

    .line 239
    .end local p0    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    :cond_2
    return-object p0

    .line 224
    .restart local v0    # "ch":C
    .restart local p0    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createCookie(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .prologue
    .line 80
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 82
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method private createCookie2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .prologue
    .line 88
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie2;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie2;
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setPath(Ljava/lang/String;)V

    .line 90
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setDomain(Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p3}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setPorts([I)V

    .line 92
    return-object v0
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p3, "version"    # I

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    .line 185
    instance-of v4, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v4, :cond_2

    move-object v4, p2

    .line 187
    check-cast v4, Lorg/apache/http/cookie/ClientCookie;

    const-string v5, "port"

    invoke-interface {v4, v5}, Lorg/apache/http/cookie/ClientCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 189
    const-string v4, "; $Port"

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 190
    const-string v4, "=\""

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 192
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v2

    .line 193
    .local v2, "ports":[I
    if-eqz v2, :cond_1

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    if-lez v0, :cond_0

    .line 196
    const-string v4, ","

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 198
    :cond_0
    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "ports":[I
    :cond_1
    const-string v4, "\""

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 205
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 251
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v1, "Cookie2"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 252
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 253
    const-string v1, "$Version="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 255
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v1
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    if-nez p2, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    .line 174
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    return v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 24
    .param p1, "header"    # Lorg/apache/http/Header;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "Header may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 102
    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "Cookie origin may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 106
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    .line 108
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v10

    .line 110
    .local v10, "elems":[Lorg/apache/http/HeaderElement;
    new-instance v9, Ljava/util/ArrayList;

    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v9, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    move-object v4, v10

    .local v4, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .local v15, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    aget-object v13, v4, v15

    .line 112
    .local v13, "headerelement":Lorg/apache/http/HeaderElement;
    invoke-interface {v13}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v18

    .line 113
    .local v18, "name":Ljava/lang/String;
    invoke-interface {v13}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v21

    .line 114
    .local v21, "value":Ljava/lang/String;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_3

    .line 115
    :cond_2
    new-instance v22, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v23, "Cookie name may not be empty"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 119
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Set-Cookie2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->createCookie2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v8

    .line 126
    .local v8, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :goto_1
    invoke-interface {v13}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v7

    .line 130
    .local v7, "attribs":[Lorg/apache/http/NameValuePair;
    new-instance v6, Ljava/util/HashMap;

    array-length v0, v7

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 132
    .local v6, "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    array-length v0, v7

    move/from16 v22, v0

    add-int/lit8 v16, v22, -0x1

    .local v16, "j":I
    :goto_2
    if-ltz v16, :cond_5

    .line 133
    aget-object v19, v7, v16

    .line 134
    .local v19, "param":Lorg/apache/http/NameValuePair;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 122
    .end local v6    # "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .end local v7    # "attribs":[Lorg/apache/http/NameValuePair;
    .end local v8    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v16    # "j":I
    .end local v19    # "param":Lorg/apache/http/NameValuePair;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->createCookie(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v8

    .restart local v8    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    goto :goto_1

    .line 136
    .restart local v6    # "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .restart local v7    # "attribs":[Lorg/apache/http/NameValuePair;
    .restart local v16    # "j":I
    :cond_5
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v15    # "i$":I
    .local v14, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 137
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 138
    .local v5, "attrib":Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 140
    .local v20, "s":Ljava/lang/String;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v12

    .line 143
    .local v12, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    if-eqz v12, :cond_6

    .line 144
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v12, v8, v0}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_3

    .line 147
    .end local v5    # "attrib":Lorg/apache/http/NameValuePair;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .end local v12    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    .end local v20    # "s":Ljava/lang/String;
    :cond_7
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v14, v15, 0x1

    .local v14, "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .restart local v15    # "i$":I
    goto/16 :goto_0

    .line 149
    .end local v6    # "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .end local v7    # "attribs":[Lorg/apache/http/NameValuePair;
    .end local v8    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v13    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v16    # "j":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_8
    return-object v9
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-nez p2, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    .line 162
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 163
    return-void
.end method
