.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;Z[Landroid/util/Range;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, [Landroid/util/Range;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    .line 2
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    .line 3
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    xor-int/lit8 p0, v2, 0x1

    .line 4
    iput-boolean p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    .line 5
    monitor-enter v0

    const/4 p0, 0x0

    .line 6
    :try_start_0
    iput-boolean p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$1:Z

    const-string v3, "$activity"

    .line 10
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "this$0"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v3

    .line 12
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 13
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 14
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 15
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 16
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    check-cast v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 18
    sget-object p0, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 21
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v4, 0x7f1204b7

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v2, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 25
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 26
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 28
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    .line 31
    new-instance p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {v2, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 33
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 34
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 36
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
