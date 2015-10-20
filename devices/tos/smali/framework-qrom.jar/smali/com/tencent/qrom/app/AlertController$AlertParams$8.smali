.class Lcom/tencent/qrom/app/AlertController$AlertParams$8;
.super Landroid/widget/CursorAdapter;
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
.field final count:I

.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/tencent/qrom/app/AlertController;

.field final synthetic val$hasTitle:Z

.field final synthetic val$listView:Lcom/tencent/qrom/widget/ListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/app/AlertController;Z)V
    .locals 2
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p5, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->val$listView:Lcom/tencent/qrom/widget/ListView;

    iput-object p6, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->val$dialog:Lcom/tencent/qrom/app/AlertController;

    iput-boolean p7, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->val$hasTitle:Z

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1628
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1629
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->mLabelIndex:I

    .line 1630
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->mIsCheckedIndex:I

    .line 1648
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->count:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 1635
    const v2, 0x7a0900ee

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/CheckedTextView;

    .line 1637
    .local v0, "text":Lcom/tencent/qrom/widget/CheckedTextView;
    iget v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->val$listView:Lcom/tencent/qrom/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->mIsCheckedIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 1639
    return-void

    .line 1638
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1652
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1654
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonColorItems:[I

    if-eqz v2, :cond_0

    .line 1655
    const v2, 0x7a0900ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1656
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonColorItems:[I

    aget v3, v3, p1

    # invokes: Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/content/Context;Landroid/widget/TextView;I)V
    invoke-static {v2, v0, v3}, Lcom/tencent/qrom/app/AlertController;->access$1000(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 1659
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    iget v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->count:I

    iget-boolean v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->val$hasTitle:Z

    const/4 v4, 0x0

    # invokes: Lcom/tencent/qrom/app/AlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/tencent/qrom/app/AlertController;->access$1100(Landroid/view/View;IIZZ)V

    .line 1660
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$8;->val$dialog:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/tencent/qrom/app/AlertController;->access$2000(Lcom/tencent/qrom/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
