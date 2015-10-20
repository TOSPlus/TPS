.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    .line 76
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 25
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "HTTP request may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "HTTP context may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 88
    :cond_1
    const-string v22, "http.cookie-store"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/client/CookieStore;

    .line 90
    .local v7, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v7, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    const-string v23, "Cookie store not available in HTTP context"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-void

    .line 96
    :cond_2
    const-string v22, "http.cookiespec-registry"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 98
    .local v18, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    if-nez v18, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    const-string v23, "CookieSpec registry not available in HTTP context"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_3
    const-string v22, "http.target_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/http/HttpHost;

    .line 106
    .local v20, "targetHost":Lorg/apache/http/HttpHost;
    if-nez v20, :cond_4

    .line 107
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Target host not specified in HTTP context"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 111
    :cond_4
    const-string v22, "http.connection"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/conn/ManagedClientConnection;

    .line 113
    .local v3, "conn":Lorg/apache/http/conn/ManagedClientConnection;
    if-nez v3, :cond_5

    .line 114
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Client connection not specified in HTTP context"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 117
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v16

    .line 118
    .local v16, "policy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CookieSpec selected: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 123
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v22, p1

    .line 124
    check-cast v22, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v19

    .line 134
    .local v19, "requestURI":Ljava/net/URI;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "hostName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v17

    .line 136
    .local v17, "port":I
    if-gez v17, :cond_7

    .line 137
    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v17

    .line 140
    :cond_7
    new-instance v5, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v23

    move/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v5, v12, v0, v1, v2}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 147
    .local v5, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v6

    .line 149
    .local v6, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .local v8, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v14, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 153
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v6, v4, v5}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cookie "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " match "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 157
    :cond_9
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v5    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v6    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .end local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v12    # "hostName":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v17    # "port":I
    .end local v19    # "requestURI":Ljava/net/URI;
    :cond_a
    :try_start_0
    new-instance v19, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v19    # "requestURI":Ljava/net/URI;
    goto/16 :goto_1

    .line 128
    .end local v19    # "requestURI":Ljava/net/URI;
    :catch_0
    move-exception v9

    .line 129
    .local v9, "ex":Ljava/net/URISyntaxException;
    new-instance v22, Lorg/apache/http/ProtocolException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid request URI: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 161
    .end local v9    # "ex":Ljava/net/URISyntaxException;
    .restart local v5    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local v6    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .restart local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v12    # "hostName":Ljava/lang/String;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v17    # "port":I
    .restart local v19    # "requestURI":Ljava/net/URI;
    :cond_b
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_c

    .line 162
    invoke-interface {v6, v14}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 163
    .local v11, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/Header;

    .line 164
    .local v10, "header":Lorg/apache/http/Header;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3

    .line 168
    .end local v10    # "header":Lorg/apache/http/Header;
    .end local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_c
    invoke-interface {v6}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v21

    .line 169
    .local v21, "ver":I
    if-lez v21, :cond_f

    .line 170
    const/4 v15, 0x0

    .line 171
    .local v15, "needVersionHeader":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 172
    .restart local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 173
    const/4 v15, 0x1

    goto :goto_4

    .line 177
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_e
    if-eqz v15, :cond_f

    .line 178
    invoke-interface {v6}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v10

    .line 179
    .restart local v10    # "header":Lorg/apache/http/Header;
    if-eqz v10, :cond_f

    .line 181
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 188
    .end local v10    # "header":Lorg/apache/http/Header;
    .end local v15    # "needVersionHeader":Z
    :cond_f
    const-string v22, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v22, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
