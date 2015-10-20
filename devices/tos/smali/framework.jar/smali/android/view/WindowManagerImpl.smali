.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mParentWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/view/Display;Landroid/view/Window;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    .line 58
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    .line 59
    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    .line 60
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: permission part::tamrylei::2015-08-24"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 76
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 77
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 79
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 80
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 81
    const-string v1, "android.view.WindowManagerImpl#addView"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/view/WindowManagerImpl;->tos_org_addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 63
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 67
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-direct {v0, p1, v1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 119
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 124
    return-void
.end method

.method public tos_org_addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: permission part::tamrylei::2015-08-24"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V

    .line 91
    return-void
.end method

.method public tos_org_updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: permission part::tamrylei::2015-08-24"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: permission part::tamrylei::2015-08-24"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 99
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 100
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 101
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 102
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 103
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 104
    const-string v1, "android.view.WindowManagerImpl#updateViewLayout"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/view/WindowManagerImpl;->tos_org_updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method
