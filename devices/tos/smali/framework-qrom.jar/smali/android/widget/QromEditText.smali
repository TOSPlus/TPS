.class public Landroid/widget/QromEditText;
.super Landroid/widget/TextView;
.source "QromEditText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QromEditText"


# instance fields
.field private CLICK_AREA:I

.field private qromDeleteDrawableAble:Landroid/graphics/drawable/Drawable;

.field private qromDeleteDrawableDisable:Landroid/graphics/drawable/Drawable;

.field private screenDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QromEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QromEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/16 v2, 0x1e

    iput v2, p0, Landroid/widget/QromEditText;->CLICK_AREA:I

    .line 63
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/QromEditText;->screenDensity:F

    .line 74
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 75
    .local v1, "metric":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/widget/QromEditText;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 76
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/QromEditText;->screenDensity:F

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/QromEditText;->qromInitDeleteStatus(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public extendSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/widget/QromEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 178
    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/widget/QromEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 192
    const-class v0, Landroid/widget/QromEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 198
    const-class v0, Landroid/widget/QromEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 117
    iget-object v3, p0, Landroid/widget/QromEditText;->qromDeleteDrawableAble:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    .line 119
    .local v0, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    .line 120
    .local v1, "eventY":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/widget/QromEditText;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 122
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/widget/QromEditText;->CLICK_AREA:I

    iget v5, p0, Landroid/widget/QromEditText;->screenDensity:F

    float-to-int v5, v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 124
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-gt v3, v0, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_0

    .line 125
    const-string v3, ""

    invoke-virtual {p0, v3}, Landroid/widget/QromEditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/widget/QromEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    .end local v0    # "eventX":I
    .end local v1    # "eventY":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public qromInitDeleteStatus(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0200f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromEditText;->qromDeleteDrawableAble:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0200f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromEditText;->qromDeleteDrawableDisable:Landroid/graphics/drawable/Drawable;

    .line 86
    new-instance v0, Landroid/widget/QromEditText$1;

    invoke-direct {v0, p0}, Landroid/widget/QromEditText$1;-><init>(Landroid/widget/QromEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/QromEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    return-void
.end method

.method public qromSetDrawable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/widget/QromEditText;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Landroid/widget/QromEditText;->qromDeleteDrawableDisable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/QromEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/widget/QromEditText;->qromDeleteDrawableAble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/QromEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/widget/QromEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 171
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 182
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/widget/QromEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 164
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/widget/QromEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 157
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 149
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 150
    return-void
.end method
