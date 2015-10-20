.class Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
.super Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
.source "QromRippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromRippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RippleState"
.end annotation


# instance fields
.field mColor:Landroid/content/res/ColorStateList;

.field mMaxRadius:I

.field mTouchThemeAttrs:[I


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p2, "owner"    # Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 930
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromLayerDrawable;Landroid/content/res/Resources;)V

    .line 925
    const v1, -0xff01

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 927
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mMaxRadius:I

    .line 932
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 933
    check-cast v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    .line 934
    .local v0, "origs":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    iget-object v1, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mTouchThemeAttrs:[I

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 935
    iget-object v1, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 937
    iget v1, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mMaxRadius:I

    iput v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mMaxRadius:I

    .line 939
    .end local v0    # "origs":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 948
    new-instance v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/tencent/qrom/drawable/QromRippleDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 953
    new-instance v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/tencent/qrom/drawable/QromRippleDrawable$1;)V

    return-object v0
.end method
