.class final Lcom/tencent/qrom/widget/SideBar$RemoveWindow;
.super Ljava/lang/Object;
.source "SideBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/SideBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoveWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/SideBar;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/SideBar;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/tencent/qrom/widget/SideBar$RemoveWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/SideBar;Lcom/tencent/qrom/widget/SideBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/SideBar;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/SideBar$1;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/SideBar$RemoveWindow;-><init>(Lcom/tencent/qrom/widget/SideBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar$RemoveWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # invokes: Lcom/tencent/qrom/widget/SideBar;->hideLetterWithAnimation()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/SideBar;->access$200(Lcom/tencent/qrom/widget/SideBar;)V

    .line 307
    return-void
.end method
