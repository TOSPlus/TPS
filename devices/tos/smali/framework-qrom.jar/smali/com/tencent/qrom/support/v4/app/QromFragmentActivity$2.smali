.class Lcom/tencent/qrom/support/v4/app/QromFragmentActivity$2;
.super Ljava/lang/Object;
.source "QromFragmentActivity.java"

# interfaces
.implements Lcom/tencent/qrom/support/v4/app/FragmentContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/qrom/support/v4/app/QromFragmentActivity$2;->this$0:Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/QromFragmentActivity$2;->this$0:Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
