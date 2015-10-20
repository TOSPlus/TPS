.class public Lorg/apache/http/entity/EntityTemplate;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "EntityTemplate.java"


# instance fields
.field private final contentproducer:Lorg/apache/http/entity/ContentProducer;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/ContentProducer;)V
    .locals 2
    .param p1, "contentproducer"    # Lorg/apache/http/entity/ContentProducer;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content producer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/EntityTemplate;->contentproducer:Lorg/apache/http/entity/ContentProducer;

    .line 58
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Entity template does not implement getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/EntityTemplate;->contentproducer:Lorg/apache/http/entity/ContentProducer;

    invoke-interface {v0, p1}, Lorg/apache/http/entity/ContentProducer;->writeTo(Ljava/io/OutputStream;)V

    .line 77
    return-void
.end method
