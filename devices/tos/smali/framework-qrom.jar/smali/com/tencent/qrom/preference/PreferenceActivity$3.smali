.class Lcom/tencent/qrom/preference/PreferenceActivity$3;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/tencent/qrom/preference/PreferenceActivity$3;->this$0:Lcom/tencent/qrom/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceActivity$3;->this$0:Lcom/tencent/qrom/preference/PreferenceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/preference/PreferenceActivity;->setResult(I)V

    .line 625
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceActivity$3;->this$0:Lcom/tencent/qrom/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceActivity;->finish()V

    .line 626
    return-void
.end method
