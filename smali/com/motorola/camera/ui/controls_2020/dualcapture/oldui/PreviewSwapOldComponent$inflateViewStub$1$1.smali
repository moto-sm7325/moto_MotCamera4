.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent$inflateViewStub$1$1;
.super Ljava/lang/Object;
.source "PreviewSwapOldComponent.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent$inflateViewStub$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent$inflateViewStub$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent$inflateViewStub$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
