.class public final synthetic Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void

    .line 2
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v0, Landroid/util/Size;

    .line 6
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mZoomBarBackground:Landroid/view/View;

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    move-object v5, v3

    check-cast v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 12
    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v6

    const/high16 v7, 0x42880000    # 68.0f

    sub-float/2addr v6, v7

    .line 13
    iget v7, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v6, v7

    .line 14
    iget v7, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 15
    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mZoomBarBackground:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v4, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v4, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    .line 17
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    .line 18
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, 0x4

    .line 19
    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait$enumunboxing$()I

    move-result v5

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 20
    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    .line 21
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 22
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    .line 23
    :cond_1
    iget v1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 24
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 26
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    const v3, 0x106000d

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setImageResource(I)V

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_4
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->showZoomBarBackground(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
