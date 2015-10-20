.class Lcom/tencent/qrom/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/AlertController$AlertParams;->createListView(Lcom/tencent/qrom/app/AlertController;)V
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

.field final synthetic val$hasButton:Z

.field final synthetic val$hasTitle:Z

.field final synthetic val$listView:Lcom/tencent/qrom/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/tencent/qrom/app/AlertController$RecycleListView;Lcom/tencent/qrom/app/AlertController;ZZ)V
    .locals 2
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p5, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$listView:Lcom/tencent/qrom/app/AlertController$RecycleListView;

    iput-object p6, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$dialog:Lcom/tencent/qrom/app/AlertController;

    iput-boolean p7, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$hasTitle:Z

    iput-boolean p8, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$hasButton:Z

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1474
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1475
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 1476
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1493
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->count:I

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

    .line 1481
    const v2, 0x7a0900ee

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/CheckedTextView;

    .line 1483
    .local v0, "text":Lcom/tencent/qrom/widget/CheckedTextView;
    iget v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$listView:Lcom/tencent/qrom/app/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1485
    return-void

    .line 1484
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1497
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1498
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->count:I

    iget-boolean v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$hasTitle:Z

    iget-boolean v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$hasButton:Z

    # invokes: Lcom/tencent/qrom/app/AlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/qrom/app/AlertController;->access$1100(Landroid/view/View;IIZZ)V

    .line 1499
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->this$0:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams$2;->val$dialog:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/tencent/qrom/app/AlertController;->access$1300(Lcom/tencent/qrom/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
