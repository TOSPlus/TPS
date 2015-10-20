.class Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 238
    const v0, 0x10102f4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 241
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .line 242
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicator:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$100(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mInit:Z
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$200(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawIndicator:Z
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$300(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicator:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$100(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$400(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$400(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$400(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$400(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicator:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$100(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    :cond_0
    return-void
.end method
