.class Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "QromSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private doAfterTextChanged:Ljava/lang/reflect/Method;

.field private doBeforeTextChanged:Ljava/lang/reflect/Method;

.field private ensureImeVisible:Ljava/lang/reflect/Method;

.field private showSoftInputUnchecked:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "doBeforeTextChanged"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2015
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "doAfterTextChanged"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2017
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "ensureImeVisible"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 2020
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "showSoftInputUnchecked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/ResultReceiver;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    .line 2023
    return-void
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 2035
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2037
    :try_start_0
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2038
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 2026
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2028
    :try_start_0
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    :cond_0
    :goto_0
    return-void

    .line 2029
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "visible"    # Z

    .prologue
    .line 2044
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2046
    :try_start_0
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 2047
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method showSoftInputUnchecked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V
    .locals 4
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    .line 2053
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2055
    :try_start_0
    iget-object v0, p0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    :goto_0
    return-void

    .line 2057
    :catch_0
    move-exception v0

    .line 2062
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
