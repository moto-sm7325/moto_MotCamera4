.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    .line 1
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    .line 2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    .line 5
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v1, v4

    :cond_0
    monitor-exit v0

    if-nez v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 12
    invoke-virtual {p0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    .line 13
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
