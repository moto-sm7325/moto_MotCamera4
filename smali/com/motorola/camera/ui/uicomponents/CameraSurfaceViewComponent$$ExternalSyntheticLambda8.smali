.class public final synthetic Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;->$r8$classId:I

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void

    .line 2
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setAlpha(F)V

    return-void

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
