.class public Lcom/tencent/qrom/widget/Spinner;
.super Lcom/tencent/qrom/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/Spinner$1;,
        Lcom/tencent/qrom/widget/Spinner$DropdownPopup;,
        Lcom/tencent/qrom/widget/Spinner$DialogPopup;,
        Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;,
        Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mGravity:I

.field private mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

.field private mSpinneMode:I

.field private mTempAdapter:Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    const v1, 0x7a010090

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/tencent/qrom/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const v0, 0x7a010090

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 135
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput v8, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    .line 83
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/tencent/qrom/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 158
    sget-object v4, Lcom/tencent/qrom/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    iput p4, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    .line 163
    iget v4, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 164
    const-string v4, "Spinner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Spinner a= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; mSpinneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    .line 168
    :cond_0
    iget v4, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    packed-switch v4, :pswitch_data_0

    .line 199
    :goto_0
    const/16 v4, 0x11

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/widget/Spinner;->mGravity:I

    .line 201
    iget-object v4, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 205
    iput-boolean v8, p0, Lcom/tencent/qrom/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 207
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    iget-object v4, p0, Lcom/tencent/qrom/widget/Spinner;->mTempAdapter:Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;

    if-eqz v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner;->mTempAdapter:Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;

    invoke-interface {v4, v5}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iput-object v9, p0, Lcom/tencent/qrom/widget/Spinner;->mTempAdapter:Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;

    .line 215
    :cond_1
    return-void

    .line 170
    :pswitch_0
    new-instance v4, Lcom/tencent/qrom/widget/Spinner$DialogPopup;

    invoke-direct {v4, p0, v9}, Lcom/tencent/qrom/widget/Spinner$DialogPopup;-><init>(Lcom/tencent/qrom/widget/Spinner;Lcom/tencent/qrom/widget/Spinner$1;)V

    iput-object v4, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    goto :goto_0

    .line 175
    :pswitch_1
    new-instance v2, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;-><init>(Lcom/tencent/qrom/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    .local v2, "popup":Lcom/tencent/qrom/widget/Spinner$DropdownPopup;
    const/4 v4, -0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/widget/Spinner;->mDropDownWidth:I

    .line 180
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a02019c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0202a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 182
    const/4 v3, 0x0

    .line 188
    .local v3, "verticalOffset":I
    const/4 v1, 0x0

    .line 194
    .local v1, "horizontalOffset":I
    iput-object v2, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/Spinner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Spinner;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 393
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/Spinner;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/tencent/qrom/widget/Spinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 409
    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 404
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 407
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 409
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 423
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 427
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Lcom/tencent/qrom/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 429
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 430
    iget-boolean v8, p0, Lcom/tencent/qrom/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v8, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 435
    :cond_1
    iget v8, p0, Lcom/tencent/qrom/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 437
    .local v1, "childHeightSpec":I
    iget v8, p0, Lcom/tencent/qrom/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 441
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 447
    iget-object v8, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 450
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 452
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 453
    .local v7, "width":I
    const/4 v2, 0x0

    .line 454
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 456
    .local v3, "childRight":I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 457
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 262
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 269
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 271
    .local v1, "childBaseline":I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 273
    .end local v1    # "childBaseline":I
    :cond_1
    return v2

    .line 263
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 264
    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    .line 265
    iget-object v3, p0, Lcom/tencent/qrom/widget/Spinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, v4, v0}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 266
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->removeAllViewsInLayout()V

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 8
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    .line 331
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 332
    .local v0, "childrenLeft":I
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mRight:I

    iget v6, p0, Lcom/tencent/qrom/widget/Spinner;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 334
    .local v1, "childrenWidth":I
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/Spinner;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->handleDataChanged()V

    .line 339
    :cond_0
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mItemCount:I

    if-nez v5, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->resetList()V

    .line 378
    :goto_0
    return-void

    .line 344
    :cond_1
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v5, :cond_2

    .line 345
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/Spinner;->setSelectedPositionInt(I)V

    .line 348
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->recycleAllViews()V

    .line 351
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->removeAllViewsInLayout()V

    .line 354
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mSelectedPosition:I

    iput v5, p0, Lcom/tencent/qrom/widget/Spinner;->mFirstPosition:I

    .line 355
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mSelectedPosition:I

    invoke-direct {p0, v5}, Lcom/tencent/qrom/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 356
    .local v2, "sel":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 357
    .local v4, "width":I
    move v3, v0

    .line 358
    .local v3, "selectedOffset":I
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mGravity:I

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    .line 366
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 369
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->clear()V

    .line 371
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->invalidate()V

    .line 373
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->checkSelectionChanged()V

    .line 375
    iput-boolean v7, p0, Lcom/tencent/qrom/widget/Spinner;->mDataChanged:Z

    .line 376
    iput-boolean v7, p0, Lcom/tencent/qrom/widget/Spinner;->mNeedSync:Z

    .line 377
    iget v5, p0, Lcom/tencent/qrom/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/Spinner;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 360
    :sswitch_0
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    .line 361
    goto :goto_1

    .line 363
    :sswitch_1
    add-int v5, v0, v1

    sub-int v3, v5, v4

    goto :goto_1

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 503
    if-nez p1, :cond_1

    .line 504
    const/4 v8, 0x0

    .line 543
    :cond_0
    :goto_0
    return v8

    .line 507
    :cond_1
    const/4 v8, 0x0

    .line 508
    .local v8, "width":I
    const/4 v5, 0x0

    .line 509
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 510
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 512
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 517
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 518
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 519
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 520
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 521
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 522
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 523
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 524
    move v4, v6

    .line 525
    const/4 v5, 0x0

    .line 527
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 528
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 529
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 534
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 538
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 539
    iget-object v10, p0, Lcom/tencent/qrom/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 540
    iget-object v10, p0, Lcom/tencent/qrom/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/tencent/qrom/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 475
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/widget/Spinner;->setSelection(I)V

    .line 476
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 477
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 281
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 284
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-super/range {p0 .. p5}, Lcom/tencent/qrom/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/Spinner;->mInLayout:Z

    .line 319
    invoke-virtual {p0, v1, v1}, Lcom/tencent/qrom/widget/Spinner;->layout(IZ)V

    .line 320
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/Spinner;->mInLayout:Z

    .line 321
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsSpinner;->onMeasure(II)V

    .line 300
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 302
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/widget/Spinner;->setMeasuredDimension(II)V

    .line 307
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 461
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 463
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 466
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->show()V

    .line 471
    :cond_0
    return v0
.end method

.method public qromSetCustomListHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->qromSetCustomListHeight(I)V

    .line 854
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 53
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const v4, 0x7a0d003c

    .line 248
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 250
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    new-instance v1, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;

    iget v2, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;IF)V

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    new-instance v0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;

    iget v1, p0, Lcom/tencent/qrom/widget/Spinner;->mSpinneMode:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;IF)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mTempAdapter:Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsSpinner;->setEnabled(Z)V

    .line 220
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getChildCount()I

    move-result v0

    .line 222
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 223
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 237
    iget v0, p0, Lcom/tencent/qrom/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 238
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 239
    or-int/lit8 p1, p1, 0x3

    .line 241
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/widget/Spinner;->mGravity:I

    .line 242
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->requestLayout()V

    .line 244
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner;->mPopup:Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method
