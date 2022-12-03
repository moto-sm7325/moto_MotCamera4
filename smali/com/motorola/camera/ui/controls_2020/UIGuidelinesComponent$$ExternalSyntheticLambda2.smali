.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$1:Z

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 3
    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, v2

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->zoomToggleBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v1, v1

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/utility/AppExtensionsKt;->animatedSetGuidelineBegin(Landroidx/constraintlayout/widget/Guideline;IZ)V

    :goto_0
    return-void

    .line 5
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCaptureSplitVerticalGuideline()F

    move-result v1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 11
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3cf5c28f    # 0.03f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 13
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070110

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    :goto_2
    if-eqz v0, :cond_2

    .line 15
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getDualCapturePIPVerticalGuideline()F

    move-result v0

    :goto_3
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setDualCaptureSwapButtonGuideLinePosition(FFZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
