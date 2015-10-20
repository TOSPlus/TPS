.class Landroid/app/QromActivity$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "QromActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field final synthetic this$0:Landroid/app/QromActivity;


# direct methods
.method public constructor <init>(Landroid/app/QromActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    iput-object p1, p0, Landroid/app/QromActivity$PopupViewContainer;->this$0:Landroid/app/QromActivity;

    .line 620
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 621
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 625
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_5

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/app/QromActivity$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 627
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 646
    :cond_1
    :goto_0
    return v1

    .line 630
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 632
    invoke-virtual {p0}, Landroid/app/QromActivity$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 633
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 637
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 638
    invoke-virtual {p0}, Landroid/app/QromActivity$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 639
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 640
    iget-object v2, p0, Landroid/app/QromActivity$PopupViewContainer;->this$0:Landroid/app/QromActivity;

    # invokes: Landroid/app/QromActivity;->closePopupMenu()V
    invoke-static {v2}, Landroid/app/QromActivity;->access$000(Landroid/app/QromActivity;)V

    goto :goto_0

    .line 644
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 646
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 652
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 658
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 660
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/QromActivity$PopupViewContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/QromActivity$PopupViewContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 662
    :cond_0
    iget-object v3, p0, Landroid/app/QromActivity$PopupViewContainer;->this$0:Landroid/app/QromActivity;

    # invokes: Landroid/app/QromActivity;->closePopupMenu()V
    invoke-static {v3}, Landroid/app/QromActivity;->access$000(Landroid/app/QromActivity;)V

    .line 668
    :goto_0
    return v2

    .line 664
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 665
    iget-object v3, p0, Landroid/app/QromActivity$PopupViewContainer;->this$0:Landroid/app/QromActivity;

    # invokes: Landroid/app/QromActivity;->closePopupMenu()V
    invoke-static {v3}, Landroid/app/QromActivity;->access$000(Landroid/app/QromActivity;)V

    goto :goto_0

    .line 668
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method
