.class Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;
.super Ljava/lang/Object;
.source "SegmentBar.java"

# interfaces
.implements Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/SegmentBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/SegmentBar;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/SegmentBar;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/SegmentBar;Lcom/tencent/qrom/widget/SegmentBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/SegmentBar;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/SegmentBar$1;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;-><init>(Lcom/tencent/qrom/widget/SegmentBar;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/tencent/qrom/widget/SegmentButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Lcom/tencent/qrom/widget/SegmentButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    # getter for: Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z
    invoke-static {v1}, Lcom/tencent/qrom/widget/SegmentBar;->access$300(Lcom/tencent/qrom/widget/SegmentBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    const/4 v2, 0x1

    # setter for: Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/SegmentBar;->access$302(Lcom/tencent/qrom/widget/SegmentBar;Z)Z

    .line 357
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    # getter for: Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/SegmentBar;->access$400(Lcom/tencent/qrom/widget/SegmentBar;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 358
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    iget-object v2, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    # getter for: Lcom/tencent/qrom/widget/SegmentBar;->mCheckedId:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/SegmentBar;->access$400(Lcom/tencent/qrom/widget/SegmentBar;)I

    move-result v2

    # invokes: Lcom/tencent/qrom/widget/SegmentBar;->setCheckedStateForView(IZ)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/widget/SegmentBar;->access$500(Lcom/tencent/qrom/widget/SegmentBar;IZ)V

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    # setter for: Lcom/tencent/qrom/widget/SegmentBar;->mProtectFromCheckedChange:Z
    invoke-static {v1, v3}, Lcom/tencent/qrom/widget/SegmentBar;->access$302(Lcom/tencent/qrom/widget/SegmentBar;Z)Z

    .line 362
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/SegmentButton;->getId()I

    move-result v0

    .line 363
    .local v0, "id":I
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentBar$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/SegmentBar;

    # invokes: Lcom/tencent/qrom/widget/SegmentBar;->setCheckedId(I)V
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/SegmentBar;->access$600(Lcom/tencent/qrom/widget/SegmentBar;I)V

    goto :goto_0
.end method
