.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$2;
.super Ljava/lang/Object;
.source "PreviewSwapComponent.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->startFlipAnimation(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$2;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$2;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
