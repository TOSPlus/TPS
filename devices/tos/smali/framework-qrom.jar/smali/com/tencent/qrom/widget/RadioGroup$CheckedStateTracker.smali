.class Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/RadioGroup;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/RadioGroup;Lcom/tencent/qrom/widget/RadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/RadioGroup$1;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;-><init>(Lcom/tencent/qrom/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    # getter for: Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1}, Lcom/tencent/qrom/widget/RadioGroup;->access$300(Lcom/tencent/qrom/widget/RadioGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    const/4 v2, 0x1

    # setter for: Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/RadioGroup;->access$302(Lcom/tencent/qrom/widget/RadioGroup;Z)Z

    .line 316
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    # getter for: Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/RadioGroup;->access$400(Lcom/tencent/qrom/widget/RadioGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 317
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    iget-object v2, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    # getter for: Lcom/tencent/qrom/widget/RadioGroup;->mCheckedId:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/RadioGroup;->access$400(Lcom/tencent/qrom/widget/RadioGroup;)I

    move-result v2

    # invokes: Lcom/tencent/qrom/widget/RadioGroup;->setCheckedStateForView(IZ)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/widget/RadioGroup;->access$500(Lcom/tencent/qrom/widget/RadioGroup;IZ)V

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    # setter for: Lcom/tencent/qrom/widget/RadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v3}, Lcom/tencent/qrom/widget/RadioGroup;->access$302(Lcom/tencent/qrom/widget/RadioGroup;Z)Z

    .line 321
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 322
    .local v0, "id":I
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    # invokes: Lcom/tencent/qrom/widget/RadioGroup;->setCheckedId(I)V
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/RadioGroup;->access$600(Lcom/tencent/qrom/widget/RadioGroup;I)V

    goto :goto_0
.end method
