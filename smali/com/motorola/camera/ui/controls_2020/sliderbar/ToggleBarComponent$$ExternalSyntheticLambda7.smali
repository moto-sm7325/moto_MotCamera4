.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 4
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
