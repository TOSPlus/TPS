.class Lcom/tencent/qrom/widget/AutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/AutoCompleteTextView$1;

    .prologue
    .line 1197
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    # invokes: Lcom/tencent/qrom/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->access$500(Lcom/tencent/qrom/widget/AutoCompleteTextView;Landroid/view/View;IJ)V

    .line 1200
    return-void
.end method
