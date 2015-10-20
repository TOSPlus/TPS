.class Lcom/tencent/qrom/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/preference/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tencent/qrom/preference/PreferenceFragment$2;->this$0:Lcom/tencent/qrom/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment$2;->this$0:Lcom/tencent/qrom/preference/PreferenceFragment;

    # getter for: Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v0}, Lcom/tencent/qrom/preference/PreferenceFragment;->access$000(Lcom/tencent/qrom/preference/PreferenceFragment;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceFragment$2;->this$0:Lcom/tencent/qrom/preference/PreferenceFragment;

    # getter for: Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/preference/PreferenceFragment;->access$000(Lcom/tencent/qrom/preference/PreferenceFragment;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 128
    return-void
.end method
