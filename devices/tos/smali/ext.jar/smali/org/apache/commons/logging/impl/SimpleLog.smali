.class public Lorg/apache/commons/logging/impl/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/logging/Log;


# static fields
.field protected static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_FATAL:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_OFF:I = 0x7

.field public static final LOG_LEVEL_TRACE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4

.field protected static dateFormatter:Ljava/text/DateFormat; = null

.field protected static dateTimeFormat:Ljava/lang/String; = null

.field protected static showDateTime:Z = false

.field protected static showLogName:Z = false

.field protected static showShortName:Z = false

.field protected static final simpleLogProps:Ljava/util/Properties;

.field protected static final systemPrefix:Ljava/lang/String; = "org.apache.commons.logging.simplelog."


# instance fields
.field protected currentLogLevel:I

.field protected logName:Ljava/lang/String;

.field private shortLogName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    .line 92
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 97
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 99
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 101
    const-string v2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 103
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 154
    const-string v2, "simplelog.properties"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 155
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :cond_0
    :goto_0
    const-string v2, "org.apache.commons.logging.simplelog.showlogname"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 165
    const-string v2, "org.apache.commons.logging.simplelog.showShortLogname"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 166
    const-string v2, "org.apache.commons.logging.simplelog.showdatetime"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 168
    sget-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v2, :cond_1

    .line 169
    const-string v2, "org.apache.commons.logging.simplelog.dateTimeFormat"

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 172
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :cond_1
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 176
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    goto :goto_1

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 206
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "lvl":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 212
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 217
    :cond_0
    if-nez v1, :cond_1

    .line 218
    const-string v2, "org.apache.commons.logging.simplelog.defaultlog"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_1
    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 239
    :cond_2
    :goto_1
    return-void

    .line 223
    :cond_3
    const-string v2, "trace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 225
    :cond_4
    const-string v2, "debug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 227
    :cond_5
    const-string v2, "info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 228
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 229
    :cond_6
    const-string v2, "warn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 230
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 231
    :cond_7
    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 232
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 233
    :cond_8
    const-string v2, "fatal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 234
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 235
    :cond_9
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Z

    .prologue
    .line 145
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "dephault":Z
    :goto_0
    return p1

    .restart local p1    # "dephault":Z
    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 7

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 640
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 643
    :try_start_0
    const-class v5, Ljava/lang/Thread;

    const-string v6, "getContextClassLoader"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 648
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 685
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 686
    const-class v4, Lorg/apache/commons/logging/impl/SimpleLog;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 690
    :cond_1
    return-object v1

    .line 653
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 670
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/SecurityException;

    if-nez v4, :cond_0

    .line 675
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v5, "Unexpected InvocationTargetException"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 679
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 651
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 695
    new-instance v0, Lorg/apache/commons/logging/impl/SimpleLog$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 133
    .restart local v0    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "dephault":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "dephault":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public final debug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 371
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 374
    :cond_0
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x2

    .line 387
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 390
    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x5

    .line 495
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 498
    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x5

    .line 511
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 514
    :cond_0
    return-void
.end method

.method public final fatal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x6

    .line 526
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 529
    :cond_0
    return-void
.end method

.method public final fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x6

    .line 542
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 545
    :cond_0
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    return v0
.end method

.method public final info(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    .line 433
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 436
    :cond_0
    return-void
.end method

.method public final info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x3

    .line 449
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 452
    :cond_0
    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isFatalEnabled()Z
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected isLevelEnabled(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 355
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTraceEnabled()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v3, :cond_0

    .line 283
    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 298
    :goto_0
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    if-eqz v3, :cond_4

    .line 299
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 301
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 302
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 305
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    :cond_2
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    if-eqz p3, :cond_3

    .line 315
    const-string v3, " <"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    new-instance v2, Ljava/io/StringWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 320
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 321
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 323
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "sw":Ljava/io/StringWriter;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->write(Ljava/lang/StringBuffer;)V

    .line 329
    return-void

    .line 289
    :pswitch_0
    const-string v3, "[TRACE] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 290
    :pswitch_1
    const-string v3, "[DEBUG] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 291
    :pswitch_2
    const-string v3, "[INFO] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 292
    :pswitch_3
    const-string v3, "[WARN] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 293
    :pswitch_4
    const-string v3, "[ERROR] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 294
    :pswitch_5
    const-string v3, "[FATAL] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 306
    :cond_4
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "currentLogLevel"    # I

    .prologue
    .line 251
    iput p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    .line 253
    return-void
.end method

.method public final trace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 402
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 405
    :cond_0
    return-void
.end method

.method public final trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 418
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 421
    :cond_0
    return-void
.end method

.method public final warn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x4

    .line 464
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 467
    :cond_0
    return-void
.end method

.method public final warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x4

    .line 480
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 483
    :cond_0
    return-void
.end method

.method protected write(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 342
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    return-void
.end method
