.class public final Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UIGuidelinesComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$1;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$1;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 3
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getFilterToggleBarOffset()F

    move-result v1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$1;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 6
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 7
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    .line 8
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->access$setAboveToggleBarComponentsGuideLinePosition(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;F)V

    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
