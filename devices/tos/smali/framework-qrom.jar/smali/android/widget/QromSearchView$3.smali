.class Landroid/widget/QromSearchView$3;
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
    .line 191
    iput-object p1, p0, Landroid/widget/QromSearchView$3;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/widget/QromSearchView$3;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$100(Landroid/widget/QromSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QromSearchView$3;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$100(Landroid/widget/QromSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/widget/QromSearchView$3;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$100(Landroid/widget/QromSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 196
    :cond_0
    return-void
.end method
