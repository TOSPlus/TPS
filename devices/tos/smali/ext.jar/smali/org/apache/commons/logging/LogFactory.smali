.class public abstract Lorg/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field public static final DIAGNOSTICS_DEST_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.diagnostics.dest"

.field public static final FACTORY_DEFAULT:Ljava/lang/String; = "org.apache.commons.logging.impl.LogFactoryImpl"

.field public static final FACTORY_PROPERTIES:Ljava/lang/String; = "commons-logging.properties"

.field public static final FACTORY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory"

.field public static final HASHTABLE_IMPLEMENTATION_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory.HashtableImpl"

.field public static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field protected static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.commons.logging.LogFactory"

.field public static final TCCL_KEY:Ljava/lang/String; = "use_tccl"

.field private static final WEAK_HASHTABLE_CLASSNAME:Ljava/lang/String; = "org.apache.commons.logging.impl.WeakHashtable"

.field private static diagnosticPrefix:Ljava/lang/String;

.field private static diagnosticsStream:Ljava/io/PrintStream;

.field protected static factories:Ljava/util/Hashtable;

.field protected static nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

.field private static thisClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 284
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 300
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 1732
    const-class v0, Lorg/apache/commons/logging/LogFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 1733
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->initDiagnostics()V

    .line 1734
    const-class v0, Lorg/apache/commons/logging/LogFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logClassLoaderEnvironment(Ljava/lang/Class;)V

    .line 1735
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->createFactoryStore()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 1736
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    const-string v0, "BOOTSTRAP COMPLETED"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1739
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    return-void
.end method

.method private static cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "factory"    # Lorg/apache/commons/logging/LogFactory;

    .prologue
    .line 939
    if-eqz p1, :cond_0

    .line 940
    if-nez p0, :cond_1

    .line 941
    sput-object p1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected static createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 7
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1062
    const/4 v3, 0x0

    .line 1064
    .local v3, "logFactoryClass":Ljava/lang/Class;
    if-eqz p1, :cond_7

    .line 1070
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1071
    const-class v5, Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1072
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1073
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1099
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/logging/LogFactory;

    .line 1215
    :goto_1
    return-object v5

    .line 1089
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Factory class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loaded from classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not extend \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as loaded by this classloader."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1095
    const-string v5, "[BAD CL TREE] "

    invoke-static {v5, p1}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    sget-object v5, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v5, :cond_7

    .line 1104
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to locate any class called \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' via classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1109
    :cond_2
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1202
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1205
    const-string v5, "Unable to create LogFactory instance."

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1207
    :cond_3
    if-eqz v3, :cond_9

    const-class v5, Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1210
    new-instance v5, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v6, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    invoke-direct {v5, v6, v0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1112
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1113
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :try_start_2
    sget-object v5, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v5, :cond_7

    .line 1115
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' cannot be loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " via classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - it depends on some other class that cannot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " be found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1122
    :cond_4
    throw v0

    .line 1125
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v5, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v5, :cond_7

    .line 1132
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->implementsLogFactory(Ljava/lang/Class;)Z

    move-result v2

    .line 1139
    .local v2, "implementsLogFactory":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The application has specified that a custom LogFactory implementation should be used but Class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' cannot be converted to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1143
    .local v4, "msg":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "The conflict is caused by the presence of multiple LogFactory classes in incompatible classloaders. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Background can be found in http://jakarta.apache.org/commons/logging/tech.html. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "If you have not explicitly specified a custom LogFactory then it is likely that "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "the container has set one without your knowledge. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "In this case, consider using the commons-logging-adapters.jar file or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "specifying the standard LogFactory from the command line. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1153
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Help can be found @http://jakarta.apache.org/commons/logging/troubleshooting.html."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1156
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1159
    :cond_5
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v1, "ex":Ljava/lang/ClassCastException;
    throw v1

    .line 1151
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Please check the custom implementation. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1194
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "implementsLogFactory":Z
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load factory class via classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - trying the classloader associated with this LogFactory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1200
    :cond_8
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1201
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/logging/LogFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    :cond_9
    new-instance v5, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v5, v0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private static final createFactoryStore()Ljava/util/Hashtable;
    .locals 7

    .prologue
    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "result":Ljava/util/Hashtable;
    const-string v5, "org.apache.commons.logging.LogFactory.HashtableImpl"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "storeImplementationClass":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 322
    const-string v3, "org.apache.commons.logging.impl.WeakHashtable"

    .line 325
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 326
    .local v1, "implementationClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Hashtable;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "implementationClass":Ljava/lang/Class;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 343
    new-instance v2, Ljava/util/Hashtable;

    .end local v2    # "result":Ljava/util/Hashtable;
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 345
    .restart local v2    # "result":Ljava/util/Hashtable;
    :cond_2
    return-object v2

    .line 328
    :catch_0
    move-exception v4

    .line 330
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "org.apache.commons.logging.impl.WeakHashtable"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 332
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 334
    const-string v5, "[ERROR] LogFactory: Load of custom hashtable failed"

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "[ERROR] LogFactory: Load of custom hashtable failed"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static directGetContextClassLoader()Ljava/lang/ClassLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 831
    const/4 v1, 0x0

    .line 835
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v5, Ljava/lang/Thread;

    const-string v6, "getContextClassLoader"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 840
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
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 890
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v1

    .line 842
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 843
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 871
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 873
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-class v4, Lorg/apache/commons/logging/LogFactory;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 845
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v2

    .line 862
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/SecurityException;

    if-nez v4, :cond_0

    .line 867
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v5, "Unexpected InvocationTargetException"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private static getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 2
    .param p0, "contextClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 911
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    if-nez p0, :cond_0

    .line 916
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 921
    :goto_0
    return-object v0

    .line 918
    :cond_0
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "factory":Lorg/apache/commons/logging/LogFactory;
    check-cast v0, Lorg/apache/commons/logging/LogFactory;

    .restart local v0    # "factory":Lorg/apache/commons/logging/LogFactory;
    goto :goto_0
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 766
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get classloader for class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' due to security restrictions - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 773
    :cond_0
    throw v0
.end method

.method private static final getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 14
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1404
    const/4 v8, 0x0

    .line 1405
    .local v8, "props":Ljava/util/Properties;
    const-wide/16 v5, 0x0

    .line 1406
    .local v5, "priority":D
    const/4 v9, 0x0

    .line 1408
    .local v9, "propsUrl":Ljava/net/URL;
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/logging/LogFactory;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v11

    .line 1410
    .local v11, "urls":Ljava/util/Enumeration;
    if-nez v11, :cond_0

    .line 1411
    const/4 v12, 0x0

    .line 1483
    .end local v11    # "urls":Ljava/util/Enumeration;
    :goto_0
    return-object v12

    .line 1414
    .restart local v11    # "urls":Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1415
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URL;

    .line 1417
    .local v10, "url":Ljava/net/URL;
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;

    move-result-object v4

    .line 1418
    .local v4, "newProps":Ljava/util/Properties;
    if-eqz v4, :cond_0

    .line 1419
    if-nez v8, :cond_4

    .line 1420
    move-object v9, v10

    .line 1421
    move-object v8, v4

    .line 1422
    const-string v12, "priority"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1423
    .local v7, "priorityStr":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 1424
    if-eqz v7, :cond_1

    .line 1425
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1428
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1429
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LOOKUP] Properties file found at \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with priority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1465
    .end local v4    # "newProps":Ljava/util/Properties;
    .end local v7    # "priorityStr":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urls":Ljava/util/Enumeration;
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1467
    const-string v12, "SecurityException thrown while trying to find/read config files."

    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1471
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1472
    if-nez v8, :cond_8

    .line 1473
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LOOKUP] No properties file of name \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' found."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_3
    :goto_2
    move-object v12, v8

    .line 1483
    goto/16 :goto_0

    .line 1434
    .restart local v4    # "newProps":Ljava/util/Properties;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "urls":Ljava/util/Enumeration;
    :cond_4
    :try_start_1
    const-string v12, "priority"

    invoke-virtual {v4, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1435
    .local v3, "newPriorityStr":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 1436
    .local v1, "newPriority":D
    if-eqz v3, :cond_5

    .line 1437
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 1440
    :cond_5
    cmpl-double v12, v1, v5

    if-lez v12, :cond_7

    .line 1441
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1442
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LOOKUP] Properties file at \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with priority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " overrides file at \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with priority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1449
    :cond_6
    move-object v9, v10

    .line 1450
    move-object v8, v4

    .line 1451
    move-wide v5, v1

    goto/16 :goto_1

    .line 1453
    :cond_7
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1454
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LOOKUP] Properties file at \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with priority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not override file at \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with priority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1477
    .end local v1    # "newPriority":D
    .end local v3    # "newPriorityStr":Ljava/lang/String;
    .end local v4    # "newProps":Ljava/util/Properties;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urls":Ljava/util/Enumeration;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LOOKUP] Properties file of name \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' found at \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 798
    new-instance v0, Lorg/apache/commons/logging/LogFactory$1;

    invoke-direct {v0}, Lorg/apache/commons/logging/LogFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getFactory()Lorg/apache/commons/logging/LogFactory;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 385
    .local v3, "contextClassLoader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 389
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 390
    const-string v17, "Context classloader is null."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 395
    :cond_0
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v6

    .line 396
    .local v6, "factory":Lorg/apache/commons/logging/LogFactory;
    if-eqz v6, :cond_1

    move-object v7, v6

    .line 629
    .end local v6    # "factory":Lorg/apache/commons/logging/LogFactory;
    .local v7, "factory":Lorg/apache/commons/logging/LogFactory;
    :goto_0
    return-object v7

    .line 400
    .end local v7    # "factory":Lorg/apache/commons/logging/LogFactory;
    .restart local v6    # "factory":Lorg/apache/commons/logging/LogFactory;
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 401
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 404
    const-string v17, "[LOOKUP] "

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 417
    :cond_2
    const-string v17, "commons-logging.properties"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lorg/apache/commons/logging/LogFactory;->getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v13

    .line 421
    .local v13, "props":Ljava/util/Properties;
    move-object v2, v3

    .line 422
    .local v2, "baseClassLoader":Ljava/lang/ClassLoader;
    if-eqz v13, :cond_3

    .line 423
    const-string v17, "use_tccl"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 424
    .local v15, "useTCCLStr":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 427
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    .line 435
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 442
    .end local v15    # "useTCCLStr":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 443
    const-string v17, "[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 449
    :cond_4
    :try_start_0
    const-string v17, "org.apache.commons.logging.LogFactory"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, "factoryClass":Ljava/lang/String;
    if-eqz v8, :cond_f

    .line 451
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 452
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LOOKUP] Creating an instance of LogFactory class \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' as specified by system property "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "org.apache.commons.logging.LogFactory"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 457
    :cond_5
    invoke-static {v8, v2, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 497
    .end local v8    # "factoryClass":Ljava/lang/String;
    :cond_6
    :goto_1
    if-nez v6, :cond_9

    .line 498
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 499
    const-string v17, "[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 504
    :cond_7
    :try_start_1
    const-string v17, "META-INF/services/org.apache.commons.logging.LogFactory"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lorg/apache/commons/logging/LogFactory;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    .line 507
    .local v10, "is":Ljava/io/InputStream;
    if-eqz v10, :cond_11

    .line 512
    :try_start_2
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 517
    .local v14, "rd":Ljava/io/BufferedReader;
    :goto_2
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 518
    .local v9, "factoryClassName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 520
    if-eqz v9, :cond_9

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 522
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 523
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LOOKUP]  Creating an instance of LogFactory class "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " as specified by file \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "META-INF/services/org.apache.commons.logging.LogFactory"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' which was present in the path of the context"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " classloader."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 529
    :cond_8
    invoke-static {v9, v2, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    .line 557
    .end local v9    # "factoryClassName":Ljava/lang/String;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    :cond_9
    :goto_3
    if-nez v6, :cond_c

    .line 558
    if-eqz v13, :cond_13

    .line 559
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 560
    const-string v17, "[LOOKUP] Looking in properties file for entry with key \'org.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 565
    :cond_a
    const-string v17, "org.apache.commons.logging.LogFactory"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    .restart local v8    # "factoryClass":Ljava/lang/String;
    if-eqz v8, :cond_12

    .line 567
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 568
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 572
    :cond_b
    invoke-static {v8, v2, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v6

    .line 593
    .end local v8    # "factoryClass":Ljava/lang/String;
    :cond_c
    :goto_4
    if-nez v6, :cond_e

    .line 594
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 595
    const-string v17, "[LOOKUP] Loading the default LogFactory implementation \'org.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 610
    :cond_d
    const-string v17, "org.apache.commons.logging.impl.LogFactoryImpl"

    sget-object v18, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v6

    .line 613
    :cond_e
    if-eqz v6, :cond_14

    .line 617
    invoke-static {v3, v6}, Lorg/apache/commons/logging/LogFactory;->cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V

    .line 619
    if-eqz v13, :cond_14

    .line 620
    invoke-virtual {v13}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v12

    .line 621
    .local v12, "names":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 622
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 623
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 624
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Lorg/apache/commons/logging/LogFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 459
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "names":Ljava/util/Enumeration;
    .end local v16    # "value":Ljava/lang/String;
    .restart local v8    # "factoryClass":Ljava/lang/String;
    :cond_f
    :try_start_4
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 460
    const-string v17, "[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 465
    .end local v8    # "factoryClass":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 466
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 467
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]. Trying alternative implementations..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 474
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 480
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 481
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] as specified by a system property."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 487
    :cond_10
    throw v4

    .line 513
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .line 514
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v14    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 533
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    :cond_11
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 534
    const-string v17, "[LOOKUP] No resource file with name \'META-INF/services/org.apache.commons.logging.LogFactory\' found."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 539
    .end local v10    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    .line 543
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 544
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]. Trying alternative implementations..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 576
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "factoryClass":Ljava/lang/String;
    :cond_12
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 577
    const-string v17, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 582
    .end local v8    # "factoryClass":Ljava/lang/String;
    :cond_13
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 583
    const-string v17, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_14
    move-object v7, v6

    .line 629
    .end local v6    # "factory":Lorg/apache/commons/logging/LogFactory;
    .restart local v7    # "factory":Lorg/apache/commons/logging/LogFactory;
    goto/16 :goto_0
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 670
    new-instance v0, Lorg/apache/commons/logging/impl/Jdk14Logger;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getProperties(Ljava/net/URL;)Ljava/util/Properties;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 1359
    new-instance v0, Lorg/apache/commons/logging/LogFactory$5;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/LogFactory$5;-><init>(Ljava/net/URL;)V

    .line 1379
    .local v0, "action":Ljava/security/PrivilegedAction;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    return-object v1
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1294
    new-instance v0, Lorg/apache/commons/logging/LogFactory$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1322
    new-instance v0, Lorg/apache/commons/logging/LogFactory$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1346
    .local v0, "action":Ljava/security/PrivilegedAction;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 1347
    .local v1, "result":Ljava/lang/Object;
    check-cast v1, Ljava/util/Enumeration;

    .end local v1    # "result":Ljava/lang/Object;
    return-object v1
.end method

.method private static implementsLogFactory(Ljava/lang/Class;)Z
    .locals 6
    .param p0, "logFactoryClass"    # Ljava/lang/Class;

    .prologue
    .line 1232
    const/4 v2, 0x0

    .line 1233
    .local v2, "implementsLogFactory":Z
    if-eqz p0, :cond_0

    .line 1235
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1236
    .local v3, "logFactoryClassLoader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_1

    .line 1237
    const-string v4, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1282
    .end local v3    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return v2

    .line 1239
    .restart local v3    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    const-string v4, "[CUSTOM LOG FACTORY] "

    invoke-static {v4, v3}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1240
    const-string v4, "org.apache.commons.logging.LogFactory"

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1242
    .local v1, "factoryFromCustomLoader":Ljava/lang/Class;
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 1243
    if-eqz v2, :cond_2

    .line 1244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CUSTOM LOG FACTORY] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implements LogFactory but was loaded by an incompatible classloader."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1251
    .end local v1    # "factoryFromCustomLoader":Ljava/lang/Class;
    .end local v3    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "factoryFromCustomLoader":Ljava/lang/Class;
    .restart local v3    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CUSTOM LOG FACTORY] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not implement LogFactory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1260
    .end local v1    # "factoryFromCustomLoader":Ljava/lang/Class;
    .end local v3    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/LinkageError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1270
    .end local v0    # "e":Ljava/lang/LinkageError;
    :catch_2
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static initDiagnostics()V
    .locals 8

    .prologue
    .line 1495
    :try_start_0
    const-string v6, "org.apache.commons.logging.diagnostics.dest"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1496
    .local v2, "dest":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1541
    .end local v2    # "dest":Ljava/lang/String;
    :goto_0
    return-void

    .line 1499
    :catch_0
    move-exception v4

    .line 1502
    .local v4, "ex":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1505
    .end local v4    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "dest":Ljava/lang/String;
    :cond_0
    const-string v6, "STDOUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1506
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v6, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 1531
    :goto_1
    :try_start_1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 1532
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-object v6, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-nez v6, :cond_3

    .line 1533
    const-string v1, "BOOTLOADER"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1540
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .local v1, "classLoaderName":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LogFactory from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    goto :goto_0

    .line 1507
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :cond_1
    const-string v6, "STDERR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1508
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v6, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    goto :goto_1

    .line 1512
    :cond_2
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1513
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v6, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1514
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 1516
    .local v4, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 1535
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_3
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_2

    .line 1537
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1538
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v1, "UNKNOWN"

    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_2
.end method

.method protected static isDiagnosticsEnabled()Z
    .locals 1

    .prologue
    .line 1553
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logClassLoaderEnvironment(Ljava/lang/Class;)V
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 1613
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1640
    :goto_0
    return-void

    .line 1618
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Extension directories (java.ext.dir): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "java.ext.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Application classpath (java.class.path): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "java.class.path"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, "className":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1636
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was loaded via classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Ancestry of classloader which loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto/16 :goto_0

    .line 1620
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1621
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v3, "[ENV] Security setting prevent interrogation of system classpaths."

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_1

    .line 1629
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v1    # "className":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1631
    .restart local v2    # "ex":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Security forbids determining the classloader for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static final logDiagnostic(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1575
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 1576
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    sget-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1577
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1578
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1580
    :cond_0
    return-void
.end method

.method private static logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1650
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1689
    :cond_0
    :goto_0
    return-void

    .line 1654
    :cond_1
    if-eqz p1, :cond_2

    .line 1655
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1656
    .local v1, "classLoaderString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " == \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1660
    .end local v1    # "classLoaderString":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1666
    .local v3, "systemClassLoader":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ClassLoader tree:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1669
    .local v0, "buf":Ljava/lang/StringBuffer;
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1670
    if-ne p1, v3, :cond_4

    .line 1671
    const-string v4, " (SYSTEM) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1675
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1681
    const-string v4, " --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1682
    if-nez p1, :cond_3

    .line 1683
    const-string v4, "BOOT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1687
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_0

    .line 1661
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "systemClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 1662
    .local v2, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Security forbids determining the system classloader."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1676
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "systemClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    .line 1677
    .restart local v2    # "ex":Ljava/lang/SecurityException;
    const-string v4, " --> SECRET"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected static final logRawDiagnostic(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1589
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 1590
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1591
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1593
    :cond_0
    return-void
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 1
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1042
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v0

    return-object v0
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 4
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "contextClassLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v2, Lorg/apache/commons/logging/LogFactory$2;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/logging/LogFactory$2;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 1008
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/commons/logging/LogConfigurationException;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1009
    check-cast v0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 1010
    .local v0, "ex":Lorg/apache/commons/logging/LogConfigurationException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred while loading the factory class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/logging/LogConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1015
    :cond_0
    throw v0

    .line 1017
    .end local v0    # "ex":Lorg/apache/commons/logging/LogConfigurationException;
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to manage classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1022
    :cond_2
    check-cast v1, Lorg/apache/commons/logging/LogFactory;

    .end local v1    # "result":Ljava/lang/Object;
    return-object v1
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 1704
    if-nez p0, :cond_0

    .line 1705
    const-string v0, "null"

    .line 1707
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static release(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 689
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing factory for classloader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 692
    :cond_0
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    monitor-enter v2

    .line 693
    if-nez p0, :cond_2

    .line 694
    :try_start_0
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    if-eqz v1, :cond_1

    .line 695
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {v1}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 696
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 705
    :cond_1
    :goto_0
    monitor-exit v2

    .line 707
    return-void

    .line 699
    :cond_2
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/LogFactory;

    .line 700
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 702
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 705
    .end local v0    # "factory":Lorg/apache/commons/logging/LogFactory;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static releaseAll()V
    .locals 4

    .prologue
    .line 720
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    const-string v2, "Releasing factory for all classloaders."

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 723
    :cond_0
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    monitor-enter v3

    .line 724
    :try_start_0
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 725
    .local v1, "elements":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/LogFactory;

    .line 727
    .local v0, "element":Lorg/apache/commons/logging/LogFactory;
    invoke-virtual {v0}, Lorg/apache/commons/logging/LogFactory;->release()V

    goto :goto_0

    .line 735
    .end local v0    # "element":Lorg/apache/commons/logging/LogFactory;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 729
    :cond_1
    :try_start_1
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 731
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    if-eqz v2, :cond_2

    .line 732
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {v2}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 733
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 735
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    return-void
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()[Ljava/lang/String;
.end method

.method public abstract getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method
