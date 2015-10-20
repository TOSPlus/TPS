.class public Lorg/apache/http/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = -0x4b752af9812a7e9cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p0, p2}, Lorg/apache/http/util/ExceptionUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method
