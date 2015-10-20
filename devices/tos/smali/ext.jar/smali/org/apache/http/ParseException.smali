.class public Lorg/apache/http/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = -0x6527170a84993b1aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method
