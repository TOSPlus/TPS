.class Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;Lcom/tencent/qrom/widget/CursorTreeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/CursorTreeAdapter$1;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    # setter for: Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    .line 516
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 517
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    .line 522
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    .line 523
    return-void
.end method
