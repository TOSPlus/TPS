.class public abstract Lgov/nist/javax/sip/address/NetObject;
.super Lgov/nist/core/GenericObject;
.source "NetObject.java"


# static fields
.field protected static final CORE_PACKAGE:Ljava/lang/String; = "gov.nist.core"

.field protected static final GRUU:Ljava/lang/String; = "gr"

.field protected static final LR:Ljava/lang/String; = "lr"

.field protected static final MADDR:Ljava/lang/String; = "maddr"

.field protected static final METHOD:Ljava/lang/String; = "method"

.field protected static final NET_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.address"

.field protected static final PARSER_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.parser"

.field protected static final PHONE:Ljava/lang/String; = "phone"

.field protected static final SIP:Ljava/lang/String; = "sip"

.field protected static final SIPS:Ljava/lang/String; = "sips"

.field protected static final TCP:Ljava/lang/String; = "tcp"

.field protected static final TLS:Ljava/lang/String; = "tls"

.field protected static final TRANSPORT:Ljava/lang/String; = "transport"

.field protected static final TTL:Ljava/lang/String; = "ttl"

.field protected static final UDP:Ljava/lang/String; = "udp"

.field protected static final USER:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public debugDump()Ljava/lang/String;
    .locals 23

    .prologue
    .line 280
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

    .line 281
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 282
    .local v19, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 283
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 285
    .local v11, "fields":[Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_f

    .line 286
    aget-object v8, v11, v14

    .line 288
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    .line 289
    .local v18, "modifier":I
    and-int/lit8 v21, v18, 0x2

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 285
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 292
    .local v10, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "fieldName":Ljava/lang/String;
    const-string v21, "stringRepresentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 297
    const-string v21, "indentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 301
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 304
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 305
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    .line 306
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 307
    const-string v21, "int"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 309
    .local v15, "intfield":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/address/NetObject;->sprint(I)V

    goto :goto_1

    .line 365
    .end local v13    # "fname":Ljava/lang/String;
    .end local v15    # "intfield":I
    :catch_0
    move-exception v7

    .line 366
    .local v7, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 310
    .end local v7    # "ex1":Ljava/lang/IllegalAccessException;
    .restart local v13    # "fname":Ljava/lang/String;
    :cond_2
    const-string v21, "short"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    .line 312
    .local v20, "shortField":S
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(S)V

    goto/16 :goto_1

    .line 313
    .end local v20    # "shortField":S
    :cond_3
    const-string v21, "char"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 315
    .local v4, "charField":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/address/NetObject;->sprint(C)V

    goto/16 :goto_1

    .line 316
    .end local v4    # "charField":C
    :cond_4
    const-string v21, "long"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    .line 317
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 318
    .local v16, "longField":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/address/NetObject;->sprint(J)V

    goto/16 :goto_1

    .line 319
    .end local v16    # "longField":J
    :cond_5
    const-string v21, "boolean"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_6

    .line 320
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 321
    .local v3, "booleanField":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/NetObject;->sprint(Z)V

    goto/16 :goto_1

    .line 322
    .end local v3    # "booleanField":Z
    :cond_6
    const-string v21, "double"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    .line 323
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 324
    .local v5, "doubleField":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/address/NetObject;->sprint(D)V

    goto/16 :goto_1

    .line 325
    .end local v5    # "doubleField":D
    :cond_7
    const-string v21, "float"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    .line 327
    .local v12, "floatField":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/address/NetObject;->sprint(F)V

    goto/16 :goto_1

    .line 329
    .end local v12    # "floatField":F
    .end local v13    # "fname":Ljava/lang/String;
    :cond_8
    const-class v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 331
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 335
    :cond_9
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 338
    :cond_a
    const-class v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 341
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 345
    :cond_b
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 351
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 352
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 357
    :goto_2
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 359
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 363
    :goto_3
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 354
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto :goto_2

    .line 361
    :cond_e
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 369
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "modifier":I
    :cond_f
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v21, v0

    return-object v21
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    .prologue
    .line 382
    iget v1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 383
    .local v1, "save":I
    iput p1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 384
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 386
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 17
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 81
    const/4 v13, 0x0

    .line 147
    :goto_0
    return v13

    .line 82
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 83
    .local v12, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 85
    .local v8, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 86
    .local v5, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 87
    .local v9, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v13, v5

    if-ge v10, v13, :cond_c

    .line 88
    aget-object v2, v5, v10

    .line 89
    .local v2, "f":Ljava/lang/reflect/Field;
    aget-object v7, v9, v10

    .line 91
    .local v7, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 92
    .local v11, "modifier":I
    and-int/lit8 v13, v11, 0x2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 87
    :cond_1
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 95
    .local v4, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "fieldName":Ljava/lang/String;
    const-string v13, "stringRepresentation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_1

    .line 99
    const-string v13, "indentation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_1

    .line 104
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 105
    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "fname":Ljava/lang/String;
    const-string v13, "int"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_3

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    if-eq v13, v14, :cond_1

    .line 108
    const/4 v13, 0x0

    goto :goto_0

    .line 109
    :cond_3
    const-string v13, "short"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    if-eq v13, v14, :cond_1

    .line 111
    const/4 v13, 0x0

    goto :goto_0

    .line 112
    :cond_4
    const-string v13, "char"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_5

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    if-eq v13, v14, :cond_1

    .line 114
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 115
    :cond_5
    const-string v13, "long"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_6

    .line 116
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 117
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 118
    :cond_6
    const-string v13, "boolean"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    if-eq v13, v14, :cond_1

    .line 120
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 121
    :cond_7
    const-string v13, "double"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v15

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_1

    .line 123
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 124
    :cond_8
    const-string v13, "float"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1

    .line 126
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 128
    .end local v6    # "fname":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v13, v14, :cond_1

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 131
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 132
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 133
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 134
    :cond_b
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

    if-nez v13, :cond_1

    .line 135
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 140
    .end local v1    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "g":Ljava/lang/reflect/Field;
    .end local v11    # "modifier":I
    :cond_c
    const-class v13, Lgov/nist/javax/sip/address/NetObject;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 147
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 143
    :cond_d
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    .line 144
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 146
    goto/16 :goto_1
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 23
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const/16 v19, 0x1

    .line 269
    :goto_0
    return v19

    .line 166
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 167
    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v18, p1

    .line 168
    check-cast v18, Lgov/nist/core/GenericObject;

    .line 172
    .local v18, "that":Lgov/nist/core/GenericObject;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 173
    .local v10, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 175
    .local v16, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 176
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 177
    .local v11, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_11

    .line 178
    aget-object v3, v6, v12

    .line 179
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    .line 181
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 182
    .local v13, "modifier":I
    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 177
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 185
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "fieldName":Ljava/lang/String;
    const-string v19, "stringRepresentation"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    .line 189
    const-string v19, "indentation"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    .line 194
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 195
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "fname":Ljava/lang/String;
    const-string v19, "int"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_4

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 198
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 199
    :cond_4
    const-string v19, "short"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_5

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 201
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 202
    :cond_5
    const-string v19, "char"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_6

    .line 203
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 204
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 205
    :cond_6
    const-string v19, "long"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_7

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    .line 207
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 208
    :cond_7
    const-string v19, "boolean"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_8

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 210
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 211
    :cond_8
    const-string v19, "double"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_9

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v21

    cmpl-double v19, v19, v21

    if-eqz v19, :cond_2

    .line 213
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 214
    :cond_9
    const-string v19, "float"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_2

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v20

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_2

    .line 216
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 219
    .end local v7    # "fname":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 220
    .local v14, "myObj":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 221
    .local v9, "hisObj":Ljava/lang/Object;
    if-eqz v9, :cond_b

    if-nez v14, :cond_b

    .line 222
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 223
    :cond_b
    if-nez v9, :cond_c

    if-nez v14, :cond_2

    .line 225
    :cond_c
    if-nez v9, :cond_d

    if-eqz v14, :cond_2

    .line 227
    :cond_d
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    instance-of v0, v14, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 230
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 232
    check-cast v14, Ljava/lang/String;

    .end local v14    # "myObj":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    .line 235
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 236
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object v0, v9

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    if-eqz v19, :cond_f

    .line 242
    check-cast v14, Lgov/nist/core/GenericObject;

    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, "myObjEncoded":Ljava/lang/String;
    check-cast v9, Lgov/nist/core/GenericObject;

    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v17

    .line 247
    .local v17, "retval":Z
    if-nez v17, :cond_2

    .line 248
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 249
    .end local v15    # "myObjEncoded":Ljava/lang/String;
    .end local v17    # "retval":Z
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_f
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 252
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 253
    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_2

    check-cast v14, Lgov/nist/core/GenericObjectList;

    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-nez v19, :cond_2

    .line 256
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 258
    .end local v9    # "hisObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 262
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v13    # "modifier":I
    :cond_11
    const-class v19, Lgov/nist/javax/sip/address/NetObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 269
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 265
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    .line 266
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 268
    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
