.class Landroid/widget/QromSearchView$10;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1555
    iput-object p1, p0, Landroid/widget/QromSearchView$10;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/widget/QromSearchView$10;->this$0:Landroid/widget/QromSearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Landroid/widget/QromSearchView;->onItemClicked(IILjava/lang/String;)Z
    invoke-static {v0, p3, v1, v2}, Landroid/widget/QromSearchView;->access$1700(Landroid/widget/QromSearchView;IILjava/lang/String;)Z

    .line 1563
    return-void
.end method
