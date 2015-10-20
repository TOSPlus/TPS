.class Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;ZZ)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iput-boolean p6, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->val$hasTitle:Z

    iput-boolean p7, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->val$hasButton:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1319
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->this$0:Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1323
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1324
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->val$hasTitle:Z

    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;->val$hasButton:Z

    # invokes: Lcom/tencent/qrom/app/QromAlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/qrom/app/QromAlertController;->access$1000(Landroid/view/View;IIZZ)V

    .line 1325
    return-object v0
.end method
