.class public abstract Lgov/nist/javax/sip/message/MessageObject;
.super Lgov/nist/core/GenericObject;
.source "MessageObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 158
    return-void
.end method


# virtual methods
.method public dbgPrint(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    .prologue
    .line 164
    iget v1, p0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    .line 165
    .local v1, "save":I
    iput p1, p0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    .line 168
    return-object v0
.end method

.method public dbgPrint()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lgov/nist/core/GenericObject;->dbgPrint()V

    .line 51
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 23

    .prologue
    .line 60
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/message/MessageObject;->stringRepresentation:Ljava/lang/String;

    .line 61
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 62
    .local v19, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 63
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 65
    .local v11, "fields":[Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_f

    .line 66
    aget-object v8, v11, v14

    .line 68
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    .line 69
    .local v18, "modifier":I
    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 72
    .local v10, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "fieldName":Ljava/lang/String;
    const-string v21, "stringRepresentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 77
    const-string v21, "indentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 81
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 85
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, "fname":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 87
    const-string v21, "int"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    .line 88
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 89
    .local v15, "intfield":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/message/MessageObject;->sprint(I)V

    goto :goto_1

    .line 147
    .end local v13    # "fname":Ljava/lang/String;
    .end local v15    # "intfield":I
    :catch_0
    move-exception v7

    .line 148
    .local v7, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 90
    .end local v7    # "ex1":Ljava/lang/IllegalAccessException;
    .restart local v13    # "fname":Ljava/lang/String;
    :cond_2
    const-string v21, "short"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 91
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    .line 92
    .local v20, "shortField":S
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(S)V

    goto/16 :goto_1

    .line 93
    .end local v20    # "shortField":S
    :cond_3
    const-string v21, "char"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    .line 94
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 95
    .local v4, "charField":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/message/MessageObject;->sprint(C)V

    goto/16 :goto_1

    .line 96
    .end local v4    # "charField":C
    :cond_4
    const-string v21, "long"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 98
    .local v16, "longField":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/message/MessageObject;->sprint(J)V

    goto/16 :goto_1

    .line 99
    .end local v16    # "longField":J
    :cond_5
    const-string v21, "boolean"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_6

    .line 100
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 101
    .local v3, "booleanField":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Z)V

    goto/16 :goto_1

    .line 102
    .end local v3    # "booleanField":Z
    :cond_6
    const-string v21, "double"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 104
    .local v5, "doubleField":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/message/MessageObject;->sprint(D)V

    goto/16 :goto_1

    .line 105
    .end local v5    # "doubleField":D
    :cond_7
    const-string v21, "float"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    .line 107
    .local v12, "floatField":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/message/MessageObject;->sprint(F)V

    goto/16 :goto_1

    .line 109
    .end local v12    # "floatField":F
    .end local v13    # "fname":Ljava/lang/String;
    :cond_8
    const-class v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    :cond_9
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    :cond_a
    const-class v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :cond_b
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 134
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 139
    :goto_2
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 145
    :goto_3
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_e
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 151
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "modifier":I
    :cond_f
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/message/MessageObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v21, v0

    return-object v21
.end method

.method public abstract encode()Ljava/lang/String;
.end method
