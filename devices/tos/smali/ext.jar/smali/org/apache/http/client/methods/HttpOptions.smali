.class public Lorg/apache/http/client/methods/HttpOptions;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpOptions.java"


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "OPTIONS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 80
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getAllowedMethods(Lorg/apache/http/HttpResponse;)Ljava/util/Set;
    .locals 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "HTTP response may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 93
    :cond_0
    const-string v8, "Allow"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v5

    .line 94
    .local v5, "it":Lorg/apache/http/HeaderIterator;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v7, "methods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 96
    invoke-interface {v5}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    .line 97
    .local v3, "header":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 98
    .local v2, "elements":[Lorg/apache/http/HeaderElement;
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 99
    .local v1, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v1    # "element":Lorg/apache/http/HeaderElement;
    .end local v2    # "elements":[Lorg/apache/http/HeaderElement;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    return-object v7
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "OPTIONS"

    return-object v0
.end method
