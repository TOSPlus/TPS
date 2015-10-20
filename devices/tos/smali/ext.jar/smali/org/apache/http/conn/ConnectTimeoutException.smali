.class public Lorg/apache/http/conn/ConnectTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "ConnectTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x42d84b949dece2f5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
