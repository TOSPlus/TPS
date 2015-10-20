.class public Lcom/tencent/qrom/widget/CheckBox;
.super Landroid/widget/CompoundButton;
.source "CheckBox.java"


# instance fields
.field final checkOffDisableResId:I

.field final checkOffDisableState:[I

.field final checkOffKeyframeId:I

.field final checkOffResId:I

.field final checkOffState:[I

.field final checkOnDisableResId:I

.field final checkOnDisableState:[I

.field final checkOnResId:I

.field final checkOnState:[I

.field final checkOnkeyframeId:I

.field final checkToOffResId:I

.field final checkToOnResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const v1, 0x7a010073

    invoke-direct {p0, p1, p2, v1}, Lcom/tencent/qrom/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 50
    const/4 v1, 0x1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 52
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/qrom/widget/CheckBox;->setPadding(IIII)V

    .line 54
    .end local v0    # "paddingLeft":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "isAnimation"    # Z

    .prologue
    const/4 v1, 0x2

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOnDisableState:[I

    .line 31
    const v0, 0x7a02002e

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOnDisableResId:I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOffDisableState:[I

    .line 33
    const v0, 0x7a020022

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOffDisableResId:I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOnState:[I

    .line 35
    const v0, 0x7a020057

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOnResId:I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOffState:[I

    .line 37
    const v0, 0x7a020048

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOffResId:I

    .line 38
    const v0, 0x7a09015a

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOnkeyframeId:I

    .line 39
    const v0, 0x7a09015b

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOffKeyframeId:I

    .line 40
    const v0, 0x7a020047

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkToOnResId:I

    .line 41
    const v0, 0x7a020036

    iput v0, p0, Lcom/tencent/qrom/widget/CheckBox;->checkToOffResId:I

    .line 62
    invoke-virtual {p0, p4}, Lcom/tencent/qrom/widget/CheckBox;->setAnimationButtonDrawable(Z)V

    .line 63
    return-void

    .line 30
    :array_0
    .array-data 4
        0x10100a0
        -0x101009e
    .end array-data

    .line 32
    :array_1
    .array-data 4
        -0x10100a0
        -0x101009e
    .end array-data

    .line 34
    :array_2
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    .line 36
    :array_3
    .array-data 4
        -0x10100a0
        0x101009e
    .end array-data
.end method


# virtual methods
.method public setAnimationButtonDrawable(Z)V
    .locals 9
    .param p1, "isAnimation"    # Z

    .prologue
    const v8, 0x7a09015b

    const v7, 0x7a09015a

    const/4 v6, 0x0

    .line 66
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;

    invoke-direct {v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;-><init>()V

    .line 68
    .local v0, "drawable":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOffDisableState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 69
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOnDisableState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a02002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 70
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOffState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v8}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 71
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckBox;->checkOnState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 72
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 73
    .local v2, "toOnDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 74
    .local v1, "toOffDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 75
    invoke-virtual {v0, v7, v8, v1, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .end local v0    # "drawable":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
    .end local v1    # "toOffDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "toOnDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 83
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckBox;->setAnimationButtonDrawable(Z)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
