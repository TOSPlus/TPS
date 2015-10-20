.class public interface abstract Lorg/apache/http/client/RedirectHandler;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# virtual methods
.method public abstract getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation
.end method

.method public abstract isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
.end method
