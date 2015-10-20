.class Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/tencent/qrom/widget/RadioGroup;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/RadioGroup;Lcom/tencent/qrom/widget/RadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/RadioGroup;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/RadioGroup$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/tencent/qrom/widget/RadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Lcom/tencent/qrom/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 342
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 343
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 344
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v1, p2

    .line 346
    check-cast v1, Lcom/tencent/qrom/widget/RadioButton;

    iget-object v2, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    # getter for: Lcom/tencent/qrom/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v2}, Lcom/tencent/qrom/widget/RadioGroup;->access$700(Lcom/tencent/qrom/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 350
    .end local v0    # "id":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 353
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/tencent/qrom/widget/RadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/tencent/qrom/widget/RadioButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 360
    check-cast v0, Lcom/tencent/qrom/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/tencent/qrom/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 366
    :cond_1
    return-void
.end method
