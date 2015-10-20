.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 627
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 634
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 643
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 648
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 654
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 659
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 365
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 366
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-nez v1, :cond_0

    .line 367
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 368
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    aput-object p3, v1, v5

    .line 385
    :goto_0
    return-void

    .line 371
    :cond_0
    array-length v0, v1

    .line 372
    .local v0, "N":I
    move v2, v0

    .line 373
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    if-nez v4, :cond_1

    .line 374
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 376
    :cond_1
    if-ge v2, v0, :cond_2

    .line 377
    aput-object p3, v1, v2

    goto :goto_0

    .line 379
    :cond_2
    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 380
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    aput-object p3, v3, v0

    .line 382
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 521
    .local v6, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    .line 523
    .local v17, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v10

    .line 527
    .local v10, "excludingStopped":Z
    if-eqz p3, :cond_2

    .line 528
    new-instance v14, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "IntentResolver"

    const/4 v7, 0x3

    invoke-direct {v14, v4, v5, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 529
    .local v14, "logPrinter":Landroid/util/Printer;
    new-instance v13, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v13, v14}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    .line 535
    .local v13, "logPrintWriter":Ljava/io/PrintWriter;
    :goto_0
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    array-length v9, v0

    .line 536
    .local v9, "N":I
    :goto_1
    const/4 v11, 0x0

    .line 539
    .local v11, "hasNonDefaults":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_b

    aget-object v2, p7, v12

    .local v2, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v2, :cond_b

    .line 541
    if-eqz p3, :cond_0

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Matching against filter "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 544
    if-eqz p3, :cond_1

    .line 545
    const-string v4, "IntentResolver"

    const-string v5, "  Filter\'s target is stopped; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 531
    .end local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v9    # "N":I
    .end local v11    # "hasNonDefaults":Z
    .end local v12    # "i":I
    .end local v13    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v14    # "logPrinter":Landroid/util/Printer;
    :cond_2
    const/4 v14, 0x0

    .line 532
    .restart local v14    # "logPrinter":Landroid/util/Printer;
    const/4 v13, 0x0

    .restart local v13    # "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_0

    .line 535
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 551
    .restart local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v9    # "N":I
    .restart local v11    # "hasNonDefaults":Z
    .restart local v12    # "i":I
    :cond_4
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 552
    if-eqz p3, :cond_1

    .line 553
    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter is not from package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 559
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 560
    if-eqz p3, :cond_1

    .line 561
    const-string v4, "IntentResolver"

    const-string v5, "  Filter\'s target already added"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 566
    :cond_6
    const-string v8, "IntentResolver"

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v15

    .line 567
    .local v15, "match":I
    if-ltz v15, :cond_a

    .line 568
    if-eqz p3, :cond_7

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter matched!  match=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " hasDefault="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_7
    if-eqz p4, :cond_8

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 572
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v15, v1}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v16

    .line 573
    .local v16, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz v16, :cond_1

    .line 574
    move-object/from16 v0, p8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    if-eqz p3, :cond_1

    .line 576
    const-string v4, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4, v2}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 577
    invoke-virtual {v13}, Ljava/io/PrintWriter;->flush()V

    .line 578
    const-string v4, "    "

    invoke-virtual {v2, v14, v4}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 582
    .end local v16    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 585
    :cond_a
    if-eqz p3, :cond_1

    .line 587
    packed-switch v15, :pswitch_data_0

    .line 592
    const-string v18, "unknown reason"

    .line 594
    .local v18, "reason":Ljava/lang/String;
    :goto_4
    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter did not match: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 588
    .end local v18    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string v18, "action"

    .restart local v18    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 589
    .end local v18    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string v18, "category"

    .restart local v18    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 590
    .end local v18    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string v18, "data"

    .restart local v18    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 591
    .end local v18    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string v18, "type"

    .restart local v18    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 599
    .end local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v15    # "match":I
    .end local v18    # "reason":Ljava/lang/String;
    :cond_b
    if-eqz v11, :cond_c

    .line 600
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_d

    .line 601
    const-string v4, "IntentResolver"

    const-string v5, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_c
    :goto_5
    return-void

    .line 602
    :cond_d
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 603
    const-string v4, "IntentResolver"

    const-string v5, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 587
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 510
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 511
    const/4 v1, 0x0

    .line 513
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_1

    .line 451
    const/4 v1, 0x0

    .line 461
    :cond_0
    return v1

    .line 454
    :cond_1
    const/4 v1, 0x0

    .line 455
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 459
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 388
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 389
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    move v3, v5

    .line 415
    :cond_0
    return v3

    .line 393
    :cond_1
    const/4 v3, 0x0

    .line 394
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 396
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 398
    move-object v0, v2

    .line 399
    .local v0, "baseName":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 400
    .local v4, "slashpos":I
    if-lez v4, :cond_2

    .line 401
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_1
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v2, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 408
    if-lez v4, :cond_3

    .line 409
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 403
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 411
    :cond_3
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    const/4 v6, 0x0

    .line 482
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 483
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v1, :cond_4

    .line 484
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 485
    .local v0, "LAST":I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v5, v1, v0

    if-nez v5, :cond_0

    .line 486
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 488
    :cond_0
    move v2, v0

    .local v2, "idx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 489
    aget-object v5, v1, v2

    if-ne v5, p3, :cond_2

    .line 490
    sub-int v4, v0, v2

    .line 491
    .local v4, "remain":I
    if-lez v4, :cond_1

    .line 492
    add-int/lit8 v5, v2, 0x1

    invoke-static {v1, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 495
    add-int/lit8 v0, v0, -0x1

    .line 488
    .end local v4    # "remain":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 498
    :cond_3
    if-gez v0, :cond_5

    .line 499
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .end local v0    # "LAST":I
    .end local v2    # "idx":I
    :cond_4
    :goto_2
    return-void

    .line 500
    .restart local v0    # "LAST":I
    .restart local v2    # "idx":I
    :cond_5
    array-length v5, v1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_4

    .line 501
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 502
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_1

    .line 467
    const/4 v1, 0x0

    .line 477
    :cond_0
    return v1

    .line 470
    :cond_1
    const/4 v1, 0x0

    .line 471
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 475
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 420
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    move v3, v5

    .line 445
    :cond_0
    return v3

    .line 424
    :cond_1
    const/4 v3, 0x0

    .line 425
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 427
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 429
    move-object v0, v2

    .line 430
    .local v0, "baseName":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 431
    .local v4, "slashpos":I
    if-lez v4, :cond_2

    .line 432
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 437
    :goto_1
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    if-lez v4, :cond_3

    .line 440
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 442
    :cond_3
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "numT":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 66
    :cond_0
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 70
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z

    .prologue
    .line 136
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "curPrefix":Ljava/lang/String;
    const-string v3, "Full MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    move-object v2, v8

    .line 143
    :cond_0
    const-string v3, "Base MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    move-object v2, v8

    .line 147
    :cond_1
    const-string v3, "Wild MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    move-object v2, v8

    .line 151
    :cond_2
    const-string v3, "Schemes:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    move-object v2, v8

    .line 155
    :cond_3
    const-string v3, "Non-Data Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    move-object v2, v8

    .line 159
    :cond_4
    const-string v3, "MIME Typed Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    move-object v2, v8

    .line 163
    :cond_5
    if-ne v2, v8, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 14
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "printFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[TF;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "eprefix":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "fprefix":Ljava/lang/String;
    const/4 v10, 0x0

    .line 103
    .local v10, "printedSomething":Z
    const/4 v11, 0x0

    .line 104
    .local v11, "printer":Landroid/util/Printer;
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 105
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TF;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 106
    .local v2, "a":[Landroid/content/IntentFilter;, "[TF;"
    array-length v1, v2

    .line 107
    .local v1, "N":I
    const/4 v9, 0x0

    .line 109
    .local v9, "printedHeader":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    aget-object v5, v2, v7

    .local v5, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v5, :cond_0

    .line 110
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v5}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 109
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 113
    :cond_2
    if-eqz p3, :cond_3

    .line 114
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const/16 p3, 0x0

    .line 117
    :cond_3
    if-nez v9, :cond_4

    .line 118
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const/4 v9, 0x1

    .line 121
    :cond_4
    const/4 v10, 0x1

    .line 122
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 123
    if-eqz p7, :cond_1

    .line 124
    if-nez v11, :cond_5

    .line 125
    new-instance v11, Landroid/util/PrintWriterPrinter;

    .end local v11    # "printer":Landroid/util/Printer;
    invoke-direct {v11, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 127
    .restart local v11    # "printer":Landroid/util/Printer;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v1    # "N":I
    .end local v2    # "a":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TF;>;"
    .end local v5    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v7    # "i":I
    .end local v9    # "printedHeader":Z
    :cond_6
    return v10
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 40
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "scheme":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v10, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    const/4 v5, 0x1

    .line 232
    .local v5, "debug":Z
    :goto_0
    if-eqz v5, :cond_0

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " scheme="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " defaultOnly="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " userId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    const/4 v9, 0x0

    .line 237
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v18, 0x0

    .line 238
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v26, 0x0

    .line 239
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v34, 0x0

    .line 243
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz p2, :cond_4

    .line 244
    const/16 v2, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 245
    .local v39, "slashpos":I
    if-lez v39, :cond_4

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 247
    .local v37, "baseType":Ljava/lang/String;
    const-string v2, "*"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 248
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v39, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v39, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_c

    .line 252
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 253
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_2

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 255
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_3

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v26, [Landroid/content/IntentFilter;

    .line 268
    .restart local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_4

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v34, [Landroid/content/IntentFilter;

    .line 284
    .restart local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_5

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheme list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_5
    if-nez p2, :cond_6

    if-nez v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 292
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_6

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v4

    .line 296
    .local v4, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v11, p4

    .line 297
    invoke-direct/range {v2 .. v11}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 300
    :cond_7
    if-eqz v18, :cond_8

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move v14, v5

    move/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, p4

    .line 301
    invoke-direct/range {v11 .. v20}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 304
    :cond_8
    if-eqz v26, :cond_9

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v28, p4

    .line 305
    invoke-direct/range {v19 .. v28}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 308
    :cond_9
    if-eqz v34, :cond_a

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, p3

    move-object/from16 v32, p2

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    move/from16 v36, p4

    .line 309
    invoke-direct/range {v27 .. v36}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 312
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 314
    if-eqz v5, :cond_f

    .line 315
    const-string v2, "IntentResolver"

    const-string v3, "Final result list:"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v38

    if-ge v0, v2, :cond_f

    .line 317
    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    .line 229
    .end local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v5    # "debug":Z
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v38    # "i":I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 259
    .restart local v5    # "debug":Z
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v37    # "baseType":Ljava/lang/String;
    .restart local v39    # "slashpos":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 260
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_d

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 262
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_3

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 269
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 274
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_4

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Typed Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 320
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    .restart local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    :cond_f
    return-object v10
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;I)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v9, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 212
    .local v4, "debug":Z
    :goto_0
    invoke-static {p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 213
    .local v3, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 215
    .local v11, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 216
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/IntentFilter;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object v6, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 215
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 209
    .end local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v4    # "debug":Z
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "i":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 219
    .restart local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .restart local v4    # "debug":Z
    .restart local v7    # "scheme":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "i":I
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 220
    return-object v9
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, "numT":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 95
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 358
    return-void
.end method
