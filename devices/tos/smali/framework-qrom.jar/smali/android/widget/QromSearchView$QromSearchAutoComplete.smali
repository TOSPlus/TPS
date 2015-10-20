.class public Landroid/widget/QromSearchView$QromSearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "QromSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QromSearchAutoComplete"
.end annotation


# instance fields
.field isShow:Z

.field private mSearchView:Landroid/widget/QromSearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1875
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1968
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isShow:Z

    .line 1876
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mThreshold:I

    .line 1877
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1880
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1968
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isShow:Z

    .line 1881
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mThreshold:I

    .line 1882
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1885
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1968
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isShow:Z

    .line 1886
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mThreshold:I

    .line 1887
    return-void
.end method

.method static synthetic access$1400(Landroid/widget/QromSearchView$QromSearchAutoComplete;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView$QromSearchAutoComplete;

    .prologue
    .line 1869
    invoke-direct {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1903
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1965
    iget v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1955
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1956
    iget-object v0, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    invoke-virtual {v0}, Landroid/widget/QromSearchView;->onTextFocusChanged()V

    .line 1957
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1971
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1973
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1974
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isShow:Z

    .line 1975
    const-string v3, "QromSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyPreIme isShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isShow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    iget-boolean v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isShow:Z

    if-eqz v3, :cond_5

    .line 1980
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 1981
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1982
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 1983
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1986
    :cond_1
    iget-object v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    iput-boolean v2, v3, Landroid/widget/QromSearchView;->isReturnEvent:Z

    .line 1987
    iget-object v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->isChange:Z
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$2000(Landroid/widget/QromSearchView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1988
    iget-object v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->onCancelClicked()V
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$1100(Landroid/widget/QromSearchView;)V

    .line 2003
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    :goto_0
    return v2

    .line 1991
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1992
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1993
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_4

    .line 1994
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1996
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1997
    iget-object v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    invoke-virtual {v3}, Landroid/widget/QromSearchView;->clearFocus()V

    .line 1998
    iget-object v3, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->setImeVisibility(Z)V
    invoke-static {v3, v6}, Landroid/widget/QromSearchView;->access$1000(Landroid/widget/QromSearchView;Z)V

    goto :goto_0

    .line 2003
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1940
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1941
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    invoke-virtual {v1}, Landroid/widget/QromSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1942
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1944
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1947
    invoke-virtual {p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/QromSearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1948
    sget-object v1, Landroid/widget/QromSearchView;->HIDDEN_METHOD_INVOKER:Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1951
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1922
    return-void
.end method

.method public qromSetCursorDrawableRes(I)V
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 1926
    :try_start_0
    const-string v3, "android.widget.TextView"

    invoke-static {v3}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1927
    .local v0, "c":Ljava/lang/Class;
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mCursorDrawableRes"

    invoke-static {v3, v4}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1928
    .local v2, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 1929
    :catch_0
    move-exception v1

    .line 1930
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1912
    return-void
.end method

.method setSearchView(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/QromSearchView;

    .prologue
    .line 1890
    iput-object p1, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mSearchView:Landroid/widget/QromSearchView;

    .line 1891
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 1895
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1896
    iput p1, p0, Landroid/widget/QromSearchView$QromSearchAutoComplete;->mThreshold:I

    .line 1897
    return-void
.end method
