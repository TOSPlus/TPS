.class public interface abstract Lgov/nist/core/ServerLogger;
.super Ljava/lang/Object;
.source "ServerLogger.java"

# interfaces
.implements Lgov/nist/core/LogLevels;


# virtual methods
.method public abstract closeLogFile()V
.end method

.method public abstract logException(Ljava/lang/Exception;)V
.end method

.method public abstract logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
.end method

.method public abstract logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V
.end method

.method public abstract setSipStack(Ljavax/sip/SipStack;)V
.end method

.method public abstract setStackProperties(Ljava/util/Properties;)V
.end method
