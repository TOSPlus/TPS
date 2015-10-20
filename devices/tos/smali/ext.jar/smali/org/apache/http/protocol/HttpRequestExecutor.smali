.class public Lorg/apache/http/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method protected canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v2, "HEAD"

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 86
    .local v0, "status":I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_0

    const/16 v2, 0x130

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_0
    if-nez p2, :cond_1

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP connection may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_1
    if-nez p3, :cond_2

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP context may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_2
    const/4 v0, 0x0

    .line 275
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 277
    .local v1, "statuscode":I
    :goto_0
    if-eqz v0, :cond_3

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_5

    .line 279
    :cond_3
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 280
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 283
    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    goto :goto_0

    .line 287
    :cond_5
    return-object v0
.end method

.method protected doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP request may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :cond_0
    if-nez p2, :cond_1

    .line 192
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP connection may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_1
    if-nez p3, :cond_2

    .line 195
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP context may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 198
    :cond_2
    const/4 v0, 0x0

    .line 199
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const-string v5, "http.request_sent"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    invoke-interface {p2, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 202
    instance-of v5, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v5, :cond_6

    .line 206
    const/4 v1, 0x1

    .line 207
    .local v1, "sendentity":Z
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    move-object v5, p1

    .line 209
    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 212
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    .line 215
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.protocol.wait-for-continue"

    const/16 v7, 0x7d0

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    .line 218
    .local v3, "tms":I
    invoke-interface {p2, v3}, Lorg/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 219
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 220
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 221
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 223
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 224
    .local v2, "status":I
    const/16 v5, 0xc8

    if-ge v2, v5, :cond_7

    .line 225
    const/16 v5, 0x64

    if-eq v2, v5, :cond_4

    .line 226
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 230
    :cond_4
    const/4 v0, 0x0

    .line 236
    .end local v2    # "status":I
    .end local v3    # "tms":I
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 237
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p2, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 240
    .end local v1    # "sendentity":Z
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_6
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    .line 241
    const-string v5, "http.request_sent"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-object v0

    .line 232
    .restart local v1    # "sendentity":Z
    .restart local v2    # "status":I
    .restart local v3    # "tms":I
    .restart local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Client connection may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_1
    if-nez p3, :cond_2

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP context may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 120
    .local v1, "response":Lorg/apache/http/HttpResponse;
    if-nez v1, :cond_3

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 123
    :cond_3
    return-object v1

    .line 124
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/io/IOException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 126
    throw v0

    .line 127
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "ex":Lorg/apache/http/HttpException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 129
    throw v0

    .line 130
    .end local v0    # "ex":Lorg/apache/http/HttpException;
    :catch_2
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 132
    throw v0
.end method

.method public postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    if-nez p2, :cond_1

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    if-nez p3, :cond_2

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_2
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 320
    return-void
.end method

.method public preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    if-nez p2, :cond_1

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    if-nez p3, :cond_2

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 161
    return-void
.end method
