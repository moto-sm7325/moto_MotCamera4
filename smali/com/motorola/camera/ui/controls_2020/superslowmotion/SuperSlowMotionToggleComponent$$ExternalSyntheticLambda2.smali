.class public final synthetic Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->toggleButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->keepHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->isModeSwitch:Z

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->superSlowMotionSetting:Lcom/motorola/camera/settings/Setting;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string/jumbo v1, "superSlowMotionSetting.value"

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->setupImageDrawable(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_2
    return-void

    .line 11
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
