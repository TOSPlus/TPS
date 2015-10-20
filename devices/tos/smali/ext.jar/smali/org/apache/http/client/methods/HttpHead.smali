.class public Lorg/apache/http/client/methods/HttpHead;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpHead.java"


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "HEAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpHead;->setURI(Ljava/net/URI;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpHead;->setURI(Ljava/net/URI;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "HEAD"

    return-object v0
.end method
