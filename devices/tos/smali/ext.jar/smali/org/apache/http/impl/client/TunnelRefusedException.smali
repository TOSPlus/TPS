.class public Lorg/apache/http/impl/client/TunnelRefusedException;
.super Lorg/apache/http/HttpException;
.source "TunnelRefusedException.java"


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lorg/apache/http/impl/client/TunnelRefusedException;->response:Lorg/apache/http/HttpResponse;

    .line 46
    return-void
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/http/impl/client/TunnelRefusedException;->response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method
