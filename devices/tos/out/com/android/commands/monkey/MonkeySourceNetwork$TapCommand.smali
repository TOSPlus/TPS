.class Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;
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
    name = "TapCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/commands/monkey/MonkeySourceNetwork$1;

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 11
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
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4b

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "x":I
    const/4 v2, 0x0

    .line 343
    .local v2, "y":I
    const/4 v3, 0x1

    :try_start_c
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 344
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_20} :catch_40

    move-result v2

    .line 351
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v3, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 353
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v3, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 355
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 357
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_3f
    return-object v3

    .line 345
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :catch_40
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MonkeyStub"

    const-string v4, "Got something that wasn\'t a number"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_3f

    .line 357
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_4b
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_3f
.end method
