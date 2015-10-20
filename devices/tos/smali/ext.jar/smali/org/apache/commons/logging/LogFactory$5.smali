.class final Lorg/apache/commons/logging/LogFactory$5;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1363
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1364
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 1365
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1366
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1367
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->access$000(Ljava/lang/String;)V

    .line 1376
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
