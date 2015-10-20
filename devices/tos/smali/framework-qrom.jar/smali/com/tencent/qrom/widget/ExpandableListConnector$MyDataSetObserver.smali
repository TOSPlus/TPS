.class public Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ExpandableListConnector;


# direct methods
.method protected constructor <init>(Lcom/tencent/qrom/widget/ExpandableListConnector;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 855
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ExpandableListConnector;

    # invokes: Lcom/tencent/qrom/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->access$000(Lcom/tencent/qrom/widget/ExpandableListConnector;ZZ)V

    .line 857
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 858
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 862
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ExpandableListConnector;

    # invokes: Lcom/tencent/qrom/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->access$000(Lcom/tencent/qrom/widget/ExpandableListConnector;ZZ)V

    .line 864
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->notifyDataSetInvalidated()V

    .line 865
    return-void
.end method
