.class Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "QromLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QromLayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveIsStateful:Z

.field private mHaveOpacity:Z

.field private mIsStateful:Z

.field mNum:I

.field private mOpacity:I

.field private mPaddingMode:I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromLayerDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p2, "owner"    # Lcom/tencent/qrom/drawable/QromLayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 868
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 864
    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z

    .line 866
    iput v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I

    .line 869
    if-eqz p1, :cond_1

    .line 870
    iget-object v3, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 871
    .local v3, "origChildDrawable":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 873
    .local v0, "N":I
    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 874
    new-array v4, v0, [Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 876
    iget v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChangingConfigurations:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChangingConfigurations:I

    .line 877
    iget v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildrenChangingConfigurations:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildrenChangingConfigurations:I

    .line 879
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 880
    aget-object v2, v3, v1

    .line 881
    .local v2, "or":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    new-instance v5, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    invoke-direct {v5, v2, p2, p3}, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;Lcom/tencent/qrom/drawable/QromLayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v1

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v2    # "or":Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :cond_0
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveOpacity:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveOpacity:Z

    .line 885
    iget v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mOpacity:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mOpacity:I

    .line 886
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveIsStateful:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveIsStateful:Z

    .line 887
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mIsStateful:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mIsStateful:Z

    .line 888
    iget-boolean v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z

    .line 889
    iget v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I

    iput v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I

    .line 890
    iget-object v4, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mThemeAttrs:[I

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mThemeAttrs:[I

    .line 895
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "origChildDrawable":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    :goto_1
    return-void

    .line 892
    :cond_1
    iput v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 893
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p1, "x1"    # Z

    .prologue
    .line 850
    iput-boolean p1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .prologue
    .line 850
    iget v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p1, "x1"    # I

    .prologue
    .line 850
    iput p1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mPaddingMode:I

    return p1
.end method


# virtual methods
.method public final canConstantState()Z
    .locals 4

    .prologue
    .line 954
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 955
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 956
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 957
    aget-object v3, v1, v2

    iget-object v3, v3, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_0

    .line 958
    const/4 v3, 0x0

    .line 963
    :goto_1
    return v3

    .line 956
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getOpacity()I
    .locals 5

    .prologue
    .line 917
    iget-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveOpacity:Z

    if-eqz v4, :cond_0

    .line 918
    iget v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mOpacity:I

    .line 930
    :goto_0
    return v3

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 922
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 923
    .local v0, "N":I
    if-lez v0, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v4, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 924
    .local v3, "op":I
    :goto_1
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 925
    aget-object v4, v1, v2

    iget-object v4, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 924
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 923
    .end local v2    # "i":I
    .end local v3    # "op":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 928
    .restart local v2    # "i":I
    .restart local v3    # "op":I
    :cond_2
    iput v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mOpacity:I

    .line 929
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveOpacity:Z

    goto :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 967
    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveOpacity:Z

    .line 968
    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveIsStateful:Z

    .line 969
    return-void
.end method

.method public final isStateful()Z
    .locals 5

    .prologue
    .line 934
    iget-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveIsStateful:Z

    if-eqz v4, :cond_0

    .line 935
    iget-boolean v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mIsStateful:Z

    .line 950
    :goto_0
    return v3

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 939
    .local v1, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 940
    .local v0, "N":I
    const/4 v3, 0x0

    .line 941
    .local v3, "isStateful":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 942
    aget-object v4, v1, v2

    iget-object v4, v4, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 943
    const/4 v3, 0x1

    .line 948
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mIsStateful:Z

    .line 949
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mHaveIsStateful:Z

    goto :goto_0

    .line 941
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 899
    new-instance v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 904
    new-instance v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 908
    new-instance v0, Lcom/tencent/qrom/drawable/QromLayerDrawable;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qrom/drawable/QromLayerDrawable;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method
