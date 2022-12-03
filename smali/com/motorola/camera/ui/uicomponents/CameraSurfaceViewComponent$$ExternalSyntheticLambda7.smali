.class public final synthetic Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v3, 0x7f0603c0

    .line 7
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    const/high16 v0, -0x1000000

    const/4 v2, 0x1

    aput v0, v4, v2

    const-string v0, "backgroundColor"

    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBackgroundColorAnimator:Landroid/animation/Animator;

    const-wide/16 v3, 0x96

    .line 9
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBackgroundColorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
