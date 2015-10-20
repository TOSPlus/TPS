.class public final Lorg/apache/http/conn/params/ConnPerRouteBean;
.super Ljava/lang/Object;
.source "ConnPerRouteBean.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS_PER_ROUTE:I = 0x2


# instance fields
.field private defaultMax:I

.field private final maxPerHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "defaultMax"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public getDefaultMax()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    return v0
.end method

.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 3
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP route may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 99
    .local v0, "max":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    goto :goto_0
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 74
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput p1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    .line 79
    return-void
.end method

.method public setMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "max"    # I

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public setMaxForRoutes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method
