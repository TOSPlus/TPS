.class Lcom/tencent/qrom/app/AlertController$AlertParams$12;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/AlertController$AlertParams;->createBottomButtons(Lcom/tencent/qrom/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/tencent/qrom/app/AlertController;

.field final synthetic val$listView:Lcom/tencent/qrom/widget/ListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Lcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/app/AlertController;)V
    .locals 0

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->val$listView:Lcom/tencent/qrom/widget/ListView;

    iput-object p3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->val$dialog:Lcom/tencent/qrom/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItems:[Z

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->val$listView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, p3}, Lcom/tencent/qrom/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->val$dialog:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/tencent/qrom/app/AlertController;->access$800(Lcom/tencent/qrom/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$12;->val$listView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v2, p3}, Lcom/tencent/qrom/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1734
    return-void
.end method
