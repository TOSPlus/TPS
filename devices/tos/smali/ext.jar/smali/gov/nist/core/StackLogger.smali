.class public interface abstract Lgov/nist/core/StackLogger;
.super Ljava/lang/Object;
.source "StackLogger.java"

# interfaces
.implements Lgov/nist/core/LogLevels;


# virtual methods
.method public abstract disableLogging()V
.end method

.method public abstract enableLogging()V
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLoggerName()Ljava/lang/String;
.end method

.method public abstract isLoggingEnabled()Z
.end method

.method public abstract isLoggingEnabled(I)Z
.end method

.method public abstract logDebug(Ljava/lang/String;)V
.end method

.method public abstract logError(Ljava/lang/String;)V
.end method

.method public abstract logError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract logException(Ljava/lang/Throwable;)V
.end method

.method public abstract logFatalError(Ljava/lang/String;)V
.end method

.method public abstract logInfo(Ljava/lang/String;)V
.end method

.method public abstract logStackTrace()V
.end method

.method public abstract logStackTrace(I)V
.end method

.method public abstract logTrace(Ljava/lang/String;)V
.end method

.method public abstract logWarning(Ljava/lang/String;)V
.end method

.method public abstract setBuildTimeStamp(Ljava/lang/String;)V
.end method

.method public abstract setStackProperties(Ljava/util/Properties;)V
.end method
