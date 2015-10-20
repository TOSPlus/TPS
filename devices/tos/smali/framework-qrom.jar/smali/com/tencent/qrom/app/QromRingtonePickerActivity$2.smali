.class Lcom/tencent/qrom/app/QromRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "QromRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/QromRingtonePickerActivity;->onDestroy()V
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
    .line 540
    iput-object p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$2;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$2;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$2;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 544
    :cond_0
    return-void
.end method
