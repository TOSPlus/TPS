.class public Lorg/apache/http/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lorg/apache/http/HttpConnectionMetrics;


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/HashMap;

.field private final outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V
    .locals 2
    .param p1, "inTransportMetric"    # Lorg/apache/http/io/HttpTransportMetrics;
    .param p2, "outTransportMetric"    # Lorg/apache/http/io/HttpTransportMetrics;

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 51
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 62
    iput-object p1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    .line 63
    iput-object p2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    .line 64
    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "value":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    .line 106
    const-string v2, "http.request-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 124
    :cond_1
    :goto_0
    return-object v0

    .line 108
    :cond_2
    const-string v2, "http.response-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .local v0, "value":Ljava/lang/Long;
    goto :goto_0

    .line 110
    .end local v0    # "value":Ljava/lang/Long;
    :cond_3
    const-string v2, "http.received-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v2, :cond_4

    .line 112
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v1}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_5
    const-string v2, "http.sent-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v2, :cond_6

    .line 118
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v1}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 120
    goto :goto_0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    .line 72
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getRequestCount()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public incrementRequestCount()V
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 90
    return-void
.end method

.method public incrementResponseCount()V
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 98
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 135
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    .line 141
    :cond_1
    iput-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 142
    iput-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 144
    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "metricName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method
