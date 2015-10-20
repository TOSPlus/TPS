.class public Lorg/apache/http/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    .line 73
    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 15
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "HTTP response may not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 100
    :cond_0
    const-string v12, "location"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 101
    .local v4, "locationHeader":Lorg/apache/http/Header;
    if-nez v4, :cond_1

    .line 103
    new-instance v12, Lorg/apache/http/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received redirect response "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " but no location header"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 107
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "location":Ljava/lang/String;
    iget-object v12, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v12}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 109
    iget-object v12, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Redirect requested to location \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 114
    :cond_2
    :try_start_0
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .local v11, "uri":Ljava/net/URI;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 122
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_5

    .line 123
    const-string v12, "http.protocol.reject-relative-redirect"

    invoke-interface {v5, v12}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 124
    new-instance v12, Lorg/apache/http/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Relative redirect location \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' not allowed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 115
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    .end local v11    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 116
    .local v2, "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lorg/apache/http/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid redirect URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 128
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .restart local v5    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "uri":Ljava/net/URI;
    :cond_3
    const-string v12, "http.target_host"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    .line 130
    .local v10, "target":Lorg/apache/http/HttpHost;
    if-nez v10, :cond_4

    .line 131
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Target host not available in the HTTP context"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 135
    :cond_4
    const-string v12, "http.request"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/HttpRequest;

    .line 139
    .local v8, "request":Lorg/apache/http/HttpRequest;
    :try_start_1
    new-instance v9, Ljava/net/URI;

    invoke-interface {v8}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 140
    .local v9, "requestURI":Ljava/net/URI;
    const/4 v12, 0x1

    invoke-static {v9, v10, v12}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    .line 141
    .local v1, "absoluteRequestURI":Ljava/net/URI;
    invoke-static {v1, v11}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 147
    .end local v1    # "absoluteRequestURI":Ljava/net/URI;
    .end local v8    # "request":Lorg/apache/http/HttpRequest;
    .end local v9    # "requestURI":Ljava/net/URI;
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    :cond_5
    const-string v12, "http.protocol.allow-circular-redirects"

    invoke-interface {v5, v12}, Lorg/apache/http/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 149
    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/impl/client/RedirectLocations;

    .line 152
    .local v6, "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    if-nez v6, :cond_6

    .line 153
    new-instance v6, Lorg/apache/http/impl/client/RedirectLocations;

    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    invoke-direct {v6}, Lorg/apache/http/impl/client/RedirectLocations;-><init>()V

    .line 154
    .restart local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_6
    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 160
    :try_start_2
    new-instance v10, Lorg/apache/http/HttpHost;

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v13

    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v12, v13, v14}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    .restart local v10    # "target":Lorg/apache/http/HttpHost;
    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 172
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    .local v7, "redirectURI":Ljava/net/URI;
    :goto_0
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 173
    new-instance v12, Lorg/apache/http/client/CircularRedirectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Circular redirect to \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 142
    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    .restart local v8    # "request":Lorg/apache/http/HttpRequest;
    .restart local v10    # "target":Lorg/apache/http/HttpHost;
    :catch_1
    move-exception v2

    .line 143
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 165
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .end local v8    # "request":Lorg/apache/http/HttpRequest;
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    :catch_2
    move-exception v2

    .line 166
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 169
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :cond_7
    move-object v7, v11

    .restart local v7    # "redirectURI":Ljava/net/URI;
    goto :goto_0

    .line 176
    :cond_8
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    .line 180
    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    :cond_9
    return-object v11
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP response may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 82
    .local v0, "statusCode":I
    packed-switch v0, :pswitch_data_0

    .line 89
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 87
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
