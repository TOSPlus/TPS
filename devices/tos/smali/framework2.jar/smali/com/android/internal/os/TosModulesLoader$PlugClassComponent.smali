.class Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
.super Ljava/lang/Object;
.source "TosModulesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TosModulesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlugClassComponent"
.end annotation


# instance fields
.field classInstance:Ljava/lang/Object;

.field methods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;",
            ">;"
        }
    .end annotation
.end field

.field plugClassName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
