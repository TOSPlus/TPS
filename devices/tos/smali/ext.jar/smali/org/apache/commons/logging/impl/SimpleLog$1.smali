.class final Lorg/apache/commons/logging/impl/SimpleLog$1;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 698
    # invokes: Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->access$000()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 700
    .local v0, "threadCL":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 701
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 703
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method
