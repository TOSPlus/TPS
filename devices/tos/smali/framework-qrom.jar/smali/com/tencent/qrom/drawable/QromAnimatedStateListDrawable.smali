.class public Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
.super Lcom/tencent/qrom/drawable/QromDrawableContainer;
.source "QromAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;,
        Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;,
        Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;,
        Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;,
        Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatableTransition;,
        Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z = true

.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mMutated:Z

.field private mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

.field private mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, -0x1

    .line 585
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;-><init>()V

    .line 79
    iput v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    .line 82
    iput v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 587
    new-instance v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    invoke-direct {v0, p1, p0, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .line 588
    .local v0, "newState":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->setConstantState(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;)V

    .line 589
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->onStateChange([I)Z

    .line 590
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->jumpToCurrentState()V

    .line 591
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private getAnimatedStateListState()Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    return-object v0
.end method

.method private parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 15
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, "drawableRes":I
    const/4 v7, 0x0

    .line 423
    .local v7, "keyframeId":I
    const/4 v5, 0x0

    .line 424
    .local v5, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 425
    .local v8, "numAttrs":I
    new-array v10, v8, [I

    .line 426
    .local v10, "states":[I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_0
    if-ge v4, v8, :cond_1

    .line 427
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v9

    .line 428
    .local v9, "stateResId":I
    sparse-switch v9, :sswitch_data_0

    .line 438
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v12}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    .line 439
    .local v3, "hasState":Z
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    if-eqz v3, :cond_0

    .end local v9    # "stateResId":I
    :goto_1
    aput v9, v10, v6

    .line 426
    .end local v3    # "hasState":Z
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_0

    .restart local v9    # "stateResId":I
    :sswitch_0
    move v5, v6

    .line 430
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_2

    .line 432
    .end local v5    # "j":I
    .restart local v6    # "j":I
    :sswitch_1
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v12}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v7

    move v5, v6

    .line 433
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_2

    .line 435
    .end local v5    # "j":I
    .restart local v6    # "j":I
    :sswitch_2
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v12}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v2

    move v5, v6

    .line 436
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_2

    .line 439
    .restart local v3    # "hasState":Z
    :cond_0
    neg-int v9, v9

    goto :goto_1

    .line 442
    .end local v3    # "hasState":Z
    .end local v5    # "j":I
    .end local v9    # "stateResId":I
    .restart local v6    # "j":I
    :cond_1
    invoke-static {v10, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v10

    .line 445
    if-eqz v2, :cond_2

    .line 446
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 460
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v12, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v12, v10, v1, v7}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v12

    return v12

    .line 449
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_2

    .line 451
    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 452
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "child tag defining a drawable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 457
    :cond_3
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 428
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10100d0 -> :sswitch_1
        0x1010199 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 12
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, "drawableRes":I
    const/4 v2, 0x0

    .line 374
    .local v2, "fromId":I
    const/4 v7, 0x0

    .line 375
    .local v7, "toId":I
    const/4 v5, 0x0

    .line 377
    .local v5, "reversible":Z
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    .line 378
    .local v4, "numAttrs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 379
    invoke-interface {p3, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v6

    .line 380
    .local v6, "stateResId":I
    sparse-switch v6, :sswitch_data_0

    .line 378
    :goto_1
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    :sswitch_1
    const/4 v9, 0x0

    invoke-interface {p3, v3, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v2

    .line 385
    goto :goto_1

    .line 387
    :sswitch_2
    const/4 v9, 0x0

    invoke-interface {p3, v3, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v7

    .line 388
    goto :goto_1

    .line 390
    :sswitch_3
    const/4 v9, 0x0

    invoke-interface {p3, v3, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v1

    .line 391
    goto :goto_1

    .line 393
    :sswitch_4
    const/4 v9, 0x0

    invoke-interface {p3, v3, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    goto :goto_1

    .line 399
    .end local v6    # "stateResId":I
    :cond_0
    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 414
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v9, v2, v7, v0, v5}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v9

    return v9

    .line 403
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 405
    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 406
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "child tag defining a drawable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 411
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1010199 -> :sswitch_3
        0x7a0101fb -> :sswitch_1
        0x7a0101fc -> :sswitch_2
        0x7a0101fe -> :sswitch_4
    .end sparse-switch
.end method

.method private selectTransition(I)Z
    .locals 13
    .param p1, "toIndex"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 172
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    .line 173
    .local v0, "currentTransition":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
    if-eqz v0, :cond_3

    .line 174
    iget v11, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    if-ne p1, v11, :cond_0

    .line 234
    :goto_0
    return v9

    .line 177
    :cond_0
    iget v11, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionFromIndex:I

    if-ne p1, v11, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;->canReverse()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;->reverse()V

    .line 180
    iget v10, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionFromIndex:I

    iput v10, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    .line 181
    iput p1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionFromIndex:I

    goto :goto_0

    .line 186
    :cond_1
    iget v3, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    .line 189
    .local v3, "fromIndex":I
    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;->stop()V

    .line 195
    :goto_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    .line 196
    iput v12, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 197
    iput v12, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    .line 199
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    .line 200
    .local v5, "state":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {v5, v3}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v2

    .line 201
    .local v2, "fromId":I
    invoke-virtual {v5, p1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v6

    .line 203
    .local v6, "toId":I
    if-eqz v6, :cond_2

    if-nez v2, :cond_4

    :cond_2
    move v9, v10

    .line 205
    goto :goto_0

    .line 191
    .end local v2    # "fromId":I
    .end local v3    # "fromIndex":I
    .end local v5    # "state":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    .end local v6    # "toId":I
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    .restart local v3    # "fromIndex":I
    goto :goto_1

    .line 208
    .restart local v2    # "fromId":I
    .restart local v5    # "state":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    .restart local v6    # "toId":I
    :cond_4
    invoke-virtual {v5, v2, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    move-result v8

    .line 209
    .local v8, "transitionIndex":I
    if-gez v8, :cond_5

    move v9, v10

    .line 211
    goto :goto_0

    .line 215
    :cond_5
    invoke-virtual {p0, v8}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->selectDrawable(I)Z

    .line 218
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v11, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v11, :cond_6

    .line 220
    invoke-virtual {v5, v2, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v4

    .line 221
    .local v4, "reversed":Z
    new-instance v7, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v7, v1, v4}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 229
    .end local v4    # "reversed":Z
    .local v7, "transition":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
    :goto_2
    invoke-virtual {v7}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;->start()V

    .line 231
    iput-object v7, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    .line 232
    iput v3, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 233
    iput p1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    goto :goto_0

    .line 222
    .end local v7    # "transition":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v11, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v11, :cond_7

    .line 223
    new-instance v7, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatableTransition;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v7, v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    .restart local v7    # "transition":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
    goto :goto_2

    .end local v7    # "transition":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    move v9, v10

    .line 226
    goto :goto_0
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    .line 120
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->onStateChange([I)Z

    .line 121
    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p4, "reversible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    if-nez p3, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transition drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    .line 138
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 327
    sget-object v5, Lcom/tencent/qrom/R$styleable;->AnimatedStateListDrawable:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 329
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getAnimatedStateListState()Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    move-result-object v3

    .line 330
    .local v3, "stateListState":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->setVariablePadding(Z)V

    .line 332
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->setConstantSize(Z)V

    .line 334
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->setEnterFadeDuration(I)V

    .line 336
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->setExitFadeDuration(I)V

    .line 339
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->setDither(Z)V

    .line 342
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 346
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 349
    .local v2, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v7, :cond_3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v2, :cond_1

    if-eq v4, v9, :cond_3

    .line 351
    :cond_1
    if-ne v4, v8, :cond_0

    .line 355
    if-gt v1, v2, :cond_0

    .line 359
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 360
    invoke-direct {p0, p1, p2, p3, v10}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 361
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "transition"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    invoke-direct {p0, p1, p2, p3, v10}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 366
    .end local v1    # "depth":I
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getState()[I

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->onStateChange([I)Z

    .line 367
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 310
    invoke-super {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->jumpToCurrentState()V

    .line 312
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;->stop()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    .line 317
    iget v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->selectDrawable(I)Z

    .line 318
    iput v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionToIndex:I

    .line 319
    iput v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 321
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 465
    iget-boolean v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mMutated:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 466
    new-instance v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .line 467
    .local v0, "newState":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->setConstantState(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;)V

    .line 468
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mMutated:Z

    .line 471
    .end local v0    # "newState":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v1

    .line 148
    .local v1, "keyframeIndex":I
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 167
    .end local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v2

    .line 154
    .restart local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    .end local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->selectTransition(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->selectDrawable(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    invoke-super {p0, p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->onStateChange([I)Z

    move-result v2

    goto :goto_0
.end method

.method setConstantState(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;)V
    .locals 0
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->setConstantState(Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;)V

    .line 582
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mState:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatedStateListState;

    .line 583
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->setVisible(ZZ)Z

    move-result v0

    .line 95
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 96
    :cond_0
    if-eqz p1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->mTransition:Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;->start()V

    .line 104
    :cond_1
    :goto_0
    return v0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->jumpToCurrentState()V

    goto :goto_0
.end method
