.class public Lorg/apache/http/impl/io/HttpResponseParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "HttpResponseParser.java"


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/apache/http/message/LineParser;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    .line 59
    if-nez p3, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 63
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 64
    return-void
.end method


# virtual methods
.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .locals 5
    .param p1, "sessionBuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 71
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v3}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 72
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 73
    new-instance v3, Lorg/apache/http/NoHttpResponseException;

    const-string v4, "The target server failed to respond"

    invoke-direct {v3, v4}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_0
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 77
    .local v0, "cursor":Lorg/apache/http/message/ParserCursor;
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v4, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 78
    .local v2, "statusline":Lorg/apache/http/StatusLine;
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method
