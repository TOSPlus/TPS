.class public Lorg/apache/http/client/NonRepeatableRequestException;
.super Lorg/apache/http/ProtocolException;
.source "NonRepeatableRequestException.java"


# static fields
.field private static final serialVersionUID:J = 0x125c1cf89b2bea0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/http/ProtocolException;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method
