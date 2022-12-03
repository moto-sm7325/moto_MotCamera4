.class public Landroidx/core/view/WindowInsetsControllerCompat$Impl30;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl30"
.end annotation


# instance fields
.field public final mInsetsController:Landroid/view/WindowInsetsController;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    return-void
.end method


# virtual methods
.method public hide(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method
