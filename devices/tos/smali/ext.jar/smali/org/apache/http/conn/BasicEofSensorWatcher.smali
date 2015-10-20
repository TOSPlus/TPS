.class public Lorg/apache/http/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lorg/apache/http/conn/EofSensorWatcher;


# instance fields
.field protected attemptReuse:Z

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ManagedClientConnection;Z)V
    .locals 2
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "reuse"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 73
    iput-boolean p2, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    .line 74
    return-void
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 86
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 91
    const/4 v0, 0x0

    return v0

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 104
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 109
    const/4 v0, 0x0

    return v0

    .line 107
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    throw v0
.end method
