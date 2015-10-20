.class Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/AutoCompleteTextView$1;

    .prologue
    .line 1249
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$302(Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;
    .param p1, "x1"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    # invokes: Lcom/tencent/qrom/widget/AutoCompleteTextView;->onClickImpl()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->access$600(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V

    .line 1257
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1258
    :cond_0
    return-void
.end method
