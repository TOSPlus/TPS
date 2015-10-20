.class public final Lgov/nist/javax/sip/parser/PipelinedMsgParser;
.super Ljava/lang/Object;
.source "PipelinedMsgParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static uid:I


# instance fields
.field private maxMessageSize:I

.field private mythread:Ljava/lang/Thread;

.field private rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

.field protected sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

.field private sizeCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/Pipeline;)V
    .locals 2
    .param p1, "in"    # Lgov/nist/javax/sip/parser/Pipeline;

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V
    .locals 1
    .param p1, "mhandler"    # Lgov/nist/javax/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p3, "maxMsgSize"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V
    .locals 3
    .param p1, "sipMessageListener"    # Lgov/nist/javax/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p3, "debug"    # Z
    .param p4, "maxMessageSize"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>()V

    .line 108
    iput-object p1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    .line 109
    iput-object p2, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    .line 110
    iput p4, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    .line 111
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PipelineThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->getNewUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private static declared-synchronized getNewUid()I
    .locals 3

    .prologue
    .line 90
    const-class v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    monitor-enter v1

    :try_start_0
    sget v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "retval":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 186
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 187
    new-instance v3, Ljava/io/IOException;

    const-string v4, "End of stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_1
    int-to-char v0, v1

    .line 191
    .local v0, "ch":C
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    if-lez v3, :cond_2

    .line 192
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    .line 193
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    if-gtz v3, :cond_2

    .line 194
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Max size exceeded!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_2
    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_3
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 155
    new-instance v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>()V

    .line 157
    .local v1, "p":Lgov/nist/javax/sip/parser/PipelinedMsgParser;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    iput-object v2, v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    .line 158
    iget-object v2, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    iput-object v2, v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    .line 159
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .local v0, "mythread":Ljava/lang/Thread;
    const-string v2, "PipelineThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 161
    return-object v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 361
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processInput()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 213
    iget-object v5, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    .line 219
    .local v5, "inputStream":Lgov/nist/javax/sip/parser/Pipeline;
    :cond_0
    :goto_0
    :try_start_0
    iget v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    iput v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    .line 221
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v4, "inputBuffer":Ljava/lang/StringBuffer;
    sget-boolean v13, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v13, :cond_1

    .line 224
    const-string v13, "Starting parse!"

    invoke-static {v13}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_1
    const/4 v7, 0x0

    .line 231
    .local v7, "line2":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_1
    invoke-direct {p0, v5}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "line1":Ljava/lang/String;
    const-string v13, "\n"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 234
    sget-boolean v13, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v13, :cond_2

    .line 235
    const-string v13, "Discarding blank line. "

    invoke-static {v13}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    .end local v6    # "line1":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 241
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-static {v3}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 242
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    :try_start_3
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 357
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_2
    return-void

    .line 248
    .restart local v6    # "line1":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->startTimer()V

    .line 252
    const-string v13, "Reading Input Stream"

    invoke-static {v13}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    :cond_4
    :try_start_5
    invoke-direct {p0, v5}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 256
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v13

    if-eqz v13, :cond_4

    .line 268
    :try_start_6
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 269
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v12, Lgov/nist/javax/sip/parser/StringMsgParser;

    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    invoke-direct {v12, v13}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    .line 271
    .local v12, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    const/4 v13, 0x0

    iput-boolean v13, v12, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 272
    const/4 v11, 0x0

    .line 275
    .local v11, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_7
    sget-boolean v13, Lgov/nist/core/Debug;->debug:Z

    if-eqz v13, :cond_5

    .line 276
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "About to parse : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 278
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v11

    .line 279
    if-nez v11, :cond_6

    .line 280
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 283
    :catch_1
    move-exception v3

    .line 285
    .local v3, "ex":Ljava/text/ParseException;
    :try_start_8
    const-string v13, "Detected a parse error"

    invoke-static {v13, v3}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 351
    .end local v3    # "ex":Ljava/text/ParseException;
    .end local v4    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v6    # "line1":Ljava/lang/String;
    .end local v7    # "line2":Ljava/lang/String;
    .end local v11    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v12    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catchall_0
    move-exception v13

    .line 352
    :try_start_9
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 351
    :goto_3
    throw v13

    .line 259
    .restart local v4    # "inputBuffer":Ljava/lang/StringBuffer;
    .restart local v6    # "line1":Ljava/lang/String;
    .restart local v7    # "line2":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 260
    .local v3, "ex":Ljava/io/IOException;
    :try_start_a
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 261
    invoke-static {v3}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 352
    :try_start_b
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_2

    .line 353
    :catch_3
    move-exception v2

    .line 354
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "line1":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 289
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "line1":Ljava/lang/String;
    .restart local v11    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v12    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :cond_6
    :try_start_c
    sget-boolean v13, Lgov/nist/core/Debug;->debug:Z

    if-eqz v13, :cond_7

    .line 290
    const-string v13, "Completed parsing message"

    invoke-static {v13}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 292
    :cond_7
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    .line 294
    .local v0, "cl":Lgov/nist/javax/sip/header/ContentLength;
    const/4 v1, 0x0

    .line 295
    .local v1, "contentLength":I
    if-eqz v0, :cond_a

    .line 296
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v1

    .line 301
    :goto_5
    sget-boolean v13, Lgov/nist/core/Debug;->debug:Z

    if-eqz v13, :cond_8

    .line 302
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "contentLength "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 305
    :cond_8
    if-nez v1, :cond_b

    .line 306
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPMessage;->removeContent()V

    .line 340
    :cond_9
    :goto_6
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v13, :cond_0

    .line 342
    :try_start_d
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    invoke-interface {v13, v11}, Lgov/nist/javax/sip/parser/SIPMessageListener;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 343
    :catch_4
    move-exception v3

    .line 352
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 353
    :catch_5
    move-exception v2

    goto :goto_4

    .line 298
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 307
    :cond_b
    :try_start_f
    iget v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    if-eqz v13, :cond_c

    iget v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    if-ge v1, v13, :cond_9

    .line 309
    :cond_c
    new-array v8, v1, [B

    .line 310
    .local v8, "message_body":[B
    const/4 v9, 0x0

    .line 311
    .local v9, "nread":I
    :goto_7
    if-ge v9, v1, :cond_d

    .line 318
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->startTimer()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 321
    sub-int v13, v1, v9

    :try_start_10
    invoke-virtual {v5, v8, v9, v13}, Lgov/nist/javax/sip/parser/Pipeline;->read([BII)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result v10

    .line 323
    .local v10, "readlength":I
    if-lez v10, :cond_e

    .line 324
    add-int/2addr v9, v10

    .line 333
    :try_start_11
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    .line 328
    .end local v10    # "readlength":I
    :catch_6
    move-exception v3

    .line 329
    .local v3, "ex":Ljava/io/IOException;
    :try_start_12
    const-string v13, "Exception Reading Content"

    invoke-static {v13, v3}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 333
    :try_start_13
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 336
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_d
    :goto_8
    invoke-virtual {v11, v8}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([B)V

    goto :goto_6

    .line 333
    :catchall_1
    move-exception v13

    iget-object v14, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v14}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    throw v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 353
    .end local v0    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    .end local v1    # "contentLength":I
    .end local v4    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v6    # "line1":Ljava/lang/String;
    .end local v7    # "line2":Ljava/lang/String;
    .end local v8    # "message_body":[B
    .end local v9    # "nread":I
    .end local v11    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v12    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catch_7
    move-exception v2

    .line 354
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 353
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "ex":Ljava/io/IOException;
    .restart local v4    # "inputBuffer":Ljava/lang/StringBuffer;
    .restart local v7    # "line2":Ljava/lang/String;
    :catch_8
    move-exception v2

    goto/16 :goto_4

    .line 333
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v0    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    .restart local v1    # "contentLength":I
    .restart local v6    # "line1":Ljava/lang/String;
    .restart local v8    # "message_body":[B
    .restart local v9    # "nread":I
    .restart local v10    # "readlength":I
    .restart local v11    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v12    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :cond_e
    :try_start_14
    iget-object v13, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v13}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_8
.end method

.method public setMessageListener(Lgov/nist/javax/sip/parser/SIPMessageListener;)V
    .locals 0
    .param p1, "mlistener"    # Lgov/nist/javax/sip/parser/SIPMessageListener;

    .prologue
    .line 174
    iput-object p1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    .line 175
    return-void
.end method
