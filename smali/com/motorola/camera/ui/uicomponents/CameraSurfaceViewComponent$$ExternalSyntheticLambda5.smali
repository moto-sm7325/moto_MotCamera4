.class public final synthetic Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlurState:I

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->animateModeSwitch()V

    return-void

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBackgroundColorAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0603c0

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
