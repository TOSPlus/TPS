.class Lcom/tencent/qrom/widget/SideBar$2;
.super Ljava/lang/Object;
.source "SideBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/SideBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/SideBar;

.field final synthetic val$a:I

.field final synthetic val$b:I

.field final synthetic val$g:I

.field final synthetic val$r:I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/SideBar;IIII)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/tencent/qrom/widget/SideBar$2;->this$0:Lcom/tencent/qrom/widget/SideBar;

    iput p2, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$a:I

    iput p3, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$r:I

    iput p4, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$g:I

    iput p5, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 437
    .local v1, "value":F
    iget v2, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$a:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 438
    .local v0, "alpha":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/SideBar$2;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$r:I

    iget v4, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$g:I

    iget v5, p0, Lcom/tencent/qrom/widget/SideBar$2;->val$b:I

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    return-void
.end method
