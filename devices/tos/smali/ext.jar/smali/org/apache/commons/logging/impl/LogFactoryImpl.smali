.class public Lorg/apache/commons/logging/impl/LogFactoryImpl;
.super Lorg/apache/commons/logging/LogFactory;
.source "LogFactoryImpl.java"


# static fields
.field public static final ALLOW_FLAWED_CONTEXT_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedContext"

.field public static final ALLOW_FLAWED_DISCOVERY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedDiscovery"

.field public static final ALLOW_FLAWED_HIERARCHY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedHierarchy"

.field private static final LOGGING_IMPL_JDK14_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk14Logger"

.field private static final LOGGING_IMPL_LOG4J_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Log4JLogger"

.field private static final LOGGING_IMPL_LUMBERJACK_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

.field private static final LOGGING_IMPL_SIMPLE_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.SimpleLog"

.field public static final LOG_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log"

.field protected static final LOG_PROPERTY_OLD:Ljava/lang/String; = "org.apache.commons.logging.log"

.field private static final PKG_IMPL:Ljava/lang/String; = "org.apache.commons.logging.impl."

.field private static final PKG_LEN:I

.field private static final classesToDiscover:[Ljava/lang/String;


# instance fields
.field private allowFlawedContext:Z

.field private allowFlawedDiscovery:Z

.field private allowFlawedHierarchy:Z

.field protected attributes:Ljava/util/Hashtable;

.field private diagnosticPrefix:Ljava/lang/String;

.field protected instances:Ljava/util/Hashtable;

.field private logClassName:Ljava/lang/String;

.field protected logConstructor:Ljava/lang/reflect/Constructor;

.field protected logConstructorSignature:[Ljava/lang/Class;

.field protected logMethod:Ljava/lang/reflect/Method;

.field protected logMethodSignature:[Ljava/lang/Class;

.field private useTCCL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-string v0, "org.apache.commons.logging.impl."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.apache.commons.logging.impl.Log4JLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.apache.commons.logging.impl.SimpleLog"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    .line 187
    iput-boolean v2, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 198
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 205
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    .line 221
    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 227
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    .line 235
    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 241
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Lorg/apache/commons/logging/LogFactory;

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    .line 92
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initDiagnostics()V

    .line 93
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "Instance created."

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method private createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;
    .locals 20
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "affectState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 963
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 964
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Attempting to instantiate \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 967
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p2, v12, v17

    .line 968
    .local v12, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 969
    .local v7, "logAdapter":Lorg/apache/commons/logging/Log;
    const/4 v4, 0x0

    .line 971
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x0

    .line 972
    .local v8, "logAdapterClass":Ljava/lang/Class;
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBaseClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 977
    .local v5, "currentCL":Ljava/lang/ClassLoader;
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Trying to load \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' from classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 983
    :try_start_0
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 989
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x2e

    const/16 v19, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".class"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 990
    .local v13, "resourceName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 991
    invoke-virtual {v5, v13}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v16

    .line 996
    .local v16, "url":Ljava/net/URL;
    :goto_1
    if-nez v16, :cond_5

    .line 997
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Class \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] cannot be found."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 1003
    .end local v13    # "resourceName":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    .line 1005
    .local v3, "c":Ljava/lang/Class;
    const/16 v17, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    .line 1039
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1040
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1046
    .local v10, "o":Ljava/lang/Object;
    instance-of v0, v10, Lorg/apache/commons/logging/Log;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1047
    move-object v8, v3

    .line 1048
    move-object v0, v10

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 1113
    .end local v3    # "c":Ljava/lang/Class;
    .end local v10    # "o":Ljava/lang/Object;
    :cond_2
    :goto_4
    if-eqz v7, :cond_3

    if-eqz p3, :cond_3

    .line 1115
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    .line 1116
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 1120
    :try_start_3
    const-string v17, "setLogFactory"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 1122
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Found method setLogFactory(LogFactory) in \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 1133
    :goto_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' from classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " has been selected for use."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1139
    :cond_3
    return-object v7

    .line 993
    .restart local v13    # "resourceName":Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".class"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v16

    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_1

    .line 999
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Class \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' was found at \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_2

    .line 1063
    .end local v13    # "resourceName":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 1069
    .local v6, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1070
    .local v9, "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' is missing dependencies when loaded via classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1006
    .end local v6    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v9    # "msg":Ljava/lang/String;
    .restart local v3    # "c":Ljava/lang/Class;
    :catch_1
    move-exception v11

    .line 1010
    .local v11, "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :try_start_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1011
    .restart local v9    # "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' is not available via classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1026
    :try_start_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v3

    goto/16 :goto_3

    .line 1027
    :catch_2
    move-exception v14

    .line 1029
    .local v14, "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :try_start_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1030
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' is not available via the LogFactoryImpl class classloader: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_4

    .line 1078
    .end local v3    # "c":Ljava/lang/Class;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v11    # "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    .end local v14    # "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v6

    .line 1085
    .local v6, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1086
    .restart local v9    # "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' is unable to initialize itself when loaded via classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1062
    .end local v6    # "e":Ljava/lang/ExceptionInInitializerError;
    .end local v9    # "msg":Ljava/lang/String;
    .restart local v3    # "c":Ljava/lang/Class;
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 1105
    .end local v3    # "c":Ljava/lang/Class;
    .end local v10    # "o":Ljava/lang/Object;
    :goto_6
    if-eqz v5, :cond_2

    .line 1110
    invoke-virtual {v5}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    goto/16 :goto_0

    .line 1094
    :catch_4
    move-exception v6

    .line 1097
    .local v6, "e":Lorg/apache/commons/logging/LogConfigurationException;
    throw v6

    .line 1098
    .end local v6    # "e":Lorg/apache/commons/logging/LogConfigurationException;
    :catch_5
    move-exception v15

    .line 1102
    .local v15, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v15}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1124
    .end local v15    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v15

    .line 1125
    .restart local v15    # "t":Ljava/lang/Throwable;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 1126
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[INFO] \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' from classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " does not declare optional method "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "setLogFactory(LogFactory)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 8
    .param p1, "logCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 765
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 766
    const-string v5, "Discovering a Log implementation..."

    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 769
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initConfiguration()V

    .line 771
    const/4 v2, 0x0

    .line 774
    .local v2, "result":Lorg/apache/commons/logging/Log;
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->findUserSpecifiedLogClassName()Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "specifiedLogClassName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 777
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to load user-specified log class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 782
    :cond_1
    invoke-direct {p0, v4, p1, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 785
    if-nez v2, :cond_3

    .line 786
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "User-specified log class \'"

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 787
    .local v1, "messageBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const-string v5, "\' cannot be found or is not useable."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    if-eqz v4, :cond_2

    .line 793
    const-string v5, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v5, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v5, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v5, "org.apache.commons.logging.impl.SimpleLog"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_2
    new-instance v5, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "messageBuffer":Ljava/lang/StringBuffer;
    :cond_3
    move-object v3, v2

    .line 846
    .end local v2    # "result":Lorg/apache/commons/logging/Log;
    .local v3, "result":Lorg/apache/commons/logging/Log;
    :goto_0
    return-object v3

    .line 832
    .end local v3    # "result":Lorg/apache/commons/logging/Log;
    .restart local v2    # "result":Lorg/apache/commons/logging/Log;
    :cond_4
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 833
    const-string v5, "No user-specified Log implementation; performing discovery using the standard supported logging implementations..."

    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 837
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_6

    if-nez v2, :cond_6

    .line 838
    sget-object v5, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {p0, v5, p1, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 841
    :cond_6
    if-nez v2, :cond_7

    .line 842
    new-instance v5, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v6, "No suitable Log implementation"

    invoke-direct {v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    move-object v3, v2

    .line 846
    .end local v2    # "result":Lorg/apache/commons/logging/Log;
    .restart local v3    # "result":Lorg/apache/commons/logging/Log;
    goto :goto_0
.end method

.method private findUserSpecifiedLogClassName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 885
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 886
    const-string v2, "Trying to get log class from attribute \'org.apache.commons.logging.Log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 888
    :cond_0
    const-string v2, "org.apache.commons.logging.Log"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 890
    .local v1, "specifiedClass":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 891
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    const-string v2, "Trying to get log class from attribute \'org.apache.commons.logging.log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 895
    :cond_1
    const-string v2, "org.apache.commons.logging.log"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "specifiedClass":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 898
    .restart local v1    # "specifiedClass":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    .line 899
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 900
    const-string v2, "Trying to get log class from system property \'org.apache.commons.logging.Log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 904
    :cond_3
    :try_start_0
    const-string v2, "org.apache.commons.logging.Log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 913
    :cond_4
    :goto_0
    if-nez v1, :cond_6

    .line 914
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 915
    const-string v2, "Trying to get log class from system property \'org.apache.commons.logging.log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 919
    :cond_5
    :try_start_1
    const-string v2, "org.apache.commons.logging.log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 931
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 932
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_7
    return-object v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No access allowed to system property \'org.apache.commons.logging.Log\' - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_0

    .line 920
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 921
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No access allowed to system property \'org.apache.commons.logging.log\' - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getBaseClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 1162
    const-class v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;

    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1164
    .local v2, "thisClassLoader":Ljava/lang/ClassLoader;
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    if-nez v3, :cond_0

    .line 1221
    .end local v2    # "thisClassLoader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v2

    .line 1168
    .restart local v2    # "thisClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1170
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1173
    .local v0, "baseClassLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    .line 1178
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    if-eqz v3, :cond_2

    .line 1179
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1180
    const-string v3, "[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl."

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    :cond_1
    move-object v2, v1

    .line 1188
    goto :goto_0

    .line 1191
    :cond_2
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v4, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    invoke-direct {v3, v4}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1198
    :cond_3
    if-eq v0, v1, :cond_4

    .line 1204
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    if-eqz v3, :cond_5

    .line 1205
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1206
    const-string v3, "Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly."

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    :cond_4
    move-object v2, v0

    .line 1221
    goto :goto_0

    .line 1214
    :cond_5
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v4, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    invoke-direct {v3, v4}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getBooleanConfiguration(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dflt"    # Z

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 736
    .end local p2    # "dflt":Z
    :goto_0
    return p2

    .restart local p2    # "dflt":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 444
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 687
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Trying to get configuration for item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 691
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 692
    .local v2, "valueObj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 693
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Found LogFactory attribute ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 696
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    :cond_2
    :goto_0
    return-object v1

    .line 699
    :cond_3
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] No LogFactory attribute found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 704
    :cond_4
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 706
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Found system property ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 715
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Security prevented reading system property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 721
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5
    :goto_1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] No configuration defined for item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 725
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 712
    .restart local v1    # "value":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] No system property found for property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "c1"    # Ljava/lang/ClassLoader;
    .param p2, "c2"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1237
    if-nez p1, :cond_1

    .line 1261
    .end local p2    # "c2":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-object p2

    .line 1240
    .restart local p2    # "c2":Ljava/lang/ClassLoader;
    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    .line 1241
    goto :goto_0

    .line 1246
    :cond_2
    move-object v0, p1

    .line 1247
    .local v0, "current":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_4

    .line 1248
    if-ne v0, p2, :cond_3

    move-object p2, p1

    .line 1249
    goto :goto_0

    .line 1250
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 1254
    :cond_4
    move-object v0, p2

    .line 1255
    :goto_2
    if-eqz v0, :cond_5

    .line 1256
    if-eq v0, p1, :cond_0

    .line 1258
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    .line 1261
    :cond_5
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "discoveryFlaw"    # Ljava/lang/Throwable;

    .prologue
    .line 1283
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate Log \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1290
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    if-nez v0, :cond_1

    .line 1291
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v0, p3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1293
    :cond_1
    return-void
.end method

.method private handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 9
    .param p1, "badClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "badClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 1325
    const/4 v1, 0x0

    .line 1326
    .local v1, "implementsLog":Z
    const-class v7, Lorg/apache/commons/logging/Log;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1327
    .local v4, "logInterfaceName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1328
    .local v2, "interfaces":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_0

    .line 1329
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1330
    const/4 v1, 0x1

    .line 1335
    :cond_0
    if-eqz v1, :cond_6

    .line 1338
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1340
    :try_start_0
    const-class v7, Lorg/apache/commons/logging/Log;

    invoke-static {v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1341
    .local v3, "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' was found in classloader "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". It is bound to a Log interface which is not"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the one loaded from classloader "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    .end local v3    # "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    if-nez v7, :cond_4

    .line 1356
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1357
    .local v5, "msg":Ljava/lang/StringBuffer;
    const-string v7, "Terminating logging for this context "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    const-string v7, "due to bad log hierarchy. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    const-string v7, "You have more than one version of \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    const-class v7, Lorg/apache/commons/logging/Log;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1361
    const-string v7, "\' visible."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1362
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1363
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1365
    :cond_2
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1328
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1348
    :catch_0
    move-exception v6

    .line 1349
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while trying to output diagnostics about bad class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_1

    .line 1368
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1369
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1370
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string v7, "Warning: bad log hierarchy. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1371
    const-string v7, "You have more than one version of \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1372
    const-class v7, Lorg/apache/commons/logging/Log;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1373
    const-string v7, "\' visible."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1374
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1399
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_5
    :goto_2
    return-void

    .line 1378
    :cond_6
    iget-boolean v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    if-nez v7, :cond_8

    .line 1379
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1380
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string v7, "Terminating logging for this context. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    const-string v7, "Log class \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1382
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1383
    const-string v7, "\' does not implement the Log interface."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1384
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1385
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1388
    :cond_7
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1391
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_8
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1392
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1393
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string v7, "[WARNING] Log class \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1395
    const-string v7, "\' does not implement the Log interface."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1396
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "messageBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 859
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    const/4 v1, 0x1

    sget v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    add-int/lit8 v5, v0, 0x5

    move-object v0, p2

    move-object v3, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const-string v0, " Did you mean \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    const-string v0, "\'?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private initConfiguration()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 747
    const-string v0, "org.apache.commons.logging.Log.allowFlawedContext"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    .line 748
    const-string v0, "org.apache.commons.logging.Log.allowFlawedDiscovery"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    .line 749
    const-string v0, "org.apache.commons.logging.Log.allowFlawedHierarchy"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    .line 750
    return-void
.end method

.method private initDiagnostics()V
    .locals 6

    .prologue
    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 473
    .local v2, "clazz":Ljava/lang/Class;
    invoke-static {v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 476
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 477
    :try_start_0
    const-string v1, "BOOTLOADER"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .local v1, "classLoaderName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LogFactoryImpl@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    .line 485
    return-void

    .line 479
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_0

    .line 481
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 482
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v1, "UNKNOWN"

    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_0
.end method

.method protected static isDiagnosticsEnabled()Z
    .locals 1

    .prologue
    .line 434
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    return v0
.end method

.method private isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 651
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 656
    .local v1, "log":Lorg/apache/commons/logging/Log;
    if-nez v1, :cond_2

    .line 657
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 671
    .end local v1    # "log":Lorg/apache/commons/logging/Log;
    :cond_1
    :goto_0
    return v2

    .line 662
    .restart local v1    # "log":Lorg/apache/commons/logging/Log;
    :cond_2
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 667
    .end local v1    # "log":Lorg/apache/commons/logging/Log;
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Lorg/apache/commons/logging/LogConfigurationException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging system \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is available but not useable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 282
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 283
    .local v2, "names":Ljava/util/Vector;
    iget-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 284
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 288
    .local v3, "results":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 289
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_1
    return-object v3
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    .line 332
    .local v0, "instance":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    return-object v0
.end method

.method protected getLogClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 514
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLogConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method protected isJdk13LumberjackAvailable()Z
    .locals 2

    .prologue
    .line 552
    const-string v0, "Jdk13Lumberjack"

    const-string v1, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isJdk14Available()Z
    .locals 2

    .prologue
    .line 568
    const-string v0, "Jdk14"

    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isLog4JAvailable()Z
    .locals 2

    .prologue
    .line 581
    const-string v0, "Log4J"

    const-string v1, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected logDiagnostic(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logRawDiagnostic(Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method

.method protected newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 598
    const/4 v3, 0x0

    .line 600
    .local v3, "instance":Lorg/apache/commons/logging/Log;
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-nez v7, :cond_1

    .line 601
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    .line 608
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_0

    .line 609
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v5, v7

    .line 610
    .local v5, "params":[Ljava/lang/Object;
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .end local v5    # "params":[Ljava/lang/Object;
    :cond_0
    return-object v3

    .line 604
    :cond_1
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    .line 605
    .restart local v5    # "params":[Ljava/lang/Object;
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v3, v0
    :try_end_0
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 615
    .end local v5    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 620
    .local v4, "lce":Lorg/apache/commons/logging/LogConfigurationException;
    throw v4

    .line 622
    .end local v4    # "lce":Lorg/apache/commons/logging/LogConfigurationException;
    :catch_1
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 626
    .local v1, "c":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 627
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v7, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 629
    :cond_2
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v7, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 631
    .end local v1    # "c":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 634
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v7, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public release()V
    .locals 1

    .prologue
    .line 351
    const-string v0, "Releasing all known loggers"

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 353
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "setAttribute: call too late; configuration already performed."

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 399
    :cond_0
    if-nez p2, :cond_2

    .line 400
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :goto_0
    const-string v0, "use_tccl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 409
    :cond_1
    return-void

    .line 402
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
