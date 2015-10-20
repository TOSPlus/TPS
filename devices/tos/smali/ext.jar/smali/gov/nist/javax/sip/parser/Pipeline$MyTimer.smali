.class Lgov/nist/javax/sip/parser/Pipeline$MyTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/parser/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimer"
.end annotation


# instance fields
.field private isCancelled:Z

.field pipeline:Lgov/nist/javax/sip/parser/Pipeline;

.field final synthetic this$0:Lgov/nist/javax/sip/parser/Pipeline;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Pipeline;Lgov/nist/javax/sip/parser/Pipeline;)V
    .locals 0
    .param p2, "pipeline"    # Lgov/nist/javax/sip/parser/Pipeline;

    .prologue
    .line 63
    iput-object p1, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->this$0:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 64
    iput-object p2, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->pipeline:Lgov/nist/javax/sip/parser/Pipeline;

    .line 65
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;->cancel()Z

    move-result v0

    .line 80
    .local v0, "retval":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->isCancelled:Z

    .line 81
    return v0
.end method

.method protected runTask()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->isCancelled:Z

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->pipeline:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
