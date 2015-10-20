.class public Lorg/apache/http/client/methods/HttpTrace;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpTrace.java"


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "TRACE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpTrace;->setURI(Ljava/net/URI;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpTrace;->setURI(Ljava/net/URI;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "TRACE"

    return-object v0
.end method
