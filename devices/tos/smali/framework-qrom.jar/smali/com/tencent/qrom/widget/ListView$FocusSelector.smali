.class Lcom/tencent/qrom/widget/ListView$FocusSelector;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Lcom/tencent/qrom/widget/ListView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/ListView;)V
    .locals 0

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView$FocusSelector;->this$0:Lcom/tencent/qrom/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/ListView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/ListView$1;

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView$FocusSelector;-><init>(Lcom/tencent/qrom/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView$FocusSelector;->this$0:Lcom/tencent/qrom/widget/ListView;

    iget v1, p0, Lcom/tencent/qrom/widget/ListView$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/tencent/qrom/widget/ListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/ListView;->setSelectionFromTop(II)V

    .line 1257
    return-void
.end method

.method public setup(II)Lcom/tencent/qrom/widget/ListView$FocusSelector;
    .locals 0
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1250
    iput p1, p0, Lcom/tencent/qrom/widget/ListView$FocusSelector;->mPosition:I

    .line 1251
    iput p2, p0, Lcom/tencent/qrom/widget/ListView$FocusSelector;->mPositionTop:I

    .line 1252
    return-object p0
.end method
