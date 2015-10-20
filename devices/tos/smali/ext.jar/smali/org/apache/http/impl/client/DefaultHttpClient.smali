.class public Lorg/apache/http/impl/client/DefaultHttpClient;
.super Lorg/apache/http/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    .line 248
    .local v0, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    const-string v1, "Basic"

    new-instance v2, Lorg/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 251
    const-string v1, "Digest"

    new-instance v2, Lorg/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 254
    return-object v0
.end method

.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 11

    .prologue
    .line 174
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 175
    .local v6, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 177
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v9

    const/16 v10, 0x1bb

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 183
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    .line 186
    .local v4, "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    const-string v7, "http.connection-manager.factory-object"

    invoke-interface {v5, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v4, Lorg/apache/http/conn/ClientConnectionManagerFactory;

    .line 188
    .restart local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    if-nez v4, :cond_0

    .line 189
    const-string v7, "http.connection-manager.factory-class-name"

    invoke-interface {v5, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 194
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v4, Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 205
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_0
    if-eqz v4, :cond_1

    .line 206
    invoke-interface {v4, v5, v6}, Lorg/apache/http/conn/ClientConnectionManagerFactory;->newInstance(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    .line 211
    :goto_0
    return-object v2

    .line 195
    .end local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 196
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid class name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 197
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 198
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalAccessError;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 199
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 200
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/InstantiationError;

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    .restart local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_1
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    .end local v2    # "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-direct {v2, v7, v6}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .restart local v2    # "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    goto :goto_0
.end method

.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lorg/apache/http/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookieSpecRegistry;-><init>()V

    .line 261
    .local v0, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    const-string v1, "best-match"

    new-instance v2, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 264
    const-string v1, "compatibility"

    new-instance v2, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 267
    const-string v1, "netscape"

    new-instance v2, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 270
    const-string v1, "rfc2109"

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 273
    const-string v1, "rfc2965"

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 276
    return-object v0
.end method

.method protected createCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method protected createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 218
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    return-object v0
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 5

    .prologue
    .line 139
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 140
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 142
    const-string v3, "ISO-8859-1"

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 151
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 155
    const-string v3, "org.apache.http.client"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    move-result-object v2

    .line 157
    .local v2, "vi":Lorg/apache/http/util/VersionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/http/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "release":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apache-HttpClient/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (java 1.4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 162
    return-object v0

    .line 157
    .end local v1    # "release":Ljava/lang/String;
    :cond_0
    const-string v1, "UNAVAILABLE"

    goto :goto_0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 283
    .local v0, "httpproc":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v1, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 285
    new-instance v1, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 286
    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 288
    new-instance v1, Lorg/apache/http/protocol/RequestConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 289
    new-instance v1, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 290
    new-instance v1, Lorg/apache/http/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 292
    new-instance v1, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 293
    new-instance v1, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 295
    new-instance v1, Lorg/apache/http/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 296
    new-instance v1, Lorg/apache/http/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 297
    return-object v0
.end method

.method protected createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lorg/apache/http/impl/client/DefaultRedirectHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-object v0
.end method

.method protected createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lorg/apache/http/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method
