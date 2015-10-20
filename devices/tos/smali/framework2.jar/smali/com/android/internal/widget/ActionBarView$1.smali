.class Lcom/android/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$1;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$1;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$1;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 147
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 150
    return-void
.end method
