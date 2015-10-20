.class Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;
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


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Lcom/tencent/qrom/app/QromAlertController;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iput-object p2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;->val$dialog:Lcom/tencent/qrom/app/QromAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;->val$dialog:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$600(Lcom/tencent/qrom/app/QromAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1358
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-boolean v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;->val$dialog:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/tencent/qrom/app/QromAlertController;->access$600(Lcom/tencent/qrom/app/QromAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1361
    :cond_0
    return-void
.end method
