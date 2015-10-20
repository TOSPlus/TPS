.class Landroid/widget/QromSearchView$9;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 1312
    iput-object p1, p0, Landroid/widget/QromSearchView$9;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1318
    iget-object v0, p0, Landroid/widget/QromSearchView$9;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$1600(Landroid/widget/QromSearchView;)V

    .line 1319
    const/4 v0, 0x1

    return v0
.end method
