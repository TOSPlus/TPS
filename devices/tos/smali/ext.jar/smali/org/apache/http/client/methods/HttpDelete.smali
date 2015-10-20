.class public Lorg/apache/http/client/methods/HttpDelete;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpDelete.java"


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "DELETE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpDelete;->setURI(Ljava/net/URI;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpDelete;->setURI(Ljava/net/URI;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "DELETE"

    return-object v0
.end method
