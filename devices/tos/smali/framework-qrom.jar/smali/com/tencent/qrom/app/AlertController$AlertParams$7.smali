.class Lcom/tencent/qrom/app/AlertController$AlertParams$7;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/AlertController$AlertParams;->createBottomButtons(Lcom/tencent/qrom/app/AlertController;)V
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

.field final synthetic this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

.field final synthetic val$hasTitle:Z

.field final synthetic val$listView:Lcom/tencent/qrom/widget/ListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/tencent/qrom/widget/ListView;Z)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p6, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->val$listView:Lcom/tencent/qrom/widget/ListView;

    iput-boolean p7, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->val$hasTitle:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1600
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1604
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1605
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItems:[Z

    if-eqz v3, :cond_0

    .line 1606
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItems:[Z

    aget-boolean v0, v3, p1

    .line 1607
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 1608
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->val$listView:Lcom/tencent/qrom/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 1612
    .end local v0    # "isItemChecked":Z
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonColorItems:[I

    if-eqz v3, :cond_1

    .line 1613
    const v3, 0x7a0900ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1614
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonColorItems:[I

    aget v4, v4, p1

    # invokes: Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/content/Context;Landroid/widget/TextView;I)V
    invoke-static {v3, v1, v4}, Lcom/tencent/qrom/app/AlertController;->access$1000(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 1617
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-boolean v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$7;->val$hasTitle:Z

    const/4 v5, 0x0

    # invokes: Lcom/tencent/qrom/app/AlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v2, p1, v3, v4, v5}, Lcom/tencent/qrom/app/AlertController;->access$1100(Landroid/view/View;IIZZ)V

    .line 1618
    return-object v2
.end method
