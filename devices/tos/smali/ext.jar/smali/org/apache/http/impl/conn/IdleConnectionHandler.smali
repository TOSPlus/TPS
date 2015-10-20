.class public Lorg/apache/http/impl/conn/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    }
.end annotation


# instance fields
.field private final connectionToTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/HttpConnection;",
            "Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    .line 63
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/http/HttpConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;
    .param p2, "validDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 77
    .local v6, "timeAdded":Ljava/lang/Long;
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding connection at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 81
    :cond_0
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    new-instance v0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 10

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 148
    .local v3, "now":J
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking for expired connections, now: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 152
    :cond_0
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 157
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 158
    .local v5, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
    invoke-static {v5}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gtz v6, :cond_1

    .line 159
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing connection, expired @: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
    invoke-static {v5}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 162
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 164
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "I/O error closing connection"

    invoke-interface {v6, v7, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    .end local v0    # "conn":Lorg/apache/http/HttpConnection;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_3
    return-void
.end method

.method public closeIdleConnections(J)V
    .locals 10
    .param p1, "idleTime"    # J

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v4, v7, p1

    .line 120
    .local v4, "idleTimeout":J
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking for connections, idleTimeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 124
    :cond_0
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 129
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 130
    .local v6, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J
    invoke-static {v6}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$100(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 131
    .local v2, "connectionTime":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-gtz v7, :cond_1

    .line 132
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Closing connection, connection time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 135
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 137
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "ex":Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "I/O error closing connection"

    invoke-interface {v7, v8, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    .end local v0    # "conn":Lorg/apache/http/HttpConnection;
    .end local v2    # "connectionTime":Ljava/lang/Long;
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_3
    return-void
.end method

.method public remove(Lorg/apache/http/HttpConnection;)Z
    .locals 6
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 94
    .local v0, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    if-nez v0, :cond_1

    .line 95
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Removing a connection that never existed!"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 98
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
    invoke-static {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    return-void
.end method
