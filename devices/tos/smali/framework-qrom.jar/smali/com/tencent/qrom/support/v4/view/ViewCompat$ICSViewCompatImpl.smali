.class Lcom/tencent/qrom/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Lcom/tencent/qrom/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/tencent/qrom/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 98
    invoke-static {p1, p2}, Lcom/tencent/qrom/support/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcom/tencent/qrom/support/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 110
    invoke-static {p1, p2}, Lcom/tencent/qrom/support/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 111
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/tencent/qrom/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Lcom/tencent/qrom/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 114
    invoke-virtual {p2}, Lcom/tencent/qrom/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getImpl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/qrom/support/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcom/tencent/qrom/support/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 107
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Lcom/tencent/qrom/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Lcom/tencent/qrom/support/v4/view/AccessibilityDelegateCompat;

    .prologue
    .line 118
    invoke-virtual {p2}, Lcom/tencent/qrom/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/qrom/support/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V

    .line 119
    return-void
.end method
