.class public interface abstract Lorg/apache/http/client/methods/AbortableHttpRequest;
.super Ljava/lang/Object;
.source "AbortableHttpRequest.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
