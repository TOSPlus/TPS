.class public Lgov/nist/javax/sip/stack/DefaultRouter;
.super Ljava/lang/Object;
.source "DefaultRouter.java"

# interfaces
.implements Ljavax/sip/address/Router;


# instance fields
.field private defaultRoute:Ljavax/sip/address/Hop;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljavax/sip/SipStack;Ljava/lang/String;)V
    .locals 3
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "defaultRoute"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 113
    check-cast v1, Lgov/nist/javax/sip/SipStackImpl;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 114
    if-eqz p2, :cond_0

    .line 116
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v1

    new-instance v2, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v2, p2}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .end local p1    # "sipStack":Ljavax/sip/SipStack;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Invalid default route specification - need host:port/transport"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 124
    throw v0
.end method

.method private final createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .locals 7
    .param p1, "sipUri"    # Ljavax/sip/address/SipURI;
    .param p2, "request"    # Ljavax/sip/message/Request;

    .prologue
    .line 291
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "tls"

    .line 293
    .local v3, "transport":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 295
    const-string v5, "Via"

    invoke-interface {p2, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/ViaHeader;

    .line 296
    .local v4, "via":Ljavax/sip/header/ViaHeader;
    invoke-interface {v4}, Ljavax/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v3

    .line 302
    .end local v4    # "via":Ljavax/sip/header/ViaHeader;
    :cond_0
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 303
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v2

    .line 310
    .local v2, "port":I
    :goto_1
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "host":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v0

    .line 313
    .local v0, "addressResolver":Lgov/nist/core/net/AddressResolver;
    new-instance v5, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v5, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v5}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v5

    return-object v5

    .line 291
    .end local v0    # "addressResolver":Lgov/nist/core/net/AddressResolver;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "transport":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 305
    .restart local v3    # "transport":Ljava/lang/String;
    :cond_2
    const-string v5, "tls"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 306
    const/16 v2, 0x13c5

    .restart local v2    # "port":I
    goto :goto_1

    .line 308
    .end local v2    # "port":I
    :cond_3
    const/16 v2, 0x13c4

    .restart local v2    # "port":I
    goto :goto_1

    .line 310
    :cond_4
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 8
    .param p1, "req"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 264
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v4

    .line 265
    .local v4, "routes":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Route;

    .line 266
    .local v1, "first":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    .line 267
    .local v2, "firstUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    .line 270
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 271
    .local v0, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddess(Ljavax/sip/address/URI;)V

    .line 272
    new-instance v3, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v3, v0}, Lgov/nist/javax/sip/header/Route;-><init>(Lgov/nist/javax/sip/address/AddressImpl;)V

    .line 274
    .local v3, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 275
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 276
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post: fixStrictRouting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .locals 11
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v5, p1

    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    .line 165
    .local v5, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v1

    .line 166
    .local v1, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    if-nez v1, :cond_1

    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    .line 251
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    .line 170
    .local v2, "requestURI":Ljavax/sip/address/URI;
    if-nez v2, :cond_2

    .line 171
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Bad message: Null requestURI"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 173
    :cond_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v4

    .line 192
    .local v4, "routes":Lgov/nist/javax/sip/header/RouteList;
    if-eqz v4, :cond_5

    .line 196
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    .line 197
    .local v3, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v7

    .line 198
    .local v7, "uri":Ljavax/sip/address/URI;
    invoke-interface {v7}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v6, v7

    .line 199
    check-cast v6, Ljavax/sip/address/SipURI;

    .line 200
    .local v6, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v8

    if-nez v8, :cond_3

    .line 202
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/DefaultRouter;->fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 203
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 204
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Route post processing fixed strict routing"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 208
    :cond_3
    invoke-direct {p0, v6, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    .line 209
    .local v0, "hop":Ljavax/sip/address/Hop;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 210
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NextHop based on Route:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .end local v6    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_4
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "First Route not a SIP URI"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 217
    .end local v3    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v7    # "uri":Ljavax/sip/address/URI;
    :cond_5
    invoke-interface {v2}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v2

    check-cast v8, Ljavax/sip/address/SipURI;

    invoke-interface {v8}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 219
    check-cast v2, Ljavax/sip/address/SipURI;

    .end local v2    # "requestURI":Ljavax/sip/address/URI;
    invoke-direct {p0, v2, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    .line 220
    .restart local v0    # "hop":Ljavax/sip/address/Hop;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using request URI maddr to route the request = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .restart local v2    # "requestURI":Ljavax/sip/address/URI;
    :cond_6
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    if-eqz v8, :cond_8

    .line 231
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 232
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using outbound proxy to route the request = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 235
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    goto/16 :goto_0

    .line 236
    :cond_8
    invoke-interface {v2}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 237
    check-cast v2, Ljavax/sip/address/SipURI;

    .end local v2    # "requestURI":Ljavax/sip/address/URI;
    invoke-direct {p0, v2, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    .line 238
    .restart local v0    # "hop":Ljavax/sip/address/Hop;
    if-eqz v0, :cond_9

    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 239
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Used request-URI for nextHop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_9
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "returning null hop -- loop detected"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .restart local v2    # "requestURI":Ljavax/sip/address/URI;
    :cond_a
    const-string v8, "Unexpected non-sip URI"

    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-static {v8, v9}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 251
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getNextHops(Ljavax/sip/message/Request;)Ljava/util/ListIterator;
    .locals 3
    .param p1, "request"    # Ljavax/sip/message/Request;

    .prologue
    .line 337
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 338
    .local v1, "llist":Ljava/util/LinkedList;
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 341
    .end local v1    # "llist":Ljava/util/LinkedList;
    :goto_0
    return-object v2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "ex":Ljavax/sip/SipException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOutboundProxy()Ljavax/sip/address/Hop;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    return-object v0
.end method
