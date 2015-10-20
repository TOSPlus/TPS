.class public Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# static fields
.field protected static final DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "datepatterns"    # [Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    .line 89
    :goto_0
    const-string v0, "path"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 90
    const-string v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 91
    const-string v0, "max-age"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 92
    const-string v0, "secure"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 93
    const-string v0, "comment"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 94
    const-string v0, "expires"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 96
    return-void

    .line 87
    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-nez p1, :cond_0

    .line 155
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "List of cookies may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "List of cookies may not be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    invoke-direct {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 161
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v5, "Cookie"

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 162
    const-string v5, ": "

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 163
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 164
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 165
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    if-lez v3, :cond_2

    .line 166
    const-string v5, "; "

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 169
    const-string v5, "="

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 170
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 172
    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 163
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v5, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v5, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-object v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 13
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
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Header may not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 108
    :cond_0
    if-nez p2, :cond_1

    .line 109
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Cookie origin may not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 111
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "headervalue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 113
    .local v6, "isNetscapeCookie":Z
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "expires="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 114
    .local v4, "i1":I
    if-eq v4, v11, :cond_3

    .line 115
    const-string v9, "expires="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 116
    const/16 v9, 0x3b

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 117
    .local v5, "i2":I
    if-ne v5, v11, :cond_2

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 121
    :cond_2
    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v6, 0x1

    .line 127
    .end local v5    # "i2":I
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 128
    .local v2, "elems":[Lorg/apache/http/HeaderElement;
    if-eqz v6, :cond_6

    .line 129
    sget-object v7, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 132
    .local v7, "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v9, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v9, :cond_4

    move-object v9, p1

    .line 133
    check-cast v9, Lorg/apache/http/FormattedHeader;

    invoke-interface {v9}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 134
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    check-cast p1, Lorg/apache/http/FormattedHeader;

    .end local p1    # "header":Lorg/apache/http/Header;
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v9

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    invoke-direct {v1, v9, v10}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 146
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_1
    const/4 v9, 0x1

    new-array v2, v9, [Lorg/apache/http/HeaderElement;

    .end local v2    # "elems":[Lorg/apache/http/HeaderElement;
    invoke-virtual {v7, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v9

    aput-object v9, v2, v12

    .line 150
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .end local v7    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .restart local v2    # "elems":[Lorg/apache/http/HeaderElement;
    :goto_2
    invoke-virtual {p0, v2, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v9

    return-object v9

    .line 138
    .restart local v7    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .restart local p1    # "header":Lorg/apache/http/Header;
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "s":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 140
    new-instance v9, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v10, "Header value is null"

    invoke-direct {v9, v10}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 142
    :cond_5
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v0, v9}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 143
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 144
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    invoke-direct {v1, v12, v9}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .restart local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    goto :goto_1

    .line 148
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .end local v7    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .end local v8    # "s":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    goto :goto_2

    .line 123
    .end local v2    # "elems":[Lorg/apache/http/HeaderElement;
    .restart local v5    # "i2":I
    :catch_0
    move-exception v9

    goto :goto_0
.end method
