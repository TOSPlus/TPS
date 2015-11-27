.class Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;
.super Ljava/lang/Object;
.source "QromAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

.field final synthetic val$dialog:Lcom/tencent/qrom/app/QromAlertController;

.field final synthetic val$listView:Lcom/tencent/qrom/app/QromAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Lcom/tencent/qrom/app/QromAlertController$RecycleListView;Lcom/tencent/qrom/app/QromAlertController;)V
    .locals 0

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iput-object p2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->val$listView:Lcom/tencent/qrom/app/QromAlertController$RecycleListView;

    iput-object p3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->val$dialog:Lcom/tencent/qrom/app/QromAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->val$listView:Lcom/tencent/qrom/app/QromAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->val$dialog:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$600(Lcom/tencent/qrom/app/QromAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;->val$listView:Lcom/tencent/qrom/app/QromAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1401
    return-void
.end method
