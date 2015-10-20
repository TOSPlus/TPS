.class Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;
.super Ljava/lang/Object;
.source "QromDrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstantStateFuture"
.end annotation


# instance fields
.field private final mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "source"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 849
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/tencent/qrom/drawable/QromDrawableContainer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x1"    # Lcom/tencent/qrom/drawable/QromDrawableContainer$1;

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    .prologue
    .line 858
    iget-object v1, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 860
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mOwner:Lcom/tencent/qrom/drawable/QromDrawableContainer;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 862
    iget-boolean v1, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mMutated:Z

    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 866
    :cond_0
    return-object v0

    .line 858
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v2, p1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
