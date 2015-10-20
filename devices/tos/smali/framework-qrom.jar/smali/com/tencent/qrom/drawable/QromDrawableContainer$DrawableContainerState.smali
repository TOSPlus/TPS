.class public abstract Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "QromDrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromDrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableContainerState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;
    }
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mComputedConstantSize:Z

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Lcom/tencent/qrom/drawable/QromDrawableContainer;

.field mPaddingChecked:Z

.field final mRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;Lcom/tencent/qrom/drawable/QromDrawableContainer;Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "orig"    # Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;
    .param p2, "owner"    # Lcom/tencent/qrom/drawable/QromDrawableContainer;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x1

    .line 501
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 490
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDither:Z

    .line 502
    iput-object p2, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mOwner:Lcom/tencent/qrom/drawable/QromDrawableContainer;

    .line 503
    iput-object p3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    .line 505
    if-eqz p1, :cond_2

    .line 506
    iget v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 507
    iget v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 509
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 510
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 512
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 513
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 514
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDither:Z

    .line 515
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mMutated:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mMutated:Z

    .line 516
    iget v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mLayoutDirection:I

    .line 517
    iget v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 518
    iget v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 519
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 522
    invoke-virtual {p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 523
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 525
    invoke-virtual {p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 526
    invoke-virtual {p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 527
    invoke-virtual {p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 528
    invoke-virtual {p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 529
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 531
    invoke-virtual {p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mOpacity:I

    .line 532
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 534
    invoke-virtual {p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mStateful:Z

    .line 535
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 539
    iget-object v3, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 540
    .local v3, "origDr":[Landroid/graphics/drawable/Drawable;
    array-length v4, v3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 541
    iget v4, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 543
    iget-object v2, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 544
    .local v2, "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;>;"
    if-eqz v2, :cond_1

    .line 545
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 550
    :goto_0
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 551
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 552
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 553
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    new-instance v5, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;

    aget-object v6, v3, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;-><init>(Landroid/graphics/drawable/Drawable;Lcom/tencent/qrom/drawable/QromDrawableContainer$1;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 551
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 547
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_0

    .line 557
    .end local v2    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;>;"
    .end local v3    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v4, 0xa

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 558
    const/4 v4, 0x0

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 560
    :cond_3
    return-void
.end method

.method private final createAllFutures()V
    .locals 5

    .prologue
    .line 595
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 596
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 597
    .local v0, "futureCount":I
    const/4 v2, 0x0

    .local v2, "keyIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 598
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 599
    .local v1, "index":I
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;

    invoke-virtual {v3, p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;->get(Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v1

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v1    # "index":I
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 604
    .end local v0    # "futureCount":I
    .end local v2    # "keyIndex":I
    :cond_1
    return-void
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 568
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 570
    .local v0, "pos":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 571
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->growArray(II)V

    .line 574
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 575
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mOwner:Lcom/tencent/qrom/drawable/QromDrawableContainer;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 577
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    .line 578
    iget v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 579
    iget v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 580
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 581
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 584
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 585
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 587
    return v0
.end method

.method public declared-synchronized canConstantState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 819
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-eqz v5, :cond_0

    .line 820
    iget-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :goto_0
    monitor-exit p0

    return v3

    .line 823
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 825
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 827
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 828
    .local v0, "N":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 829
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 830
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 831
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 819
    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 829
    .restart local v0    # "N":I
    .restart local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 836
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    .line 837
    goto :goto_0
.end method

.method protected computeConstantSize()V
    .locals 6

    .prologue
    .line 733
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 735
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 737
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 738
    .local v0, "N":I
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 739
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, -0x1

    iput v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 740
    const/4 v5, 0x0

    iput v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 741
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 742
    aget-object v1, v2, v3

    .line 743
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 744
    .local v4, "s":I
    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 745
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 746
    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 747
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 748
    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 749
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 750
    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v4, v5, :cond_3

    iput v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 741
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 752
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "s":I
    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iget v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 621
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v3, p1

    .line 622
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 637
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 627
    .restart local v2    # "result":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 628
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 629
    .local v0, "keyIndex":I
    if-ltz v0, :cond_1

    .line 630
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;

    invoke-virtual {v3, p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;->get(Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 631
    .local v1, "prepared":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, p1

    .line 632
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    move-object v2, v1

    .line 633
    goto :goto_0

    .line 637
    .end local v0    # "keyIndex":I
    .end local v1    # "prepared":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getChildCount()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    return v0
.end method

.method public final getChildren()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 617
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getConstantHeight()I
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 713
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 729
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 721
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 664
    iget-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v5, :cond_0

    .line 665
    const/4 v3, 0x0

    .line 689
    :goto_0
    return-object v3

    .line 668
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    if-eqz v5, :cond_2

    .line 669
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    goto :goto_0

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 674
    const/4 v3, 0x0

    .line 675
    .local v3, "r":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 676
    .local v4, "t":Landroid/graphics/Rect;
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 677
    .local v0, "N":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 678
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_8

    .line 679
    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 680
    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "r":Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 681
    .restart local v3    # "r":Landroid/graphics/Rect;
    :cond_3
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 682
    :cond_4
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 683
    :cond_5
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 684
    :cond_6
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_7

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 678
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 688
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 689
    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public final getConstantWidth()I
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 705
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return v0
.end method

.method public final getOpacity()I
    .locals 5

    .prologue
    .line 771
    iget-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v4, :cond_0

    .line 772
    iget v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mOpacity:I

    .line 787
    :goto_0
    return v3

    .line 775
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 777
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 779
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 780
    .local v0, "N":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 781
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    if-lez v0, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 782
    .local v3, "op":I
    :goto_1
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 783
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 781
    .end local v2    # "i":I
    .end local v3    # "op":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 786
    .restart local v2    # "i":I
    .restart local v3    # "op":I
    :cond_2
    iput v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mOpacity:I

    goto :goto_0
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 813
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 814
    .local v0, "newDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 816
    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantSize:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 791
    iget-boolean v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v5, :cond_0

    .line 792
    iget-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mStateful:Z

    .line 809
    :goto_0
    return v3

    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 797
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 799
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 800
    .local v0, "N":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 801
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 802
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 803
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mStateful:Z

    goto :goto_0

    .line 801
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 808
    :cond_2
    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mStateful:Z

    move v3, v4

    .line 809
    goto :goto_0
.end method

.method final mutate()V
    .locals 4

    .prologue
    .line 643
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 644
    .local v0, "N":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 645
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 646
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 647
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 645
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mMutated:Z

    .line 652
    return-void
.end method

.method public final setConstantSize(Z)V
    .locals 0
    .param p1, "constant"    # Z

    .prologue
    .line 693
    iput-boolean p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 694
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 755
    iput p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 756
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 763
    iput p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 764
    return-void
.end method

.method public final setVariablePadding(Z)V
    .locals 0
    .param p1, "variable"    # Z

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 661
    return-void
.end method
