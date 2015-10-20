.class Landroid/widget/QromSearchView$2;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromSearchView;


# direct methods
.method constructor <init>(Landroid/widget/QromSearchView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Landroid/widget/QromSearchView$2;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/QromSearchView$2;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->updateFocusedState()V
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$000(Landroid/widget/QromSearchView;)V

    .line 188
    return-void
.end method
