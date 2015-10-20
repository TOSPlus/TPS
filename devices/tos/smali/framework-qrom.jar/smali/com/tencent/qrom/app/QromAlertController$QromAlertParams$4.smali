.class Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;
.super Landroid/widget/SimpleCursorAdapter;
.source "QromAlertController.java"


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

.field final synthetic val$hasButton:Z

.field final synthetic val$hasTitle:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 6
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Landroid/database/Cursor;
    .param p5, "x3"    # [Ljava/lang/String;
    .param p6, "x4"    # [I

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iput-boolean p7, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;->val$hasTitle:Z

    iput-boolean p8, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;->val$hasButton:Z

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
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1335
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1336
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;->val$hasTitle:Z

    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;->val$hasButton:Z

    # invokes: Lcom/tencent/qrom/app/QromAlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/qrom/app/QromAlertController;->access$1000(Landroid/view/View;IIZZ)V

    .line 1337
    return-object v0
.end method
