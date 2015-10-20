.class public Lgov/nist/javax/sip/stack/ServerLog;
.super Ljava/lang/Object;
.source "ServerLog.java"

# interfaces
.implements Lgov/nist/core/ServerLogger;


# instance fields
.field private auxInfo:Ljava/lang/String;

.field private configurationProperties:Ljava/util/Properties;

.field private description:Ljava/lang/String;

.field private logContent:Z

.field private logFileName:Ljava/lang/String;

.field private printWriter:Ljava/io/PrintWriter;

.field private sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private stackIpAddress:Ljava/lang/String;

.field protected stackLogger:Lgov/nist/core/StackLogger;

.field protected traceLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/16 v0, 0x10

    iput v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    .line 94
    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 312
    move-object v0, p1

    .line 313
    .local v0, "logInfo":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logInfo(Ljava/lang/String;)V

    .line 320
    :cond_1
    return-void
.end method

.method private logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "sender"    # Z
    .param p5, "callId"    # Ljava/lang/String;
    .param p6, "firstLine"    # Ljava/lang/String;
    .param p7, "status"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "time"    # J
    .param p11, "timestampVal"    # J

    .prologue
    .line 326
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p9

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    move-wide/from16 v10, p11

    invoke-interface/range {v0 .. v11}, Lgov/nist/javax/sip/LogRecordFactory;->createLogRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lgov/nist/javax/sip/LogRecord;

    move-result-object v12

    .line 328
    .local v12, "log":Lgov/nist/javax/sip/LogRecord;
    if-eqz v12, :cond_0

    .line 329
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;)V

    .line 330
    :cond_0
    return-void
.end method

.method private setProperties(Ljava/util/Properties;)V
    .locals 8
    .param p1, "configurationProperties"    # Ljava/util/Properties;

    .prologue
    const/4 v5, 0x0

    .line 97
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 99
    const-string v4, "javax.sip.STACK_NAME"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    .line 100
    const-string v4, "javax.sip.IP_ADDRESS"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    .line 101
    const-string v4, "gov.nist.javax.sip.SERVER_LOG"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    .line 102
    const-string v4, "gov.nist.javax.sip.TRACE_LEVEL"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "logLevel":Ljava/lang/String;
    const-string v4, "gov.nist.javax.sip.LOG_MESSAGE_CONTENT"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "logContent":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    .line 108
    if-eqz v3, :cond_0

    .line 109
    const-string v4, "LOG4J"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 159
    return-void

    :cond_1
    move v4, v5

    .line 106
    goto :goto_0

    .line 137
    :cond_2
    :try_start_0
    const-string v4, "DEBUG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    const/16 v1, 0x20

    .line 149
    .local v1, "ll":I
    :goto_2
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/ServerLog;->setTraceLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    .end local v1    # "ll":I
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ServerLog: WARNING Bad integer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "logging dislabled "

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/ServerLog;->setTraceLevel(I)V

    goto :goto_1

    .line 139
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    const/16 v1, 0x10

    .restart local v1    # "ll":I
    goto :goto_2

    .line 141
    .end local v1    # "ll":I
    :cond_4
    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    const/4 v1, 0x4

    .restart local v1    # "ll":I
    goto :goto_2

    .line 143
    .end local v1    # "ll":I
    :cond_5
    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 144
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "ll":I
    goto :goto_2

    .line 146
    .end local v1    # "ll":I
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .restart local v1    # "ll":I
    goto :goto_2
.end method


# virtual methods
.method public checkLogFile()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 181
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "logFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 190
    const/4 v4, 0x0

    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    .line 194
    :cond_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-nez v4, :cond_0

    .line 195
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v5, "gov.nist.javax.sip.SERVER_LOG_OVERWRITE"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 199
    .local v2, "overwrite":Z
    new-instance v0, Ljava/io/FileWriter;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    invoke-direct {v0, v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 201
    .local v0, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    .line 202
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<!-- Use the  Trace Viewer in src/tools/tracesviewer to view this  trace  \nHere are the stack configuration properties \njavax.sip.IP_ADDRESS= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.IP_ADDRESS"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "javax.sip.STACK_NAME= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.STACK_NAME"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "javax.sip.ROUTER_PATH= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.ROUTER_PATH"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "javax.sip.OUTBOUND_PROXY= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.OUTBOUND_PROXY"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<description\n logDescription=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\n name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.STACK_NAME"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\n auxInfo=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"/>\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 221
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Here are the stack configuration properties \njavax.sip.IP_ADDRESS= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.IP_ADDRESS"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "javax.sip.ROUTER_PATH= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.ROUTER_PATH"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "javax.sip.OUTBOUND_PROXY= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "javax.sip.OUTBOUND_PROXY"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gov.nist.javax.sip.REENTRANT_LISTENER= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "gov.nist.javax.sip.REENTRANT_LISTENER"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gov.nist.javax.sip.THREAD_POOL_SIZE= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v6, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, " ]]> "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "</debug>"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<description\n logDescription=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\n name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\n auxInfo=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"/>\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "<debug>"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "<![CDATA[ "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v0    # "fw":Ljava/io/FileWriter;
    .end local v1    # "logFile":Ljava/io/File;
    .end local v2    # "overwrite":Z
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 199
    .restart local v1    # "logFile":Ljava/io/File;
    .restart local v2    # "overwrite":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 261
    .restart local v0    # "fw":Ljava/io/FileWriter;
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Here are the stack configuration properties \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, " ]]>"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "</debug>"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 266
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<description\n logDescription=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\n name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "<debug>"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "<![CDATA[ "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized closeLogFile()V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceLevel()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    return v0
.end method

.method public logException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 404
    iget v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 406
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 411
    :cond_0
    return-void
.end method

.method public logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "sender"    # Z

    .prologue
    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 395
    return-void
.end method

.method public logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 16
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "sender"    # Z
    .param p6, "time"    # J

    .prologue
    .line 369
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 370
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v14

    check-cast v14, Lgov/nist/javax/sip/header/CallID;

    .line 371
    .local v14, "cid":Lgov/nist/javax/sip/header/CallID;
    const/4 v6, 0x0

    .line 372
    .local v6, "callId":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 373
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v6

    .line 374
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, "firstLine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "encoded":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    .line 377
    .local v9, "tid":Ljava/lang/String;
    const-string v1, "Timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v15

    check-cast v15, Ljavax/sip/header/TimeStampHeader;

    .line 378
    .local v15, "tshdr":Ljavax/sip/header/TimeStampHeader;
    if-nez v15, :cond_2

    const-wide/16 v12, 0x0

    .local v12, "tsval":J
    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v8, p4

    move-wide/from16 v10, p6

    .line 379
    invoke-direct/range {v1 .. v13}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 380
    return-void

    .line 375
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v9    # "tid":Ljava/lang/String;
    .end local v12    # "tsval":J
    .end local v15    # "tshdr":Ljavax/sip/header/TimeStampHeader;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 378
    .restart local v2    # "encoded":Ljava/lang/String;
    .restart local v9    # "tid":Ljava/lang/String;
    .restart local v15    # "tshdr":Ljavax/sip/header/TimeStampHeader;
    :cond_2
    invoke-interface {v15}, Ljavax/sip/header/TimeStampHeader;->getTime()J

    move-result-wide v12

    goto :goto_1
.end method

.method public logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 16
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "sender"    # Z
    .param p5, "time"    # J

    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 343
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v14

    check-cast v14, Lgov/nist/javax/sip/header/CallID;

    .line 346
    .local v14, "cid":Lgov/nist/javax/sip/header/CallID;
    const/4 v6, 0x0

    .line 347
    .local v6, "callId":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 348
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v6

    .line 349
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "firstLine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "inputText":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    .line 352
    .local v9, "tid":Ljava/lang/String;
    const-string v1, "Timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v15

    check-cast v15, Ljavax/sip/header/TimeStampHeader;

    .line 353
    .local v15, "tsHdr":Ljavax/sip/header/TimeStampHeader;
    if-nez v15, :cond_3

    const-wide/16 v12, 0x0

    .line 354
    .local v12, "tsval":J
    :goto_2
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    .line 350
    .end local v2    # "inputText":Ljava/lang/String;
    .end local v9    # "tid":Ljava/lang/String;
    .end local v12    # "tsval":J
    .end local v15    # "tsHdr":Ljavax/sip/header/TimeStampHeader;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 353
    .restart local v2    # "inputText":Ljava/lang/String;
    .restart local v9    # "tid":Ljava/lang/String;
    .restart local v15    # "tsHdr":Ljavax/sip/header/TimeStampHeader;
    :cond_3
    invoke-interface {v15}, Ljavax/sip/header/TimeStampHeader;->getTime()J

    move-result-wide v12

    goto :goto_2
.end method

.method public needsLogging()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuxInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "auxInfo"    # Ljava/lang/String;

    .prologue
    .line 446
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "jsipLoggingLevel"    # I

    .prologue
    .line 464
    return-void
.end method

.method public setLogFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setSipStack(Ljavax/sip/SipStack;)V
    .locals 2
    .param p1, "sipStack"    # Ljavax/sip/SipStack;

    .prologue
    .line 450
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    if-eqz v0, :cond_0

    .line 451
    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .end local p1    # "sipStack":Ljavax/sip/SipStack;
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 452
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    .line 456
    return-void

    .line 455
    .restart local p1    # "sipStack":Ljavax/sip/SipStack;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sipStack must be a SIPTransactionStack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStackIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setStackProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "stackProperties"    # Ljava/util/Properties;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/ServerLog;->setProperties(Ljava/util/Properties;)V

    .line 460
    return-void
.end method

.method public setTraceLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 427
    iput p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    .line 428
    return-void
.end method
