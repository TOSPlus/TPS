.class public Lcom/tencent/qrom/widget/RadioGroup;
.super Landroid/widget/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/RadioGroup$1;,
        Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;,
        Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;,
        Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/RadioGroup;->setOrientation(I)V

    .line 46
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RadioGroup;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v5, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    .line 36
    iput-boolean v6, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 57
    sget-object v3, Lcom/tencent/qrom/R$styleable;->RadioGroup:[I

    const v4, 0x7a01008d

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 61
    .local v2, "value":I
    if-eq v2, v5, :cond_0

    .line 62
    iput v2, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    .line 65
    :cond_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 66
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/RadioGroup;->setOrientation(I)V

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RadioGroup;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/RadioGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/widget/RadioGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/RadioGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;

    .prologue
    .line 30
    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/RadioGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/RadioGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;-><init>(Lcom/tencent/qrom/widget/RadioGroup;Lcom/tencent/qrom/widget/RadioGroup$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 74
    new-instance v0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/tencent/qrom/widget/RadioGroup;Lcom/tencent/qrom/widget/RadioGroup$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mPassThroughListener:Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;

    .line 75
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mPassThroughListener:Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 76
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    .line 149
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/tencent/qrom/widget/RadioGroup;I)V

    .line 152
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tencent/qrom/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 157
    check-cast v0, Lcom/tencent/qrom/widget/RadioButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/RadioButton;->setChecked(Z)V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 105
    instance-of v1, p1, Lcom/tencent/qrom/widget/RadioButton;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/tencent/qrom/widget/RadioButton;

    .line 107
    .local v0, "button":Lcom/tencent/qrom/widget/RadioButton;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 109
    iget v1, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 110
    iget v1, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 112
    :cond_0
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 113
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RadioButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedId(I)V

    .line 117
    .end local v0    # "button":Lcom/tencent/qrom/widget/RadioButton;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 132
    if-eq p1, v2, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 136
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 137
    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 140
    :cond_1
    if-eq p1, v2, :cond_2

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 144
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 211
    instance-of v0, p1, Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/RadioGroup;->check(I)V

    .line 186
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/RadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 216
    new-instance v0, Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 203
    new-instance v0, Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tencent/qrom/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 95
    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 97
    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 99
    iget v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/RadioGroup;->setCheckedId(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/tencent/qrom/widget/RadioGroup;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/RadioGroup$OnCheckedChangeListener;

    .line 196
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup;->mPassThroughListener:Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;

    # setter for: Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 85
    return-void
.end method
