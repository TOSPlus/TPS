.class Lcom/tencent/qrom/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/AlertController;->setBottomButtons([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/AlertController;

.field final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$2;->this$0:Lcom/tencent/qrom/app/AlertController;

    iput-object p2, p0, Lcom/tencent/qrom/app/AlertController$2;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$2;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$2;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/tencent/qrom/app/AlertController;->access$800(Lcom/tencent/qrom/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 487
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$2;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/tencent/qrom/app/AlertController;->access$800(Lcom/tencent/qrom/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    return-void
.end method
