.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v1, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller$1;

    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 4
    invoke-virtual {v0, p0}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string/jumbo v1, "this$0"

    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->registerListeners(ZLcom/motorola/camera/fsm/ChangeEvent;)V

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->remove()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
