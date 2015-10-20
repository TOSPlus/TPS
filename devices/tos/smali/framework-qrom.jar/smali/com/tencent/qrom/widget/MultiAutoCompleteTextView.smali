.class public Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;
.super Lcom/tencent/qrom/widget/AutoCompleteTextView;
.source "MultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$CommaTokenizer;,
        Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;
    }
.end annotation


# instance fields
.field private mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 119
    .local v2, "text":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 120
    .local v0, "end":I
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v3

    .line 124
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v2, v0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 126
    .local v1, "start":I
    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getThreshold()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 127
    const/4 v3, 0x1

    goto :goto_0
.end method

.method finishInit()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 204
    const-class v0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 210
    const-class v0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 95
    .local v0, "end":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, p1, v0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 97
    .local v2, "start":I
    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    .line 106
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    .line 101
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 102
    .local v1, "f":Landroid/widget/Filter;
    if-eqz v1, :cond_0

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keyCode"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 172
    return-void
.end method

.method public performValidation()V
    .locals 8

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getValidator()Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    move-result-object v5

    .line 141
    .local v5, "v":Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v6, :cond_1

    .line 161
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 146
    .local v0, "e":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 147
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 148
    iget-object v6, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v2}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 149
    .local v3, "start":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v3}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 151
    .local v1, "end":I
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 152
    .local v4, "sub":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const-string v6, ""

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 159
    :cond_2
    :goto_1
    move v2, v3

    .line 160
    goto :goto_0

    .line 154
    :cond_3
    invoke-interface {v5, v4}, Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 155
    iget-object v6, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v4}, Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->clearComposingText()V

    .line 191
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 192
    .local v1, "end":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 194
    .local v3, "start":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 195
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "original":Ljava/lang/String;
    invoke-static {v0, v3, v1, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, p1}, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 199
    return-void
.end method

.method public setTokenizer(Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .param p1, "t"    # Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;->mTokenizer:Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 83
    return-void
.end method
