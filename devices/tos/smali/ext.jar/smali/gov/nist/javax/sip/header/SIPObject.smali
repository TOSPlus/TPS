.class public abstract Lgov/nist/javax/sip/header/SIPObject;
.super Lgov/nist/core/GenericObject;
.source "SIPObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public dbgPrint()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lgov/nist/core/GenericObject;->dbgPrint()V

    .line 64
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 23

    .prologue
    .line 291
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    .line 292
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 293
    .local v19, "myclass":Ljava/lang/Class;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 294
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 296
    .local v11, "fields":[Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_f

    .line 297
    aget-object v8, v11, v14

    .line 299
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    .line 300
    .local v18, "modifier":I
    and-int/lit8 v21, v18, 0x2

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 296
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 303
    .local v10, "fieldType":Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "fieldName":Ljava/lang/String;
    const-string v21, "stringRepresentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 308
    const-string v21, "indentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 312
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 315
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 316
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    .line 317
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 318
    const-string v21, "int"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 320
    .local v15, "intfield":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/header/SIPObject;->sprint(I)V

    goto :goto_1

    .line 376
    .end local v13    # "fname":Ljava/lang/String;
    .end local v15    # "intfield":I
    :catch_0
    move-exception v7

    .line 377
    .local v7, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 321
    .end local v7    # "ex1":Ljava/lang/IllegalAccessException;
    .restart local v13    # "fname":Ljava/lang/String;
    :cond_2
    const-string v21, "short"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 322
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    .line 323
    .local v20, "shortField":S
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(S)V

    goto/16 :goto_1

    .line 324
    .end local v20    # "shortField":S
    :cond_3
    const-string v21, "char"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    .line 325
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 326
    .local v4, "charField":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/SIPObject;->sprint(C)V

    goto/16 :goto_1

    .line 327
    .end local v4    # "charField":C
    :cond_4
    const-string v21, "long"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 329
    .local v16, "longField":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPObject;->sprint(J)V

    goto/16 :goto_1

    .line 330
    .end local v16    # "longField":J
    :cond_5
    const-string v21, "boolean"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_6

    .line 331
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 332
    .local v3, "booleanField":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Z)V

    goto/16 :goto_1

    .line 333
    .end local v3    # "booleanField":Z
    :cond_6
    const-string v21, "double"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    .line 334
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 335
    .local v5, "doubleField":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/SIPObject;->sprint(D)V

    goto/16 :goto_1

    .line 336
    .end local v5    # "doubleField":D
    :cond_7
    const-string v21, "float"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 337
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    .line 338
    .local v12, "floatField":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/header/SIPObject;->sprint(F)V

    goto/16 :goto_1

    .line 340
    .end local v12    # "floatField":F
    .end local v13    # "fname":Ljava/lang/String;
    :cond_8
    const-class v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 341
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 342
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 346
    :cond_9
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 349
    :cond_a
    const-class v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 351
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 352
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 356
    :cond_b
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 363
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 368
    :goto_2
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 370
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 374
    :goto_3
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 365
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto :goto_2

    .line 372
    :cond_e
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 380
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "fieldType":Ljava/lang/Class;
    .end local v18    # "modifier":I
    :cond_f
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v21, v0

    return-object v21
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    .prologue
    .line 390
    iget v1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 391
    .local v1, "save":I
    iput p1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 392
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 394
    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 84
    const/4 v14, 0x0

    .line 156
    :goto_0
    return v14

    :cond_0
    move-object/from16 v13, p1

    .line 85
    check-cast v13, Lgov/nist/javax/sip/header/SIPObject;

    .line 86
    .local v13, "that":Lgov/nist/javax/sip/header/SIPObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 87
    .local v12, "myclass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 89
    .local v8, "hisclass":Ljava/lang/Class;
    :goto_1
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 90
    .local v5, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 91
    const/4 v14, 0x0

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 93
    .local v9, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v14, v5

    if-ge v10, v14, :cond_d

    .line 94
    aget-object v2, v5, v10

    .line 95
    .local v2, "f":Ljava/lang/reflect/Field;
    aget-object v7, v9, v10

    .line 97
    .local v7, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 98
    .local v11, "modifier":I
    and-int/lit8 v14, v11, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 93
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 101
    .local v4, "fieldType":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "fieldName":Ljava/lang/String;
    const-string v14, "stringRepresentation"

    invoke-virtual {v3, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_2

    .line 105
    const-string v14, "indentation"

    invoke-virtual {v3, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_2

    .line 110
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 111
    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "fname":Ljava/lang/String;
    const-string v14, "int"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v14, v15, :cond_2

    .line 114
    const/4 v14, 0x0

    goto :goto_0

    .line 115
    :cond_4
    const-string v14, "short"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    .line 116
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v14, v15, :cond_2

    .line 117
    const/4 v14, 0x0

    goto :goto_0

    .line 118
    :cond_5
    const-string v14, "char"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_6

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v14, v15, :cond_2

    .line 120
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 121
    :cond_6
    const-string v14, "long"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_7

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 123
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 124
    :cond_7
    const-string v14, "boolean"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_2

    .line 126
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 127
    :cond_8
    const-string v14, "double"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_9

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_2

    .line 129
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 130
    :cond_9
    const-string v14, "float"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    .line 131
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2

    .line 132
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 134
    .end local v6    # "fname":Ljava/lang/String;
    :cond_a
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v14, v15, :cond_2

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_b

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 137
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 138
    :cond_b
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 139
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 140
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_2

    .line 141
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "ex1":Ljava/lang/IllegalAccessException;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "accessed field "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "modifier  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "modifier.private  2"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 149
    .end local v1    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldType":Ljava/lang/Class;
    .end local v7    # "g":Ljava/lang/reflect/Field;
    .end local v11    # "modifier":I
    :cond_d
    const-class v14, Lgov/nist/javax/sip/header/SIPObject;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 156
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 152
    :cond_e
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    .line 153
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 155
    goto/16 :goto_1
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 23
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const/16 v19, 0x1

    .line 280
    :goto_0
    return v19

    .line 176
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 177
    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v18, p1

    .line 178
    check-cast v18, Lgov/nist/core/GenericObject;

    .line 179
    .local v18, "that":Lgov/nist/core/GenericObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 180
    .local v16, "myclass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 182
    .local v10, "hisclass":Ljava/lang/Class;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 183
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 184
    .local v11, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_12

    .line 185
    aget-object v3, v6, v12

    .line 186
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    .line 188
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 189
    .local v13, "modifier":I
    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 184
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 192
    .local v5, "fieldType":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "fieldName":Ljava/lang/String;
    const-string v19, "stringRepresentation"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    .line 196
    const-string v19, "indentation"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    .line 200
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 201
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "fname":Ljava/lang/String;
    const-string v19, "int"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_4

    .line 203
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 204
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 205
    :cond_4
    const-string v19, "short"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_5

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 207
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 208
    :cond_5
    const-string v19, "char"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_6

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 210
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 211
    :cond_6
    const-string v19, "long"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_7

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    .line 213
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 214
    :cond_7
    const-string v19, "boolean"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_8

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 216
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 217
    :cond_8
    const-string v19, "double"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_9

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v21

    cmpl-double v19, v19, v21

    if-eqz v19, :cond_2

    .line 219
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 220
    :cond_9
    const-string v19, "float"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_a

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v20

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_2

    .line 222
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 224
    :cond_a
    const-string v19, "unknown type"

    invoke-static/range {v19 .. v19}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 269
    .end local v7    # "fname":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 228
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 229
    .local v14, "myObj":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 230
    .local v9, "hisObj":Ljava/lang/Object;
    if-eqz v9, :cond_c

    if-nez v14, :cond_c

    .line 231
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 232
    :cond_c
    if-nez v9, :cond_d

    if-nez v14, :cond_2

    .line 234
    :cond_d
    if-nez v9, :cond_e

    if-eqz v14, :cond_2

    .line 236
    :cond_e
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    instance-of v0, v14, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 239
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 241
    check-cast v14, Ljava/lang/String;

    .end local v14    # "myObj":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    .line 244
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 245
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object v0, v9

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    if-eqz v19, :cond_10

    .line 252
    check-cast v14, Lgov/nist/core/GenericObject;

    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v15

    .line 254
    .local v15, "myObjEncoded":Ljava/lang/String;
    check-cast v9, Lgov/nist/core/GenericObject;

    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v17

    .line 257
    .local v17, "retval":Z
    if-nez v17, :cond_2

    .line 258
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 259
    .end local v15    # "myObjEncoded":Ljava/lang/String;
    .end local v17    # "retval":Z
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_11

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 262
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 263
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_2

    check-cast v14, Lgov/nist/core/GenericObjectList;

    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-nez v19, :cond_2

    .line 266
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 273
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v9    # "hisObj":Ljava/lang/Object;
    .end local v13    # "modifier":I
    :cond_12
    const-class v19, Lgov/nist/javax/sip/header/SIPObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 280
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 276
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    .line 277
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 279
    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
