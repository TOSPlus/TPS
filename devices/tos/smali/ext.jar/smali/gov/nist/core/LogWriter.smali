.class public Lgov/nist/core/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"

# interfaces
.implements Lgov/nist/core/StackLogger;


# static fields
.field private static final TAG:Ljava/lang/String; = "SIP_STACK"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public disableLogging()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    .line 85
    return-void
.end method

.method public enableLogging()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    .line 89
    return-void
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "Android SIP Logger"

    return-object v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return v0
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 71
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 75
    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    return-void
.end method

.method public logFatalError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public logStackTrace()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public logStackTrace(I)V
    .locals 0
    .param p1, "traceLevel"    # I

    .prologue
    .line 45
    return-void
.end method

.method public logTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public logWarning(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public setBuildTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "buildTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public setStackProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "stackProperties"    # Ljava/util/Properties;

    .prologue
    .line 95
    return-void
.end method
