.class public abstract Lgov/nist/core/GenericObjectList;
.super Ljava/util/LinkedList;
.source "GenericObjectList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lgov/nist/core/GenericObject;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


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


# instance fields
.field protected indentation:I

.field protected listName:Ljava/lang/String;

.field protected myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private myListIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<+",
            "Lgov/nist/core/GenericObject;",
            ">;"
        }
    .end annotation
.end field

.field protected separator:Ljava/lang/String;

.field private stringRep:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 147
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "lname"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    .line 152
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "lname"    # Ljava/lang/String;
    .param p2, "objclass"    # Ljava/lang/Class;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    .line 177
    iput-object p2, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    .line 178
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lname"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    .line 163
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected static isCloneable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    instance-of v0, p0, Ljava/lang/Cloneable;

    return v0
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
    .line 120
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private sprint(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<null>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 260
    :cond_2
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 262
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 265
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :cond_4
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    goto :goto_0
.end method


# virtual methods
.method public addFirst(Lgov/nist/core/GenericObject;)V
    .locals 1
    .param p1, "objToAdd"    # Lgov/nist/core/GenericObject;

    .prologue
    .line 306
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lgov/nist/core/GenericObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addFirst(Lgov/nist/core/GenericObject;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/GenericObjectList;

    .line 129
    .local v2, "retval":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v2}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/core/GenericObject;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;

    .line 132
    .local v1, "obj":Lgov/nist/core/GenericObject;
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    .end local v1    # "obj":Lgov/nist/core/GenericObject;
    :cond_0
    return-object v2
.end method

.method protected concatenate(Lgov/nist/core/GenericObjectList;)V
    .locals 1
    .param p1, "objList"    # Lgov/nist/core/GenericObjectList;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    .line 228
    return-void
.end method

.method protected concatenate(Lgov/nist/core/GenericObjectList;Z)V
    .locals 1
    .param p1, "objList"    # Lgov/nist/core/GenericObjectList;
    .param p2, "topFlag"    # Z

    .prologue
    .line 240
    if-nez p2, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addAll(Ljava/util/Collection;)Z

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgov/nist/core/GenericObjectList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    const-string v1, ""

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object v0

    .line 277
    .local v0, "obj":Lgov/nist/core/GenericObject;
    if-nez v0, :cond_0

    .line 278
    const-string v1, "<null>"

    .line 289
    :goto_0
    return-object v1

    .line 279
    :cond_0
    const-string v1, "listName:"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 281
    const-string v1, "{"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 282
    :goto_1
    if-eqz v0, :cond_1

    .line 283
    const-string v1, "["

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 284
    check-cast v0, Lgov/nist/core/GenericObject;

    .end local v0    # "obj":Lgov/nist/core/GenericObject;
    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object v0

    .line 286
    .restart local v0    # "obj":Lgov/nist/core/GenericObject;
    const-string v1, "]"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_1
    const-string v1, "}"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    goto :goto_0
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    .prologue
    .line 298
    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 299
    .local v1, "save":I
    iput p1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 300
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 302
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 348
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    const-string v4, ""

    .line 367
    :goto_0
    return-object v4

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v0, "encoding":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 352
    .local v2, "iterator":Ljava/util/ListIterator;
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 354
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 355
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lgov/nist/core/GenericObject;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 356
    check-cast v1, Lgov/nist/core/GenericObject;

    .line 357
    .local v1, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    .end local v1    # "gobj":Lgov/nist/core/GenericObject;
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 367
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 401
    if-nez p1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v6

    .line 402
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, p1

    .line 404
    check-cast v5, Lgov/nist/core/GenericObjectList;

    .line 405
    .local v5, "that":Lgov/nist/core/GenericObjectList;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->size()I

    move-result v7

    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 407
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 408
    .local v3, "myIterator":Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 409
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 410
    .local v4, "myobj":Ljava/lang/Object;
    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 413
    .local v1, "hisIterator":Ljava/util/ListIterator;
    :cond_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 414
    .local v2, "hisobj":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 417
    .end local v2    # "hisobj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/util/NoSuchElementException;
    goto :goto_0

    .line 421
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .end local v1    # "hisIterator":Ljava/util/ListIterator;
    .end local v4    # "myobj":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 422
    .restart local v1    # "hisIterator":Ljava/util/ListIterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 423
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 424
    .restart local v2    # "hisobj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 427
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 428
    .restart local v4    # "myobj":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 431
    .end local v4    # "myobj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 432
    .restart local v0    # "ex":Ljava/util/NoSuchElementException;
    goto :goto_0

    .line 435
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .end local v2    # "hisobj":Ljava/lang/Object;
    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method protected first()Lgov/nist/core/GenericObject;
    .locals 2

    .prologue
    .line 196
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    .line 198
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    new-array v0, v1, [C

    .line 108
    .local v0, "chars":[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 109
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 391
    const/16 v0, 0x2a

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 471
    :goto_0
    return v5

    :cond_0
    move-object v4, p1

    .line 450
    check-cast v4, Lgov/nist/core/GenericObjectList;

    .line 451
    .local v4, "that":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v4}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 452
    .local v0, "hisIterator":Ljava/util/ListIterator;
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 454
    .local v1, "hisobj":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 455
    .local v3, "myobj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 456
    .end local v3    # "myobj":Ljava/lang/Object;
    .local v2, "myIterator":Ljava/util/ListIterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 457
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 458
    .restart local v3    # "myobj":Ljava/lang/Object;
    instance-of v5, v3, Lgov/nist/core/GenericObject;

    if-eqz v5, :cond_2

    .line 459
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to match  = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v5, v3

    check-cast v5, Lgov/nist/core/GenericObject;

    invoke-virtual {v5}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Lgov/nist/core/GenericObject;

    invoke-virtual {v5, v1}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 471
    .end local v1    # "hisobj":Ljava/lang/Object;
    .end local v2    # "myIterator":Ljava/util/ListIterator;
    .end local v3    # "myobj":Ljava/lang/Object;
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 464
    .restart local v1    # "hisobj":Ljava/lang/Object;
    .restart local v2    # "myIterator":Ljava/util/ListIterator;
    .restart local v3    # "myobj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v3, Lgov/nist/core/GenericObjectList;

    .end local v3    # "myobj":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 468
    :cond_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    check-cast v1, Lgov/nist/core/GenericObject;

    .end local v1    # "hisobj":Ljava/lang/Object;
    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v6

    .line 469
    goto :goto_0
.end method

.method public mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .locals 5
    .param p1, "mergeList"    # Lgov/nist/core/GenericObjectList;

    .prologue
    .line 328
    if-nez p1, :cond_1

    .line 339
    :cond_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 331
    .local v1, "it1":Ljava/util/Iterator;
    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 332
    .local v2, "it2":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 334
    .local v3, "outerObj":Lgov/nist/core/GenericObject;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "innerObj":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected next()Lgov/nist/core/GenericObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/util/NoSuchElementException;
    iput-object v2, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    move-object v1, v2

    .line 215
    goto :goto_0
.end method

.method protected next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;
    .locals 2
    .param p1, "iterator"    # Ljava/util/ListIterator;

    .prologue
    .line 185
    :try_start_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMyClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/Class;

    .prologue
    .line 140
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    .line 141
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
