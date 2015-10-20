.class public Lorg/apache/http/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# instance fields
.field private connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

.field private handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

.field private params:Lorg/apache/http/params/HttpParams;

.field private processor:Lorg/apache/http/protocol/HttpProcessor;

.field private responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .locals 1
    .param p1, "proc"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p2, "connStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    .line 65
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    .line 66
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .line 67
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 68
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 69
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpService;->setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V

    .line 84
    invoke-virtual {p0, p2}, Lorg/apache/http/protocol/HttpService;->setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    .line 85
    invoke-virtual {p0, p3}, Lorg/apache/http/protocol/HttpService;->setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "handler":Lorg/apache/http/protocol/HttpRequestHandler;
    iget-object v2, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    if-eqz v2, :cond_0

    .line 239
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "requestURI":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    invoke-interface {v2, v1}, Lorg/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;

    move-result-object v0

    .line 242
    .end local v1    # "requestURI":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    const/16 v2, 0x1f5

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "ex"    # Lorg/apache/http/HttpException;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 218
    instance-of v2, p1, Lorg/apache/http/MethodNotSupportedException;

    if-eqz v2, :cond_0

    .line 219
    const/16 v2, 0x1f5

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 227
    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 228
    .local v1, "msg":[B
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 229
    .local v0, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "text/plain; charset=US-ASCII"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 230
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 231
    return-void

    .line 220
    .end local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v1    # "msg":[B
    :cond_0
    instance-of v2, p1, Lorg/apache/http/UnsupportedHttpVersionException;

    if-eqz v2, :cond_1

    .line 221
    const/16 v2, 0x1f9

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 222
    :cond_1
    instance-of v2, p1, Lorg/apache/http/ProtocolException;

    if-eqz v2, :cond_2

    .line 223
    const/16 v2, 0x190

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 225
    :cond_2
    const/16 v2, 0x1f4

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    .locals 11
    .param p1, "conn"    # Lorg/apache/http/HttpServerConnection;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1f4

    const/16 v9, 0xc8

    .line 129
    const-string v6, "http.connection"

    invoke-interface {p2, v6, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const/4 v4, 0x0

    .line 135
    .local v4, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->receiveRequestHeader()Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 136
    .local v3, "request":Lorg/apache/http/HttpRequest;
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v3, v6}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 139
    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v5

    .line 141
    .local v5, "ver":Lorg/apache/http/ProtocolVersion;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v5, v6}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    .line 146
    :cond_0
    instance-of v6, v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v6, :cond_2

    .line 148
    move-object v0, v3

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v6, v0

    invoke-interface {v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 149
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/16 v7, 0x64

    invoke-interface {v6, v5, v7, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 151
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 154
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    .line 156
    :try_start_1
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    invoke-interface {v6, v3, v4, p2}, Lorg/apache/http/protocol/HttpExpectationVerifier;->verify(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ge v6, v9, :cond_2

    .line 168
    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    .line 169
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    .line 170
    const/4 v4, 0x0

    .line 171
    move-object v0, v3

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v6, v0

    invoke-interface {p1, v6}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 178
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 179
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/16 v7, 0xc8

    invoke-interface {v6, v5, v7, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 180
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 183
    const-string v6, "http.request"

    invoke-interface {p2, v6, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v6, "http.response"

    invoke-interface {p2, v6, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v6, v3, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 187
    invoke-virtual {p0, v3, v4, p2}, Lorg/apache/http/protocol/HttpService;->doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 191
    :cond_3
    instance-of v6, v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v6, :cond_4

    .line 192
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local v3    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 193
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_4

    .line 194
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v6, v4, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 208
    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    .line 209
    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->sendResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 210
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    .line 212
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v6, v4, p2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 213
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->close()V

    .line 215
    :cond_5
    return-void

    .line 157
    .restart local v3    # "request":Lorg/apache/http/HttpRequest;
    .restart local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ex":Lorg/apache/http/HttpException;
    :try_start_3
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    const/16 v8, 0x1f4

    invoke-interface {v6, v7, v8, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 160
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 162
    invoke-virtual {p0, v2, v4}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 198
    .end local v2    # "ex":Lorg/apache/http/HttpException;
    .end local v3    # "request":Lorg/apache/http/HttpRequest;
    .end local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :catch_1
    move-exception v2

    .line 199
    .restart local v2    # "ex":Lorg/apache/http/HttpException;
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-interface {v6, v7, v10, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 202
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 204
    invoke-virtual {p0, v2, v4}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V

    goto :goto_2

    .line 174
    .end local v2    # "ex":Lorg/apache/http/HttpException;
    .restart local v3    # "request":Lorg/apache/http/HttpRequest;
    .restart local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_6
    :try_start_4
    move-object v0, v3

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v6, v0

    invoke-interface {p1, v6}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method public setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V
    .locals 2
    .param p1, "connStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 100
    return-void
.end method

.method public setExpectationVerifier(Lorg/apache/http/protocol/HttpExpectationVerifier;)V
    .locals 0
    .param p1, "expectationVerifier"    # Lorg/apache/http/protocol/HttpExpectationVerifier;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    .line 115
    return-void
.end method

.method public setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V
    .locals 0
    .param p1, "handlerResolver"    # Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .line 111
    return-void
.end method

.method public setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V
    .locals 2
    .param p1, "processor"    # Lorg/apache/http/protocol/HttpProcessor;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    .line 93
    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    .line 123
    return-void
.end method

.method public setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V
    .locals 2
    .param p1, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 107
    return-void
.end method
