.class Lcom/tencent/qrom/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/Spinner$DropdownPopup;-><init>(Lcom/tencent/qrom/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/Spinner$DropdownPopup;

.field final synthetic val$this$0:Lcom/tencent/qrom/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/Spinner$DropdownPopup;Lcom/tencent/qrom/widget/Spinner;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup$1;->this$1:Lcom/tencent/qrom/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup$1;->val$this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 781
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup$1;->this$1:Lcom/tencent/qrom/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v0, p3}, Lcom/tencent/qrom/widget/Spinner;->setSelection(I)V

    .line 782
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup$1;->this$1:Lcom/tencent/qrom/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->dismiss()V

    .line 783
    return-void
.end method
