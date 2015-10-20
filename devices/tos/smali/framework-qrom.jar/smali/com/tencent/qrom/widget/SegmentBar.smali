.class public Lcom/tencent/qrom/widget/SegmentBar;
.super Landroid/widget/LinearLayout;
.source "SegmentBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/SegmentBar$1;,
        Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;,
        Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;,
        Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;,
        Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/SegmentBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const v0, 0x7a0101e1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/SegmentBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v3, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    .line 22
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z

    .line 39
    sget-object v2, Lcom/tencent/qrom/R$styleable;->SegmentBar:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 42
    .local v1, "value":I
    if-eq v1, v3, :cond_0

    .line 43
    iput v1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SegmentBar;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/SegmentBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SegmentBar;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/widget/SegmentBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SegmentBar;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/SegmentBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SegmentBar;

    .prologue
    .line 16
    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/SegmentBar;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SegmentBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/SegmentBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SegmentBar;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/SegmentBar;)Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SegmentBar;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mChildOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;-><init>(Lcom/tencent/qrom/widget/SegmentBar;Lcom/tencent/qrom/widget/SegmentBar$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mChildOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    .line 52
    new-instance v0, Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;-><init>(Lcom/tencent/qrom/widget/SegmentBar;Lcom/tencent/qrom/widget/SegmentBar$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mPassThroughListener:Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;

    .line 53
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mPassThroughListener:Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 54
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    .line 163
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;

    iget v1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;->onCheckedChanged(Lcom/tencent/qrom/widget/SegmentBar;I)V

    .line 166
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/SegmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tencent/qrom/widget/SegmentButton;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Lcom/tencent/qrom/widget/SegmentButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/SegmentButton;->setChecked(Z)V

    .line 173
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

    .line 84
    instance-of v1, p1, Lcom/tencent/qrom/widget/SegmentButton;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/tencent/qrom/widget/SegmentButton;

    .line 86
    .local v0, "button":Lcom/tencent/qrom/widget/SegmentButton;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/SegmentButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z

    .line 88
    iget v1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 89
    iget v1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedStateForView(IZ)V

    .line 91
    :cond_0
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z

    .line 92
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/SegmentButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedId(I)V

    .line 95
    .end local v0    # "button":Lcom/tencent/qrom/widget/SegmentButton;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState()V

    .line 98
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 146
    if-eq p1, v2, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 150
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 151
    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedStateForView(IZ)V

    .line 154
    :cond_1
    if-eq p1, v2, :cond_2

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedStateForView(IZ)V

    .line 158
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 230
    instance-of v0, p1, Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/SegmentBar;->check(I)V

    .line 203
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentBar;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 235
    new-instance v0, Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/SegmentBar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/SegmentBar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 222
    new-instance v0, Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tencent/qrom/widget/SegmentBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedSegmentButtonId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 73
    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 74
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z

    .line 75
    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedStateForView(IZ)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z

    .line 77
    iget v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/SegmentBar;->setCheckedId(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState()V

    .line 80
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 241
    const-class v0, Lcom/tencent/qrom/widget/SegmentBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 247
    const-class v0, Lcom/tencent/qrom/widget/SegmentBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/tencent/qrom/widget/SegmentBar;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentBar$OnCheckedChangeListener;

    .line 215
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentBar;->mPassThroughListener:Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;

    # setter for: Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;->access$202(Lcom/tencent/qrom/widget/SegmentBar$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 63
    return-void
.end method

.method public updateChildBackgroundState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-super {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 102
    .local v0, "count":I
    if-le v0, v4, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentBar;->getOrientation()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 104
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    .line 105
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 106
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x7d2

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    add-int/lit8 v2, v0, -0x1

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    .line 123
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 110
    :cond_1
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    .line 111
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 112
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    goto :goto_1

    .line 117
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentBar;->getOrientation()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 118
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    goto :goto_1

    .line 120
    :cond_4
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->updateChildBackgroundState(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public updateChildBackgroundState(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childState"    # I

    .prologue
    .line 126
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tencent/qrom/widget/SegmentButton;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lcom/tencent/qrom/widget/SegmentButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/tencent/qrom/widget/SegmentButton;->setBackgroundState(I)V

    .line 129
    :cond_0
    return-void
.end method
