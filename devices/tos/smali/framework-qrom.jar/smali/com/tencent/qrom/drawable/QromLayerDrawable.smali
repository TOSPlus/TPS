.class public Lcom/tencent/qrom/drawable/QromLayerDrawable;
.super Lcom/tencent/qrom/drawable/QromDrawable;
.source "QromLayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;,
        Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field public static final PADDING_MODE_NEST:I = 0x0

.field public static final PADDING_MODE_STACK:I = 0x1


# instance fields
.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

.field private mMutated:Z

.field private mOpacityOverride:I

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    move-object v0, v1

    check-cast v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    invoke-direct {p0, v0, v1, v1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 119
    return-void
.end method

.method constructor <init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawable;-><init>()V

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mOpacityOverride:I

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->createConstantState(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;)Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    move-result-object v0

    .line 123
    .local v0, "as":Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 124
    iget v1, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    if-lez v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->ensurePadding()V

    .line 127
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)V

    .line 91
    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)V
    .locals 6
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0, p2, v3, v3}, Lcom/tencent/qrom/drawable/QromLayerDrawable;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 102
    array-length v1, p1

    .line 103
    .local v1, "length":I
    new-array v2, v1, [Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 105
    .local v2, "r":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 106
    new-instance v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    invoke-direct {v3}, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;-><init>()V

    aput-object v3, v2, v0

    .line 107
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    iput-object v4, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v4, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildrenChangingConfigurations:I

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildrenChangingConfigurations:I

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iput v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 112
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iput-object v2, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 114
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->ensurePadding()V

    .line 115
    return-void
.end method

.method private computeNestedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 476
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 477
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 478
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 479
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 482
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 483
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 484
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 485
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->refreshChildPadding(ILcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)Z

    .line 487
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 488
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 489
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 490
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return-void
.end method

.method private computeStackedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 495
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 496
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 497
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 498
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 501
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 502
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 503
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 504
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->refreshChildPadding(ILcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)Z

    .line 506
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 507
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 508
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 509
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    :cond_0
    return-void
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 173
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 175
    .local v4, "state":Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 179
    .local v2, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v2, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 180
    :cond_1
    if-ne v5, v8, :cond_0

    .line 184
    if-gt v1, v2, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    new-instance v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    invoke-direct {v3}, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;-><init>()V

    .line 189
    .local v3, "layer":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    sget-object v6, Lcom/tencent/qrom/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, p3, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3, v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->updateLayerFromTypedArray(Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    iget-object v6, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    .line 194
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 196
    if-eq v5, v8, :cond_3

    .line 197
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "child tag defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_4
    iget-object v6, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 205
    iget v6, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildrenChangingConfigurations:I

    iget-object v7, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildrenChangingConfigurations:I

    .line 207
    iget-object v6, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 210
    :cond_5
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->addLayer(Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)V

    goto :goto_0

    .line 212
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v3    # "layer":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_6
    return-void
.end method

.method private refreshChildPadding(ILcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)Z
    .locals 3
    .param p1, "i"    # I
    .param p2, "r"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 762
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 763
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    .line 766
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    .line 767
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    .line 768
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    .line 769
    const/4 v1, 0x1

    .line 771
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLayerFromTypedArray(Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "layer"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 223
    .local v1, "state":Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    const/4 v2, 0x2

    iget v3, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    .line 225
    const/4 v2, 0x3

    iget v3, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    .line 227
    const/4 v2, 0x4

    iget v3, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    .line 229
    const/4 v2, 0x5

    iget v3, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    .line 231
    const/4 v2, 0x0

    iget v3, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    .line 233
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 235
    iput-object v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 160
    .local v0, "state":Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mOpacityOverride:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mOpacityOverride:I

    .line 162
    const/4 v1, 0x1

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z
    invoke-static {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$000(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    # setter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$002(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Z)Z

    .line 164
    const/4 v1, 0x2

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    # setter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v0, v1}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$102(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;I)I

    .line 166
    return-void
.end method


# virtual methods
.method addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .locals 1
    .param p1, "layer"    # Landroid/graphics/drawable/Drawable;
    .param p2, "themeAttrs"    # [I
    .param p3, "id"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 270
    new-instance v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    invoke-direct {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;-><init>()V

    .line 271
    .local v0, "childDrawable":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iput p3, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    .line 272
    iput-object p2, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 273
    iput-object p1, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    iput p4, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    .line 276
    iput p5, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    .line 277
    iput p6, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    .line 278
    iput p7, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    .line 280
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->addLayer(Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)V

    .line 283
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 285
    return-object v0
.end method

.method addLayer(Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)V
    .locals 6
    .param p1, "layer"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 241
    .local v3, "st":Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    iget-object v5, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    array-length v0, v5

    .line 242
    .local v0, "N":I
    :goto_0
    iget v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 243
    .local v1, "i":I
    if-lt v1, v0, :cond_1

    .line 244
    add-int/lit8 v5, v0, 0xa

    new-array v2, v5, [Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 245
    .local v2, "nu":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    if-lez v1, :cond_0

    .line 246
    iget-object v5, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :cond_0
    iput-object v2, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 252
    .end local v2    # "nu":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_1
    iget-object v4, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    aput-object p1, v4, v1

    .line 253
    iget v4, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 254
    invoke-virtual {v3}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->invalidateCache()V

    .line 255
    return-void

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    move v0, v4

    .line 241
    goto :goto_0
.end method

.method createConstantState(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;)Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .locals 1
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 130
    new-instance v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    invoke-direct {v0, p1, p0, p2}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromLayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 450
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 451
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 452
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 453
    aget-object v3, v1, v2

    iget-object v3, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method ensurePadding()V
    .locals 2

    .prologue
    .line 778
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 779
    .local v0, "N":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_0

    .line 787
    :goto_0
    return-void

    .line 783
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    .line 784
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingT:[I

    .line 785
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingR:[I

    .line 786
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingB:[I

    goto :goto_0
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 299
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 300
    .local v1, "layers":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v2, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 301
    aget-object v2, v1, v0

    iget v2, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    .line 302
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 306
    :goto_1
    return-object v2

    .line 300
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 306
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 459
    invoke-super {p0}, Lcom/tencent/qrom/drawable/QromDrawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v1, v1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v1, v1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChangingConfigurations:I

    .line 793
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 795
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 11

    .prologue
    .line 732
    const/4 v3, -0x1

    .line 733
    .local v3, "height":I
    const/4 v7, 0x0

    .line 734
    .local v7, "padT":I
    const/4 v6, 0x0

    .line 736
    .local v6, "padB":I
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v9}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I

    move-result v9

    if-nez v9, :cond_2

    const/4 v5, 0x1

    .line 737
    .local v5, "nest":Z
    :goto_0
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 738
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 739
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 740
    aget-object v8, v1, v4

    .line 741
    .local v8, "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v9, v8, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, v8, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v9, v10

    iget v10, v8, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v9, v10

    add-int/2addr v9, v7

    add-int v2, v9, v6

    .line 742
    .local v2, "h":I
    if-le v2, v3, :cond_0

    .line 743
    move v3, v2

    .line 746
    :cond_0
    if-eqz v5, :cond_1

    .line 747
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingT:[I

    aget v9, v9, v4

    add-int/2addr v7, v9

    .line 748
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingB:[I

    aget v9, v9, v4

    add-int/2addr v6, v9

    .line 739
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 736
    .end local v0    # "N":I
    .end local v1    # "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .end local v2    # "h":I
    .end local v4    # "i":I
    .end local v5    # "nest":Z
    .end local v8    # "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 752
    .restart local v0    # "N":I
    .restart local v1    # "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .restart local v4    # "i":I
    .restart local v5    # "nest":Z
    :cond_3
    return v3
.end method

.method public getIntrinsicWidth()I
    .locals 11

    .prologue
    .line 707
    const/4 v8, -0x1

    .line 708
    .local v8, "width":I
    const/4 v4, 0x0

    .line 709
    .local v4, "padL":I
    const/4 v5, 0x0

    .line 711
    .local v5, "padR":I
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v9}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I

    move-result v9

    if-nez v9, :cond_2

    const/4 v3, 0x1

    .line 712
    .local v3, "nest":Z
    :goto_0
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 713
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 714
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 715
    aget-object v6, v1, v2

    .line 716
    .local v6, "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v9, v6, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget v10, v6, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    add-int v7, v9, v5

    .line 717
    .local v7, "w":I
    if-le v7, v8, :cond_0

    .line 718
    move v8, v7

    .line 721
    :cond_0
    if-eqz v3, :cond_1

    .line 722
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    aget v9, v9, v2

    add-int/2addr v4, v9

    .line 723
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingR:[I

    aget v9, v9, v2

    add-int/2addr v5, v9

    .line 714
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 711
    .end local v0    # "N":I
    .end local v1    # "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .end local v2    # "i":I
    .end local v3    # "nest":Z
    .end local v6    # "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .end local v7    # "w":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 727
    .restart local v0    # "N":I
    .restart local v1    # "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .restart local v2    # "i":I
    .restart local v3    # "nest":Z
    :cond_3
    return v8
.end method

.method public getNumberOfLayers()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mOpacityOverride:I

    if-eqz v0, :cond_0

    .line 607
    iget v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mOpacityOverride:I

    .line 609
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I

    move-result v0

    if-nez v0, :cond_1

    .line 467
    invoke-direct {p0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    .line 472
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 469
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 472
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPaddingMode()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 138
    sget-object v1, Lcom/tencent/qrom/R$styleable;->LayerDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 144
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->ensurePadding()V

    .line 145
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->onStateChange([I)Z

    .line 146
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->invalidateSelf()V

    .line 436
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z
    invoke-static {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$000(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 800
    iget-boolean v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mMutated:Z

    if-nez v3, :cond_1

    invoke-super {p0}, Lcom/tencent/qrom/drawable/QromDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 801
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->createConstantState(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;)Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 802
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 803
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 804
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 805
    aget-object v3, v1, v2

    iget-object v3, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mMutated:Z

    .line 809
    .end local v0    # "N":I
    .end local v1    # "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .end local v2    # "i":I
    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 683
    const/4 v6, 0x0

    .line 684
    .local v6, "padL":I
    const/4 v8, 0x0

    .line 685
    .local v8, "padT":I
    const/4 v7, 0x0

    .line 686
    .local v7, "padR":I
    const/4 v5, 0x0

    .line 688
    .local v5, "padB":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v10}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I

    move-result v10

    if-nez v10, :cond_1

    const/4 v4, 0x1

    .line 689
    .local v4, "nest":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v2, v10, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 690
    .local v2, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v1, v10, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 691
    .local v1, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 692
    aget-object v9, v2, v3

    .line 693
    .local v9, "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v10, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget v12, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v11, v12

    add-int/2addr v11, v6

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget v13, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->right:I

    iget v14, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    iget v15, v9, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 696
    if-eqz v4, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingL:[I

    aget v10, v10, v3

    add-int/2addr v6, v10

    .line 698
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingR:[I

    aget v10, v10, v3

    add-int/2addr v7, v10

    .line 699
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingT:[I

    aget v10, v10, v3

    add-int/2addr v8, v10

    .line 700
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mPaddingB:[I

    aget v10, v10, v3

    add-int/2addr v5, v10

    .line 691
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 688
    .end local v1    # "N":I
    .end local v2    # "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .end local v3    # "i":I
    .end local v4    # "nest":Z
    .end local v9    # "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 703
    .restart local v1    # "N":I
    .restart local v2    # "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .restart local v3    # "i":I
    .restart local v4    # "nest":Z
    :cond_2
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 7
    .param p1, "level"    # I

    .prologue
    .line 658
    const/4 v4, 0x0

    .line 659
    .local v4, "paddingChanged":Z
    const/4 v2, 0x0

    .line 661
    .local v2, "changed":Z
    iget-object v6, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v6, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 662
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v6, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v6, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 663
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 664
    aget-object v5, v1, v3

    .line 665
    .local v5, "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v6, v5, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 666
    const/4 v2, 0x1

    .line 669
    :cond_0
    invoke-direct {p0, v3, v5}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->refreshChildPadding(ILcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 670
    const/4 v4, 0x1

    .line 663
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v5    # "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 675
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 678
    :cond_3
    return v2
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    .line 633
    const/4 v4, 0x0

    .line 634
    .local v4, "paddingChanged":Z
    const/4 v2, 0x0

    .line 636
    .local v2, "changed":Z
    iget-object v6, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v6, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 637
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v6, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v6, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 638
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 639
    aget-object v5, v1, v3

    .line 640
    .local v5, "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v6, v5, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 641
    const/4 v2, 0x1

    .line 644
    :cond_0
    invoke-direct {p0, v3, v5}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->refreshChildPadding(ILcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 645
    const/4 v4, 0x1

    .line 638
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    .end local v5    # "r":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 653
    :cond_3
    return v2
.end method

.method public qromGetAlpha()I
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 572
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v0, v1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 573
    .local v0, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v1, v1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    if-lez v1, :cond_0

    .line 576
    :cond_0
    return v2
.end method

.method public qromGetHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 539
    :cond_0
    return-void
.end method

.method public qromSetHotspot(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 514
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 515
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 516
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method

.method public qromSetHotspotBounds(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 522
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 523
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 524
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 529
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 533
    :goto_1
    return-void

    .line 531
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 440
    invoke-virtual {p0, p2, p3, p4}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 441
    return-void
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 564
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 565
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 566
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 567
    aget-object v3, v1, v2

    iget-object v3, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 4
    .param p1, "mirrored"    # Z

    .prologue
    .line 613
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # setter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z
    invoke-static {v3, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$002(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Z)Z

    .line 615
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 616
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 617
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 582
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 583
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 584
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 585
    aget-object v3, v1, v2

    iget-object v3, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 4
    .param p1, "dither"    # Z

    .prologue
    .line 555
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 556
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 557
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 558
    aget-object v3, v1, v2

    iget-object v3, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 358
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v4, v5, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 359
    .local v4, "layers":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v5, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 360
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 361
    aget-object v2, v4, v3

    .line 362
    .local v2, "childDrawable":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget v5, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    if-ne v5, p1, :cond_3

    .line 363
    iget-object v5, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 364
    if-eqz p2, :cond_0

    .line 365
    iget-object v5, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 366
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 369
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_0
    iget-object v5, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 372
    :cond_1
    if-eqz p2, :cond_2

    .line 373
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 376
    :cond_2
    iput-object p2, v2, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 377
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    invoke-virtual {v5}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->invalidateCache()V

    .line 378
    const/4 v5, 0x1

    .line 382
    .end local v2    # "childDrawable":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :goto_1
    return v5

    .line 360
    .restart local v2    # "childDrawable":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "childDrawable":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setId(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "id"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    .line 317
    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 395
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 396
    .local v0, "childDrawable":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iput p2, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    .line 397
    iput p3, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    .line 398
    iput p4, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    .line 399
    iput p5, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    .line 400
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .param p1, "opacity"    # I

    .prologue
    .line 601
    iput p1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mOpacityOverride:I

    .line 602
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # getter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v0}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    # setter for: Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I
    invoke-static {v0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->access$102(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;I)I

    .line 421
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 543
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromDrawable;->setVisible(ZZ)Z

    move-result v2

    .line 544
    .local v2, "changed":Z
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v1, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 545
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v0, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 546
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 547
    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 550
    :cond_0
    return v2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 445
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method
