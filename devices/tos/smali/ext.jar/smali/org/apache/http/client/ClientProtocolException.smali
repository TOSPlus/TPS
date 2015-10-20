.class public Lorg/apache/http/client/ClientProtocolException;
.super Ljava/io/IOException;
.source "ClientProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x4dab15b84bc19159L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2}, Lorg/apache/http/client/ClientProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/http/client/ClientProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 52
    return-void
.end method
