.class public Lorg/apache/http/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-object v4

    .line 44
    :cond_0
    instance-of v4, p0, Ljava/lang/Cloneable;

    if-eqz v4, :cond_2

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "clone"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 53
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    :try_start_1
    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 49
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 50
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 55
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 56
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/lang/CloneNotSupportedException;

    if-eqz v4, :cond_1

    .line 57
    check-cast v0, Ljava/lang/CloneNotSupportedException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 59
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Unexpected exception"

    invoke-direct {v4, v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 61
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalAccessError;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v4}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v4
.end method
