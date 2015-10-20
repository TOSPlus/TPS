.class Lcom/tencent/qrom/app/QromRingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "QromRingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setActionBarStyle()V
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
    .line 579
    iput-object p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$3;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$3;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->onButtonClick(I)V

    .line 583
    return-void
.end method
