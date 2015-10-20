.class public Lorg/apache/http/impl/cookie/DateParseException;
.super Ljava/lang/Exception;
.source "DateParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x3d4ecf8515d0d72aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
