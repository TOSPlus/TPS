.class public final Lorg/apache/http/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/http/protocol/HttpProcessor;
.implements Lorg/apache/http/protocol/HttpRequestInterceptorList;
.implements Lorg/apache/http/protocol/HttpResponseInterceptorList;


# instance fields
.field protected requestInterceptors:Ljava/util/List;

.field protected responseInterceptors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 59
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 149
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 155
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 202
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V

    .line 207
    return-void
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 71
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 2
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 77
    if-gez p2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p1, :cond_1

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v0, :cond_3

    .line 85
    if-lez p2, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 90
    :cond_3
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 2
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 96
    if-gez p2, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    if-nez p1, :cond_1

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v0, :cond_3

    .line 104
    if-lez p2, :cond_2

    .line 105
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 109
    :cond_3
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearInterceptors()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 278
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    .line 279
    return-void
.end method

.method public clearRequestInterceptors()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 179
    return-void
.end method

.method public clearResponseInterceptors()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 232
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 333
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    .line 334
    return-object v0
.end method

.method public copy()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 327
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    .line 328
    return-object v0
.end method

.method protected copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V
    .locals 2
    .param p1, "target"    # Lorg/apache/http/protocol/BasicHttpProcessor;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 318
    :cond_1
    return-void
.end method

.method public getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequestInterceptor;

    goto :goto_0
.end method

.method public getRequestInterceptorCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponseInterceptor;

    goto :goto_0
.end method

.method public getResponseInterceptorCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 288
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpRequestInterceptor;

    .line 290
    .local v1, "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    .end local v1    # "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    :cond_0
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 302
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpResponseInterceptor;

    .line 304
    .local v1, "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "i":I
    .end local v1    # "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    :cond_0
    return-void
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 115
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v2, :cond_1

    .line 125
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 129
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v2, :cond_1

    .line 139
    :cond_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "List must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 259
    :cond_1
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 262
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 263
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 264
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/http/HttpRequestInterceptor;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 265
    check-cast v2, Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {p0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 267
    :cond_3
    instance-of v2, v1, Lorg/apache/http/HttpResponseInterceptor;

    if-eqz v2, :cond_4

    .line 268
    check-cast v1, Lorg/apache/http/HttpResponseInterceptor;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 262
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_5
    return-void
.end method
