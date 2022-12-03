.class public final synthetic Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->showZoomBarBackground(Z)V

    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
