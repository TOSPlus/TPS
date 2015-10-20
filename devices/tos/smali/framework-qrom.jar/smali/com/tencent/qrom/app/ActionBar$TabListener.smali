.class public interface abstract Lcom/tencent/qrom/app/ActionBar$TabListener;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabListener"
.end annotation


# virtual methods
.method public abstract onTabReselected(Lcom/tencent/qrom/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.end method

.method public abstract onTabSelected(Lcom/tencent/qrom/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.end method

.method public abstract onTabUnselected(Lcom/tencent/qrom/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.end method
