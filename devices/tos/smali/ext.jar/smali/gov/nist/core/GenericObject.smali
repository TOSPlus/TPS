.class public abstract Lgov/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final AND:Ljava/lang/String; = "&"

.field protected static final AT:Ljava/lang/String; = "@"

.field protected static final COLON:Ljava/lang/String; = ":"

.field protected static final COMMA:Ljava/lang/String; = ","

.field protected static final DOT:Ljava/lang/String; = "."

.field protected static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field protected static final EQUALS:Ljava/lang/String; = "="

.field protected static final GREATER_THAN:Ljava/lang/String; = ">"

.field protected static final HT:Ljava/lang/String; = "\t"

.field protected static final LESS_THAN:Ljava/lang/String; = "<"

.field protected static final LPAREN:Ljava/lang/String; = "("

.field protected static final NEWLINE:Ljava/lang/String; = "\r\n"

.field protected static final PERCENT:Ljava/lang/String; = "%"

.field protected static final POUND:Ljava/lang/String; = "#"

.field protected static final QUESTION:Ljava/lang/String; = "?"

.field protected static final QUOTE:Ljava/lang/String; = "\'"

.field protected static final RETURN:Ljava/lang/String; = "\n"

.field protected static final RPAREN:Ljava/lang/String; = ")"

.field protected static final SEMICOLON:Ljava/lang/String; = ";"

.field protected static final SLASH:Ljava/lang/String; = "/"

.field protected static final SP:Ljava/lang/String; = " "

.field protected static final STAR:Ljava/lang/String; = "*"

.field static final immutableClassNames:[Ljava/lang/String;

.field protected static final immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected indentation:I

.field protected matchExpression:Lgov/nist/core/Match;

.field protected stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 73
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    .line 74
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "String"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Character"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Boolean"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Byte"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Short"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Integer"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Long"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Float"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Double"

    aput-object v4, v2, v3

    sput-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 87
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "null obj!"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .line 152
    .local v1, "clone_obj":Ljava/lang/Object;
    sget-object v5, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 154
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 156
    .local v2, "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 157
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    move-object p0, v1

    .line 194
    goto :goto_0

    .line 159
    .restart local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_5

    move-object v5, p0

    .line 160
    check-cast v5, [C

    check-cast v5, [C

    invoke-virtual {v5}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    .line 163
    :cond_4
    :goto_2
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_6

    .line 164
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 161
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_4

    move-object v5, p0

    .line 162
    check-cast v5, [Z

    check-cast v5, [Z

    invoke-virtual {v5}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 165
    :cond_6
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_7

    .line 166
    check-cast p0, [S

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [S

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 167
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_8

    .line 168
    check-cast p0, [I

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 169
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_9

    .line 170
    check-cast p0, [J

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 171
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_a

    .line 172
    check-cast p0, [F

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 173
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_a
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_2

    .line 174
    check-cast p0, [D

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 176
    .end local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_b
    const-class v5, Lgov/nist/core/GenericObject;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 177
    check-cast p0, Lgov/nist/core/GenericObject;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 178
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_c
    const-class v5, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 179
    check-cast p0, Lgov/nist/core/GenericObjectList;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 180
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_d
    const-class v5, Ljava/lang/Cloneable;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    :try_start_0
    const-string v6, "clone"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 185
    .local v4, "meth":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto/16 :goto_1

    .line 187
    .end local v4    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 188
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 191
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 190
    :catch_2
    move-exception v5

    goto/16 :goto_1

    .line 189
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 186
    :catch_4
    move-exception v5

    goto/16 :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dbgPrint()V
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method protected dbgPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {p1}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 24

    .prologue
    .line 594
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 595
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    .line 596
    .local v20, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 597
    const-string v22, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 599
    .local v12, "fields":[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v15, v0, :cond_f

    .line 600
    aget-object v9, v12, v15

    .line 602
    .local v9, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    .line 603
    .local v19, "modifier":I
    and-int/lit8 v22, v19, 0x2

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 599
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    .line 606
    .local v11, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    .line 607
    .local v10, "fieldName":Ljava/lang/String;
    const-string v22, "stringRepresentation"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 611
    const-string v22, "indentation"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 615
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 618
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 619
    invoke-virtual {v11}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v14

    .line 620
    .local v14, "fname":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 621
    const-string v22, "int"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_2

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 623
    .local v16, "intfield":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(I)V

    goto :goto_1

    .line 679
    .end local v14    # "fname":Ljava/lang/String;
    .end local v16    # "intfield":I
    :catch_0
    move-exception v8

    .line 680
    .local v8, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 624
    .end local v8    # "ex1":Ljava/lang/IllegalAccessException;
    .restart local v14    # "fname":Ljava/lang/String;
    :cond_2
    const-string v22, "short"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_3

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v21

    .line 626
    .local v21, "shortField":S
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(S)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 681
    .end local v14    # "fname":Ljava/lang/String;
    .end local v21    # "shortField":S
    :catch_1
    move-exception v7

    .line 682
    .local v7, "ex":Ljava/lang/Exception;
    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 627
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v14    # "fname":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v22, "char"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_4

    .line 628
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 629
    .local v4, "charField":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgov/nist/core/GenericObject;->sprint(C)V

    goto/16 :goto_1

    .line 630
    .end local v4    # "charField":C
    :cond_4
    const-string v22, "long"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_5

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    .line 632
    .local v17, "longField":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/GenericObject;->sprint(J)V

    goto/16 :goto_1

    .line 633
    .end local v17    # "longField":J
    :cond_5
    const-string v22, "boolean"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_6

    .line 634
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 635
    .local v3, "booleanField":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgov/nist/core/GenericObject;->sprint(Z)V

    goto/16 :goto_1

    .line 636
    .end local v3    # "booleanField":Z
    :cond_6
    const-string v22, "double"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_7

    .line 637
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 638
    .local v5, "doubleField":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lgov/nist/core/GenericObject;->sprint(D)V

    goto/16 :goto_1

    .line 639
    .end local v5    # "doubleField":D
    :cond_7
    const-string v22, "float"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_0

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v13

    .line 641
    .local v13, "floatField":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgov/nist/core/GenericObject;->sprint(F)V

    goto/16 :goto_1

    .line 643
    .end local v13    # "floatField":F
    .end local v14    # "fname":Ljava/lang/String;
    :cond_8
    const-class v22, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 644
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 645
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 649
    :cond_9
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 652
    :cond_a
    const-class v22, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 655
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 659
    :cond_b
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 665
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 666
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 671
    :goto_2
    const-string v22, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_e

    .line 673
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 677
    :goto_3
    const-string v22, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 668
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_2

    .line 675
    :cond_e
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 685
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "modifier":I
    :cond_f
    const-string v22, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v22, v0

    return-object v22
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    .prologue
    .line 693
    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 694
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "retval":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 696
    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 710
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 17
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 410
    if-nez p1, :cond_0

    const/4 v13, 0x0

    .line 481
    :goto_0
    return v13

    .line 411
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 412
    const/4 v13, 0x0

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 414
    .local v12, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 416
    .local v8, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 417
    .local v5, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 418
    .local v9, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v13, v5

    if-ge v10, v13, :cond_f

    .line 419
    aget-object v2, v5, v10

    .line 420
    .local v2, "f":Ljava/lang/reflect/Field;
    aget-object v7, v9, v10

    .line 422
    .local v7, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 423
    .local v11, "modifier":I
    and-int/lit8 v13, v11, 0x2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 418
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 425
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 426
    .local v4, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "fieldName":Ljava/lang/String;
    const-string v13, "stringRepresentation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_2

    .line 430
    const-string v13, "indentation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_2

    .line 435
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 436
    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, "fname":Ljava/lang/String;
    const-string v13, "int"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    .line 438
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    if-eq v13, v14, :cond_2

    .line 439
    const/4 v13, 0x0

    goto :goto_0

    .line 440
    :cond_4
    const-string v13, "short"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_5

    .line 441
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    if-eq v13, v14, :cond_2

    .line 442
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 443
    :cond_5
    const-string v13, "char"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_6

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    if-eq v13, v14, :cond_2

    .line 445
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 446
    :cond_6
    const-string v13, "long"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_2

    .line 448
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 449
    :cond_7
    const-string v13, "boolean"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 450
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    if-eq v13, v14, :cond_2

    .line 451
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 452
    :cond_8
    const-string v13, "double"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_9

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v15

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_2

    .line 454
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 455
    :cond_9
    const-string v13, "float"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_2

    .line 456
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_2

    .line 457
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 459
    .end local v6    # "fname":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_b

    .line 460
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 461
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_c

    .line 462
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 463
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_d

    .line 464
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 465
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 466
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 467
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_2

    .line 468
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 473
    .end local v1    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "g":Ljava/lang/reflect/Field;
    .end local v11    # "modifier":I
    :cond_f
    const-class v13, Lgov/nist/core/GenericObject;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 481
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 476
    :cond_10
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    .line 477
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 480
    goto/16 :goto_1
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    iget v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    new-array v0, v1, [C

    .line 299
    .local v0, "chars":[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 300
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getMatcher()Lgov/nist/core/Match;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 21
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    const/16 v17, 0x1

    .line 576
    :goto_0
    return v17

    .line 496
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 497
    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v16, p1

    .line 498
    check-cast v16, Lgov/nist/core/GenericObject;

    .line 499
    .local v16, "that":Lgov/nist/core/GenericObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 500
    .local v15, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 501
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 502
    .local v10, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 503
    .local v11, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_10

    .line 504
    aget-object v3, v6, v12

    .line 505
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    .line 507
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 508
    .local v13, "modifier":I
    and-int/lit8 v17, v13, 0x2

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 503
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 510
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 511
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "fieldName":Ljava/lang/String;
    const-string v17, "stringRepresentation"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_2

    .line 515
    const-string v17, "indentation"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_2

    .line 520
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 521
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, "fname":Ljava/lang/String;
    const-string v17, "int"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_4

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 524
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 525
    :cond_4
    const-string v17, "short"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_5

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 527
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 528
    :cond_5
    const-string v17, "char"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_6

    .line 529
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 530
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 531
    :cond_6
    const-string v17, "long"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_7

    .line 532
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_2

    .line 533
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 534
    :cond_7
    const-string v17, "boolean"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_8

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 536
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 537
    :cond_8
    const-string v17, "double"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_9

    .line 538
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_2

    .line 539
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 540
    :cond_9
    const-string v17, "float"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_2

    .line 542
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 545
    .end local v7    # "fname":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 546
    .local v14, "myObj":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 547
    .local v9, "hisObj":Ljava/lang/Object;
    if-eqz v9, :cond_b

    if-nez v14, :cond_b

    .line 548
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 549
    :cond_b
    if-nez v9, :cond_c

    if-nez v14, :cond_2

    .line 551
    :cond_c
    if-nez v9, :cond_d

    if-eqz v14, :cond_2

    .line 553
    :cond_d
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_e

    instance-of v0, v14, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 556
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 558
    check-cast v14, Ljava/lang/String;

    .end local v14    # "myObj":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_2

    .line 561
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 562
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 565
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 566
    :cond_f
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_2

    check-cast v14, Lgov/nist/core/GenericObjectList;

    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-nez v17, :cond_2

    .line 569
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 572
    .end local v9    # "hisObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 573
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 576
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v13    # "modifier":I
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 25
    .param p1, "mergeObject"    # Ljava/lang/Object;

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 223
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "Bad override object"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 225
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    .line 227
    .local v20, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 228
    .local v10, "fields":[Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_e

    .line 229
    aget-object v8, v10, v14

    .line 230
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    .line 231
    .local v19, "modifier":I
    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 228
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 233
    :cond_4
    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v23

    if-nez v23, :cond_3

    .line 235
    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v23

    if-nez v23, :cond_3

    .line 238
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 239
    .local v9, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    .line 242
    .local v12, "fname":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 243
    const-string v23, "int"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_5

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 245
    .local v15, "intfield":I
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v15}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 281
    .end local v15    # "intfield":I
    :catch_0
    move-exception v7

    .line 282
    .local v7, "ex1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 246
    .end local v7    # "ex1":Ljava/lang/IllegalAccessException;
    :cond_5
    :try_start_1
    const-string v23, "short"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_6

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v22

    .line 248
    .local v22, "shortField":S
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_2

    .line 249
    .end local v22    # "shortField":S
    :cond_6
    const-string v23, "char"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_7

    .line 250
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 251
    .local v4, "charField":C
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v4}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_2

    .line 252
    .end local v4    # "charField":C
    :cond_7
    const-string v23, "long"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_8

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 254
    .local v16, "longField":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v8, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_2

    .line 255
    .end local v16    # "longField":J
    :cond_8
    const-string v23, "boolean"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_9

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 257
    .local v3, "booleanField":Z
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_2

    .line 258
    .end local v3    # "booleanField":Z
    :cond_9
    const-string v23, "double"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_a

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 260
    .local v5, "doubleField":D
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_2

    .line 261
    .end local v5    # "doubleField":D
    :cond_a
    const-string v23, "float"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_3

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v11

    .line 263
    .local v11, "floatField":F
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v11}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_2

    .line 266
    .end local v11    # "floatField":F
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 267
    .local v21, "obj":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 268
    .local v18, "mobj":Ljava/lang/Object;
    if-eqz v18, :cond_3

    .line 270
    if-nez v21, :cond_c

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 274
    :cond_c
    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/core/GenericObject;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 275
    move-object/from16 v0, v21

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v13, v0

    .line 276
    .local v13, "gobj":Lgov/nist/core/GenericObject;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 278
    .end local v13    # "gobj":Lgov/nist/core/GenericObject;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 286
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v9    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "fname":Ljava/lang/String;
    .end local v18    # "mobj":Ljava/lang/Object;
    .end local v19    # "modifier":I
    .end local v21    # "obj":Ljava/lang/Object;
    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v20

    .line 287
    const-class v23, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    goto/16 :goto_0
.end method

.method public setMatcher(Lgov/nist/core/Match;)V
    .locals 2
    .param p1, "matchExpression"    # Lgov/nist/core/Match;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null arg!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput-object p1, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    .line 116
    return-void
.end method

.method protected sprint(C)V
    .locals 1
    .param p1, "charField"    # C

    .prologue
    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method protected sprint(D)V
    .locals 1
    .param p1, "doubleField"    # D

    .prologue
    .line 378
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method protected sprint(F)V
    .locals 1
    .param p1, "floatField"    # F

    .prologue
    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method protected sprint(I)V
    .locals 1
    .param p1, "intField"    # I

    .prologue
    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected sprint(J)V
    .locals 1
    .param p1, "longField"    # J

    .prologue
    .line 362
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected sprint(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method protected sprint(Ljava/lang/String;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    .line 308
    if-nez p1, :cond_1

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<null>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 314
    :cond_2
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 316
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 319
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :cond_4
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    goto :goto_0
.end method

.method protected sprint(S)V
    .locals 1
    .param p1, "shortField"    # S

    .prologue
    .line 345
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method protected sprint(Z)V
    .locals 1
    .param p1, "booleanField"    # Z

    .prologue
    .line 370
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 371
    return-void
.end method
