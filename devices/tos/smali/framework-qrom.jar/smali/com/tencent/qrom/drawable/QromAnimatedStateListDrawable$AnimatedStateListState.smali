.class Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
.super Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;
.source "QromAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSE_MASK:I = 0x1

.field private static final REVERSE_SHIFT:I = 0x20


# instance fields
.field final mStateIds:Landroid/util/SparseIntArray;

.field mStateSets:[[I

.field final mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "owner"    # Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 484
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;-><init>(Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;Lcom/tencent/qrom/drawable/QromDrawableContainer;Landroid/content/res/Resources;)V

    .line 486
    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p1, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;

    invoke-virtual {v0}, Lcom/tencent/qrom/utils/LongSparseLongArray;->clone()Lcom/tencent/qrom/utils/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;

    .line 488
    iget-object v0, p1, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 489
    iget-object v0, p1, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    iget-object v1, p1, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    .line 495
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Lcom/tencent/qrom/utils/LongSparseLongArray;

    invoke-direct {v0}, Lcom/tencent/qrom/utils/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;

    .line 492
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 493
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    goto :goto_0
.end method

.method private static generateTransitionKey(II)J
    .locals 4
    .param p0, "fromId"    # I
    .param p1, "toId"    # I

    .prologue
    .line 567
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private indexOfStateSet([I)I
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    .line 532
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    .line 533
    .local v2, "stateSets":[[I
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->getChildCount()I

    move-result v0

    .line 534
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 535
    aget-object v3, v2, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 534
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 517
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 518
    .local v0, "pos":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 519
    return v0
.end method

.method addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .prologue
    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 512
    .local v0, "index":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 513
    return v0
.end method

.method addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 10
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3, "anim"    # Landroid/graphics/drawable/Drawable;
    .param p4, "reversible"    # Z

    .prologue
    .line 498
    invoke-super {p0, p3}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 499
    .local v4, "pos":I
    invoke-static {p1, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 500
    .local v0, "keyFromTo":J
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;

    int-to-long v6, v4

    invoke-virtual {v5, v0, v1, v6, v7}, Lcom/tencent/qrom/utils/LongSparseLongArray;->append(JJ)V

    .line 502
    if-eqz p4, :cond_0

    .line 503
    invoke-static {p2, p1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v2

    .line 504
    .local v2, "keyToFrom":J
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;

    int-to-long v6, v4

    const-wide v8, 0x100000000L

    or-long/2addr v6, v8

    invoke-virtual {v5, v2, v3, v6, v7}, Lcom/tencent/qrom/utils/LongSparseLongArray;->append(JJ)V

    .line 507
    .end local v2    # "keyToFrom":J
    :cond_0
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    return v5
.end method

.method getKeyframeIdAt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 543
    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 572
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->growArray(II)V

    .line 573
    new-array v0, p2, [[I

    .line 574
    .local v0, "newStateSets":[[I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mStateSets:[[I

    .line 576
    return-void
.end method

.method indexOfKeyframe([I)I
    .locals 2
    .param p1, "stateSet"    # [I

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->indexOfStateSet([I)I

    move-result v0

    .line 524
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 528
    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-direct {p0, v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->indexOfStateSet([I)I

    move-result v0

    goto :goto_0
.end method

.method indexOfTransition(II)I
    .locals 5
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .prologue
    .line 547
    invoke-static {p1, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 548
    .local v0, "keyFromTo":J
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/tencent/qrom/utils/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method isTransitionReversed(II)Z
    .locals 7
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .prologue
    const-wide/16 v5, 0x1

    .line 552
    invoke-static {p1, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 553
    .local v0, "keyFromTo":J
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Lcom/tencent/qrom/utils/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/tencent/qrom/utils/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    and-long/2addr v2, v5

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    new-instance v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 563
    new-instance v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;)V

    return-object v0
.end method
