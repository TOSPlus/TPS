.class Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "QromAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

.field final synthetic val$hasButton:Z

.field final synthetic val$hasTitle:Z

.field final synthetic val$listView:Lcom/tencent/qrom/app/QromAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/tencent/qrom/app/QromAlertController$RecycleListView;ZZ)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iput-object p6, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->val$listView:Lcom/tencent/qrom/app/QromAlertController$RecycleListView;

    iput-boolean p7, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->val$hasTitle:Z

    iput-boolean p8, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->val$hasButton:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1295
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1296
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v2, v2, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 1297
    iget-object v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v2, v2, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 1298
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->val$listView:Lcom/tencent/qrom/app/QromAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1302
    .end local v0    # "isItemChecked":Z
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->val$hasTitle:Z

    iget-boolean v4, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;->val$hasButton:Z

    # invokes: Lcom/tencent/qrom/app/QromAlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/tencent/qrom/app/QromAlertController;->access$1000(Landroid/view/View;IIZZ)V

    .line 1303
    return-object v1
.end method
