.class public Lorg/apache/http/conn/routing/BasicRouteDirector;
.super Ljava/lang/Object;
.source "BasicRouteDirector.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRouteDirector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected directStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 3
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    .prologue
    const/4 v0, -0x1

    .line 109
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v1

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 124
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected firstStep(Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 2
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 3
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    .prologue
    const/4 v2, 0x1

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Planned route may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    const/4 v0, -0x1

    .line 72
    .local v0, "step":I
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/routing/BasicRouteDirector;->firstStep(Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 74
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/routing/BasicRouteDirector;->proxiedStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/routing/BasicRouteDirector;->directStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_0
.end method

.method protected proxiedStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 6
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    .prologue
    const/4 v3, -0x1

    .line 144
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v3

    .line 146
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v2

    .line 149
    .local v2, "phc":I
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v0

    .line 150
    .local v0, "fhc":I
    if-lt v2, v0, :cond_0

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_2

    .line 154
    invoke-interface {p1, v1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-interface {p2, v1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_2
    if-le v2, v0, :cond_3

    .line 159
    const/4 v3, 0x4

    goto :goto_0

    .line 162
    :cond_3
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 167
    const/4 v3, 0x3

    goto :goto_0

    .line 168
    :cond_6
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v4

    if-nez v4, :cond_7

    .line 169
    const/4 v3, 0x5

    goto :goto_0

    .line 174
    :cond_7
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v4

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 177
    const/4 v3, 0x0

    goto :goto_0
.end method
