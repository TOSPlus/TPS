.class public Lorg/apache/http/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;
.source "HttpHostConnectException.java"


# static fields
.field private static final serialVersionUID:J = -0x2c5515199314e300L


# instance fields
.field private final host:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "cause"    # Ljava/net/ConnectException;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/apache/http/conn/HttpHostConnectException;->host:Lorg/apache/http/HttpHost;

    .line 50
    invoke-virtual {p0, p2}, Lorg/apache/http/conn/HttpHostConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 51
    return-void
.end method


# virtual methods
.method public getHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/http/conn/HttpHostConnectException;->host:Lorg/apache/http/HttpHost;

    return-object v0
.end method
