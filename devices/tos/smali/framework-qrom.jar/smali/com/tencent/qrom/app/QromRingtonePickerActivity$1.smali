.class Lcom/tencent/qrom/app/QromRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "QromRingtonePickerActivity.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$1;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$1;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # invokes: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setActionBarStyle()V
    invoke-static {v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$000(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V

    .line 245
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$1;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # setter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p3}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$102(Lcom/tencent/qrom/app/QromRingtonePickerActivity;I)I

    .line 247
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$1;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    const/4 v1, 0x0

    # invokes: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p3, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$200(Lcom/tencent/qrom/app/QromRingtonePickerActivity;II)V

    .line 248
    return-void
.end method
