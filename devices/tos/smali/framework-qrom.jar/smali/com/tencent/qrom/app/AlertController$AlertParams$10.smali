.class Lcom/tencent/qrom/app/AlertController$AlertParams$10;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlertController.java"


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

.field final synthetic val$hasTitle:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V
    .locals 6
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Landroid/database/Cursor;
    .param p5, "x3"    # [Ljava/lang/String;
    .param p6, "x4"    # [I

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$10;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-boolean p7, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$10;->val$hasTitle:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1695
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1697
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$10;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonColorItems:[I

    if-eqz v2, :cond_0

    .line 1698
    const v2, 0x7a0900ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1699
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$10;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonColorItems:[I

    aget v3, v3, p1

    # invokes: Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/content/Context;Landroid/widget/TextView;I)V
    invoke-static {v2, v0, v3}, Lcom/tencent/qrom/app/AlertController;->access$1000(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 1702
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$10;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonLabelColumn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-boolean v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$10;->val$hasTitle:Z

    const/4 v4, 0x0

    # invokes: Lcom/tencent/qrom/app/AlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/tencent/qrom/app/AlertController;->access$1100(Landroid/view/View;IIZZ)V

    .line 1704
    return-object v1
.end method
