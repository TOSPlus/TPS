.class Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/commands/monkey/MonkeySourceNetwork$1;

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 13
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_34

    .line 297
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 299
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 303
    .local v1, "chars":[C
    const/4 v8, -0x1

    invoke-static {v8}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 305
    .local v5, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v5, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 308
    .local v3, "events":[Landroid/view/KeyEvent;
    move-object v0, v3

    .local v0, "arr$":[Landroid/view/KeyEvent;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_22
    if-ge v4, v6, :cond_31

    aget-object v2, v0, v4

    .line 309
    .local v2, "event":Landroid/view/KeyEvent;
    new-instance v8, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v8, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {p2, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 311
    .end local v2    # "event":Landroid/view/KeyEvent;
    :cond_31
    sget-object v8, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 313
    .end local v0    # "arr$":[Landroid/view/KeyEvent;
    .end local v1    # "chars":[C
    .end local v3    # "events":[Landroid/view/KeyEvent;
    .end local v4    # "i$":I
    .end local v5    # "keyCharacterMap":Landroid/view/KeyCharacterMap;
    .end local v6    # "len$":I
    .end local v7    # "str":Ljava/lang/String;
    :goto_33
    return-object v8

    :cond_34
    sget-object v8, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_33
.end method
