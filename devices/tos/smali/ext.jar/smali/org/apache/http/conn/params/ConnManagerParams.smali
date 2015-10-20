.class public final Lorg/apache/http/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnManagerPNames;


# static fields
.field private static final DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lorg/apache/http/conn/params/ConnManagerParams$1;

    invoke-direct {v0}, Lorg/apache/http/conn/params/ConnManagerParams$1;-><init>()V

    sput-object v0, Lorg/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/params/ConnPerRoute;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    const-string v1, "http.conn-manager.max-per-route"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/params/ConnPerRoute;

    .line 125
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    if-nez v0, :cond_1

    .line 126
    sget-object v0, Lorg/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 128
    :cond_1
    return-object v0
.end method

.method public static getMaxTotalConnections(Lorg/apache/http/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    const-string v0, "http.conn-manager.max-total"

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTimeout(Lorg/apache/http/params/HttpParams;)J
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const-string v0, "http.conn-manager.timeout"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Lorg/apache/http/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "connPerRoute"    # Lorg/apache/http/conn/params/ConnPerRoute;

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 108
    return-void
.end method

.method public static setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "maxTotalConnections"    # I

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    const-string v0, "http.conn-manager.max-total"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 148
    return-void
.end method

.method public static setTimeout(Lorg/apache/http/params/HttpParams;J)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "timeout"    # J

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 81
    return-void
.end method
