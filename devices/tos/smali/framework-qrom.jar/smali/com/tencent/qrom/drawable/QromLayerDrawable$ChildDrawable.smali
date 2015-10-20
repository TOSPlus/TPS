.class Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "QromLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mId:I

.field public mInsetB:I

.field public mInsetL:I

.field public mInsetR:I

.field public mInsetT:I

.field public mThemeAttrs:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    .line 829
    return-void
.end method

.method constructor <init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;Lcom/tencent/qrom/drawable/QromLayerDrawable;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    .param p2, "owner"    # Lcom/tencent/qrom/drawable/QromLayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    .line 832
    if-eqz p3, :cond_0

    .line 833
    iget-object v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 837
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 839
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 840
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 841
    iget-object v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 842
    iget v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetL:I

    .line 843
    iget v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetT:I

    .line 844
    iget v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetR:I

    .line 845
    iget v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mInsetB:I

    .line 846
    iget v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    iput v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    .line 847
    return-void

    .line 835
    :cond_0
    iget-object v0, p1, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
