.class Lcom/tencent/qrom/widget/Switch$2;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/Switch;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/Switch;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/Switch;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x41000000    # 8.0f

    .line 1222
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # += operator for: Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/Switch;->access$116(Lcom/tencent/qrom/widget/Switch;F)F

    .line 1224
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # getter for: Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F
    invoke-static {v0}, Lcom/tencent/qrom/widget/Switch;->access$100(Lcom/tencent/qrom/widget/Switch;)F

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # invokes: Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I
    invoke-static {v1}, Lcom/tencent/qrom/widget/Switch;->access$200(Lcom/tencent/qrom/widget/Switch;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v1

    # invokes: Lcom/tencent/qrom/widget/Switch;->setThumbPosition(Z)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/Switch;->access$300(Lcom/tencent/qrom/widget/Switch;Z)V

    .line 1226
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/Switch;->invalidate()V

    .line 1227
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # setter for: Lcom/tencent/qrom/widget/Switch;->mIsAnimation:Z
    invoke-static {v0, v2}, Lcom/tencent/qrom/widget/Switch;->access$402(Lcom/tencent/qrom/widget/Switch;Z)Z

    .line 1242
    :goto_0
    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # -= operator for: Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/Switch;->access$124(Lcom/tencent/qrom/widget/Switch;F)F

    .line 1232
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # getter for: Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F
    invoke-static {v0}, Lcom/tencent/qrom/widget/Switch;->access$100(Lcom/tencent/qrom/widget/Switch;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v1

    # invokes: Lcom/tencent/qrom/widget/Switch;->setThumbPosition(Z)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/Switch;->access$300(Lcom/tencent/qrom/widget/Switch;Z)V

    .line 1234
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/Switch;->invalidate()V

    .line 1235
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # setter for: Lcom/tencent/qrom/widget/Switch;->mIsAnimation:Z
    invoke-static {v0, v2}, Lcom/tencent/qrom/widget/Switch;->access$402(Lcom/tencent/qrom/widget/Switch;Z)Z

    goto :goto_0

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    const/4 v1, 0x1

    # setter for: Lcom/tencent/qrom/widget/Switch;->mIsAnimation:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/Switch;->access$402(Lcom/tencent/qrom/widget/Switch;Z)Z

    .line 1240
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/Switch;->invalidate()V

    .line 1241
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$2;->this$0:Lcom/tencent/qrom/widget/Switch;

    # invokes: Lcom/tencent/qrom/widget/Switch;->postAnimation()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/Switch;->access$500(Lcom/tencent/qrom/widget/Switch;)V

    goto :goto_0
.end method
