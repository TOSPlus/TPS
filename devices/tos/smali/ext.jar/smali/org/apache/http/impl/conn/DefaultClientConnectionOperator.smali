.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# static fields
.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 90
    return-void
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 19
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Target host must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_1
    if-nez p5, :cond_2

    .line 118
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameters must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be open."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v17

    .line 127
    .local v17, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v18

    .line 130
    .local v18, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v0, v18

    instance-of v5, v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v5, :cond_7

    .line 131
    sget-object v3, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .local v3, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v15, v18

    .line 132
    check-cast v15, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 137
    .local v15, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 139
    .local v10, "addresses":[Ljava/net/InetAddress;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v5, v10

    if-ge v14, v5, :cond_6

    .line 140
    invoke-interface {v3}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 141
    .local v4, "sock":Ljava/net/Socket;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 144
    :try_start_0
    aget-object v5, v10, v14

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v12

    .line 148
    .local v12, "connsock":Ljava/net/Socket;
    if-eq v4, v12, :cond_4

    .line 149
    move-object v4, v12

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 163
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 164
    if-eqz v15, :cond_8

    .line 165
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v15, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v16

    .line 169
    .local v16, "layeredsock":Ljava/net/Socket;
    move-object/from16 v0, v16

    if-eq v0, v4, :cond_5

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 172
    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 192
    .end local v4    # "sock":Ljava/net/Socket;
    .end local v12    # "connsock":Ljava/net/Socket;
    .end local v16    # "layeredsock":Ljava/net/Socket;
    :cond_6
    :goto_2
    return-void

    .line 134
    .end local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v14    # "i":I
    .end local v15    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :cond_7
    move-object/from16 v3, v18

    .line 135
    .restart local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/4 v15, 0x0

    .restart local v15    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto :goto_0

    .line 174
    .restart local v4    # "sock":Ljava/net/Socket;
    .restart local v10    # "addresses":[Ljava/net/InetAddress;
    .restart local v12    # "connsock":Ljava/net/Socket;
    .restart local v14    # "i":I
    :cond_8
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 179
    .end local v12    # "connsock":Ljava/net/Socket;
    :catch_0
    move-exception v13

    .line 180
    .local v13, "ex":Ljava/net/SocketException;
    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    if-ne v14, v5, :cond_a

    .line 181
    instance-of v5, v13, Ljava/net/ConnectException;

    if-eqz v5, :cond_9

    check-cast v13, Ljava/net/ConnectException;

    .end local v13    # "ex":Ljava/net/SocketException;
    move-object v11, v13

    .line 183
    .local v11, "cause":Ljava/net/ConnectException;
    :goto_3
    new-instance v5, Lorg/apache/http/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v11}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v5

    .line 181
    .end local v11    # "cause":Ljava/net/ConnectException;
    .restart local v13    # "ex":Ljava/net/SocketException;
    :cond_9
    new-instance v11, Ljava/net/ConnectException;

    invoke-virtual {v13}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5, v13}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 186
    .end local v13    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v13

    .line 187
    .local v13, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    if-ne v14, v5, :cond_a

    .line 188
    throw v13

    .line 139
    .end local v13    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 260
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 262
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 263
    .local v0, "linger":I
    if-ltz v0, :cond_0

    .line 264
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 267
    :cond_0
    return-void

    .line 264
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 8
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_0
    if-nez p2, :cond_1

    .line 208
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_1
    if-nez p4, :cond_2

    .line 213
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must be open."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_3
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 222
    .local v2, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-nez v4, :cond_4

    .line 223
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target scheme ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") must have layered socket factory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 231
    .local v1, "lsf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v1, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 236
    .local v3, "sock":Ljava/net/Socket;
    invoke-virtual {p0, v3, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 237
    invoke-interface {v1, v3}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 240
    return-void

    .line 233
    .end local v3    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Ljava/net/ConnectException;
    new-instance v4, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v4, p2, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v4
.end method
