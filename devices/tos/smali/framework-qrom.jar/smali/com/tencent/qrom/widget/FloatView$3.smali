.class Lcom/tencent/qrom/widget/FloatView$3;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/FloatView;->initDefaultFloatView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/FloatView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/FloatView;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 452
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 453
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    return v4

    .line 455
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    # setter for: Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionX:F
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/FloatView;->access$002(Lcom/tencent/qrom/widget/FloatView;F)F

    .line 456
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # setter for: Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionY:F
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/FloatView;->access$102(Lcom/tencent/qrom/widget/FloatView;F)F

    goto :goto_0

    .line 459
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    # setter for: Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionX:F
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/FloatView;->access$202(Lcom/tencent/qrom/widget/FloatView;F)F

    .line 460
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # setter for: Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionY:F
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/FloatView;->access$302(Lcom/tencent/qrom/widget/FloatView;F)F

    .line 461
    const-string v1, "FloatView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastDownPositionX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionX:F
    invoke-static {v3}, Lcom/tencent/qrom/widget/FloatView;->access$000(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mLastUpPositionX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionX:F
    invoke-static {v3}, Lcom/tencent/qrom/widget/FloatView;->access$200(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mLastDownPositionY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionY:F
    invoke-static {v3}, Lcom/tencent/qrom/widget/FloatView;->access$100(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mLastUpPositionY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionY:F
    invoke-static {v3}, Lcom/tencent/qrom/widget/FloatView;->access$300(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionX:F
    invoke-static {v1}, Lcom/tencent/qrom/widget/FloatView;->access$000(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionX:F
    invoke-static {v2}, Lcom/tencent/qrom/widget/FloatView;->access$200(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionY:F
    invoke-static {v1}, Lcom/tencent/qrom/widget/FloatView;->access$100(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionY:F
    invoke-static {v2}, Lcom/tencent/qrom/widget/FloatView;->access$300(Lcom/tencent/qrom/widget/FloatView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$3;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # setter for: Lcom/tencent/qrom/widget/FloatView;->isClick:Z
    invoke-static {v1, v4}, Lcom/tencent/qrom/widget/FloatView;->access$402(Lcom/tencent/qrom/widget/FloatView;Z)Z

    goto/16 :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
